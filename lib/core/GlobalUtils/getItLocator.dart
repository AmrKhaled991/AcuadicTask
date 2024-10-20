import 'package:aquadic_task/core/apiServieses/ApiServess.dart';
import 'package:aquadic_task/features/UserPackges/data/repo/RemoteUserBundlesRepo/RemoteUserBundlesRepoImp.dart';
import 'package:aquadic_task/features/UserPackges/data/repo/UserBundlesRepo/UserBundlesRepo.dart';
import 'package:aquadic_task/features/UserPackges/data/repo/UserBundlesRepo/UserBundlesRepoImp.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/repo/getAllRepo/GetAllPackgesImp.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/repo/getAllRepo/getAllPackges.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/repo/remoteRepo/RemoteGetAllPackgesImp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setup() {
  getit.registerSingleton<ApiServess>(ApiServess(Dio()));
  getit.registerSingleton<GetAllPackges>(GetAllPackgesImp(
      remoteGetAllPackges:
          RemoteGetAllPackgesImp(apiServess: getit.get<ApiServess>())));
  getit.registerSingleton<UserBundlesRepo>(UserBundlesRepoImp(
      remoteUserBundlesRepo:
          RemoteUserBundlesRepoImp(apiServess: getit.get<ApiServess>())));
}
