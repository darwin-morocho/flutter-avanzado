import 'either/either.dart';
import 'failures/http_request_failure.dart';

typedef HttpFuture<T> = Future<Either<HttpRequestFailure, T>>;
typedef Json = Map<String, dynamic>;
