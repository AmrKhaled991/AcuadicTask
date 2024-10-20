import 'package:aquadic_task/core/errors/custm_errors.dart';
import 'package:aquadic_task/features/UserPackges/data/models/user_bundles_response/user_bundles_response.dart';
import 'package:dartz/dartz.dart';

abstract class UserBundlesRepo {
  Future<Either<Fallur, UserBundlesResponse>> getUserBundles();
}
