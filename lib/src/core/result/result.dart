import 'package:fpdart/fpdart.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/error/failures.dart';

typedef Result<T> = Either<Failure, T>;
