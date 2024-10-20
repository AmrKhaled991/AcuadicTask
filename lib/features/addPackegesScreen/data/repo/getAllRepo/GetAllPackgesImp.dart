// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aquadic_task/features/addPackegesScreen/data/models/addBundels/add_bundles_response.dart';
import 'package:dartz/dartz.dart';
import 'package:aquadic_task/core/errors/custm_errors.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/repo/getAllRepo/getAllPackges.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/repo/remoteRepo/RemoteGetAllPackges.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/getallpackagesrepsonse/getallpackagesrepsonse.dart';
import 'package:dio/dio.dart';

class GetAllPackgesImp extends GetAllPackges {
  RemoteGetAllPackges remoteGetAllPackges;
  GetAllPackgesImp({
    required this.remoteGetAllPackges,
  });

  @override
  Future<Either<Fallur, Getallpackagesrepsonse>> allPackges() async {
    try {
      var res = await remoteGetAllPackges.allPackges();
      return right(res);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServierError.fromDioError(e));
      }
      return left(ServierError('sorry for this erorre,please try again later'));
    }
  }

  @override
  Future<Either<Fallur, AddBundlesResponse>> addBundle(int id)  async {
    try {
      var res = await remoteGetAllPackges.addBunle(id);
      return right(res);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServierError.fromDioError(e));
      }
      return left(ServierError('sorry for this erorre,please try again later'));
    }
  }
}
