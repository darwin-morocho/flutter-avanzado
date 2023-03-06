import 'dart:io';

import 'package:http/http.dart';

import '../domain/either/either.dart';
import '../domain/failures/http_request_failure.dart';
import '../domain/typedefs.dart';
import 'http/http.dart';

HttpFuture<T> performHttpRequest<T>(Future<HttpResult<T>> future) async {
  final result = await future;
  if (result is HttpFailure<T>) {
    HttpRequestFailure? failure;
    if (failDueToNetwork(result)) {
      failure = HttpRequestFailure.network();
    } else if (failDueToParser(result)) {
      failure = HttpRequestFailure.local();
    } else {
      switch (result.statusCode) {
        case 404:
          failure = HttpRequestFailure.notFound();
          break;
        case 401:
        case 403:
          failure = HttpRequestFailure.unauthorized();
          break;
        case 400:
          failure = HttpRequestFailure.badRequest();
          break;
        default:
          failure = HttpRequestFailure.server();
      }
    }

    return Either.left(failure);
  }
  return Either.right(
    (result as HttpSuccess).data,
  );
}

bool failDueToNetwork<T>(HttpFailure<T> failure) {
  final data = failure.data;
  return data is SocketException || data is ClientException;
}

bool failDueToParser<T>(HttpFailure<T> failure) {
  final data = failure.data;
  return data is! String && data is! Map && data is! List;
}
