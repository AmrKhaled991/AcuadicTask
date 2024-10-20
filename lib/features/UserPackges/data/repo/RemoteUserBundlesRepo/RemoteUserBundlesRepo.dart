import 'package:aquadic_task/features/UserPackges/data/models/user_bundles_response/user_bundles_response.dart';

abstract class RemoteUserBundlesRepo {
  Future<UserBundlesResponse> getUserBundles();
}
