//This file contains exceptions. Add Exceptions in here.
//Some basic exceptions example were provided.

class UnexpectedException implements Exception {
  const UnexpectedException({this.message});

  final String? message;

  @override
  String toString() {
    return message ?? super.toString();
  }
}

class ParsingException implements Exception {
  const ParsingException({this.message});

  final String? message;

  @override
  String toString() {
    return message ?? super.toString();
  }
}

class ServerException implements Exception {
  const ServerException({this.message});

  final String? message;

  @override
  String toString() {
    return message ?? super.toString();
  }
}

class AuthenticationException implements Exception {
  const AuthenticationException({this.message});

  final String? message;

  @override
  String toString() {
    return message ?? super.toString();
  }
}

class CacheException implements Exception {
  const CacheException({this.message});

  final String? message;

  @override
  String toString() {
    return message ?? super.toString();
  }
}

class MaxRetryAtteptsReachedException implements Exception {
  const MaxRetryAtteptsReachedException({this.message});

  final String? message;

  @override
  String toString() {
    return message ?? super.toString();
  }
}

class ClientException implements Exception {
  const ClientException({this.message});

  final String? message;

  @override
  String toString() {
    return message ?? super.toString();
  }
}
