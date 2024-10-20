import 'package:aquadic_task/core/errors/custm_errors.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/addBundels/add_bundles_response.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/getallpackagesrepsonse/getallpackagesrepsonse.dart';
import 'package:dartz/dartz.dart';

abstract class GetAllPackges {
  Future<Either<Fallur, Getallpackagesrepsonse>> allPackges();
  Future<Either<Fallur, AddBundlesResponse>> addBundle(int id);
}
