import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class Http {
  final String _baseUrl;
  final Client _client;

  Http(this._baseUrl, this._client);

  Future<HttpResult<T>> send<T>(
    String path, {
    required T Function(int, dynamic) parser,
    HttpMethod method = HttpMethod.get,
    Map<String, String> headers = const {},
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
  }) async {
    late Request request;
    Response? response;
    try {
      late Uri url;
      if (path.startsWith('http')) {
        url = Uri.parse(path);
      } else {
        if (!path.startsWith('/')) {
          path = '/$path';
        }
        url = Uri.parse('$_baseUrl$path');
      }
      url = url.replace(
        queryParameters: queryParameters,
      );
      request = Request(method.name, url);
      request.headers.addAll(
        {
          'Content-Type': 'application/json; charset=utf-8',
          ...headers,
        },
      );
      if (method != HttpMethod.get) {
        request.body = jsonEncode(body);
      }
      final stream = await _client.send(request);
      response = await Response.fromStream(stream);
      final statusCode = response.statusCode;
      final responseBody = _bodyParser(response.body);

      if (statusCode >= 200 && statusCode <= 300) {
        return HttpSuccess(
          statusCode,
          parser(
            statusCode,
            responseBody,
          ),
        );
      }
      return HttpFailure(
        statusCode,
        responseBody,
      );
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
        print(s);
      }
      return HttpFailure(
        response?.statusCode,
        e,
      );
    }
  }
}

enum HttpMethod {
  get,
  post,
  patch,
  put,
  delete,
}

abstract class HttpResult<T> {
  final int? statusCode;

  HttpResult(this.statusCode);
}

class HttpSuccess<T> extends HttpResult<T> {
  HttpSuccess(super.statusCode, this.data);
  final T data;
}

class HttpFailure<T> extends HttpResult<T> {
  HttpFailure(super.statusCode, this.data);
  final Object? data;
}

dynamic _bodyParser(String responseBody) {
  try {
    return jsonDecode(responseBody);
  } catch (_) {
    return responseBody;
  }
}
