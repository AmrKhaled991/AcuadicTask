// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:aquadic_task/core/apiServieses/ApiServess.dart';
import 'package:aquadic_task/features/UserPackges/data/models/user_bundles_response/user_bundles_response.dart';
import 'package:aquadic_task/features/UserPackges/data/repo/RemoteUserBundlesRepo/RemoteUserBundlesRepo.dart';

class RemoteUserBundlesRepoImp extends RemoteUserBundlesRepo {
  ApiServess apiServess;
  RemoteUserBundlesRepoImp({
    required this.apiServess,
  });
  @override
  Future<UserBundlesResponse> getUserBundles() async {
    final res = await apiServess.getUserBundles();
    return res;
  }
}
