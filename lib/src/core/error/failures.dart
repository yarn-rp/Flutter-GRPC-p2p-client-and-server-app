import 'package:equatable/equatable.dart';

const String _kUnexpectedError = 'Lo sentimos. Sucedió algo inseperado.';

abstract class Failure with EquatableMixin {
  const Failure({this.properties});

  final List? properties;

  @override
  String toString() => _kUnexpectedError;
  @override
  List<Object?> get props => [properties];
}

class ServerFailure extends Failure {
  const ServerFailure({String? message})
      : message = message ?? 'No pudimos conectar con nuestro servidor';
  final String message;

  @override
  String toString() => message;
}

class ParsingFailure extends Failure {
  const ParsingFailure({String? message})
      : message = message ??
            'No pudimos obtener correctamente la respuesta de nuestro servidor.';
  final String message;

  @override
  String toString() => message;
}

class NoInternetConnectionFailure extends Failure {
  const NoInternetConnectionFailure({String? message})
      : message = message ??
            'Parece que no tienes conexión a internet, por favor revisa en los ajustes de tu teléfono';

  final String message;

  @override
  String toString() => message;
}

class AuthenticationFailure extends Failure {
  AuthenticationFailure({String? message})
      : message = message ?? 'Fallo en la autenticación.';

  final String message;

  @override
  String toString() => message;
}

class InvalidCredentialsFailure extends Failure {
  InvalidCredentialsFailure({String? message})
      : message = message ?? 'Credenciales inválidas';

  final String message;

  @override
  String toString() => message;
}

class EmailAlreadyTakenFailure extends Failure {
  EmailAlreadyTakenFailure({String? message})
      : message = message ?? 'Email ya existente';

  final String message;

  @override
  String toString() => message;
}

class EmailNotRegisteredFailure extends Failure {
  EmailNotRegisteredFailure({String? message})
      : message = message ?? 'Email no registrado';

  final String message;

  @override
  String toString() => message;
}

class CacheFailure extends Failure {
  const CacheFailure({String? message})
      : message = message ?? 'No pudimos guardar los datos correctamente';

  final String? message;

  @override
  String toString() => message ?? 'Cache Failure';
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure({String? message})
      : message = message ?? 'Sucedió algo inesperado';

  final String? message;

  @override
  String toString() => message ?? 'Unexpected Failure';
}

abstract class NoInternetConnectionErrorState {}
