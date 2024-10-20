import 'package:dartz/dartz.dart';
import 'package:aquadic_task/core/errors/custm_errors.dart';
import 'package:aquadic_task/features/UserPackges/data/models/user_bundles_response/user_bundles_response.dart';
import 'package:aquadic_task/features/UserPackges/data/repo/RemoteUserBundlesRepo/RemoteUserBundlesRepo.dart';
import 'package:aquadic_task/features/UserPackges/data/repo/UserBundlesRepo/UserBundlesRepo.dart';
import 'package:dio/dio.dart';

class UserBundlesRepoImp extends UserBundlesRepo {
  final RemoteUserBundlesRepo remoteUserBundlesRepo;
  UserBundlesRepoImp({
    required this.remoteUserBundlesRepo,
  });
  @override
  Future<Either<Fallur, UserBundlesResponse>> getUserBundles() async {
    try {
      final res = await remoteUserBundlesRepo.getUserBundles();
      return right(res);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServierError.fromDioError(e));
      }
      return left(ServierError('sorry for this erorre,please try again later'));
    }
  }
}
