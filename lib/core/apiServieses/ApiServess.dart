import 'package:aquadic_task/core/dto/amr.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/addBundels/add_bundles_response.dart';
import 'package:dio/dio.dart';
import 'package:aquadic_task/constant.dart';
import 'package:aquadic_task/features/UserPackges/data/models/user_bundles_response/user_bundles_response.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/getallpackagesrepsonse/getallpackagesrepsonse.dart';

class ApiServess {
  static const baseurl = "https://2g9.ae/api/auth/";
  static const UserBundles = "${baseurl}getUserBundles";
  static const availableBundles = "${baseurl}availableBundles";
  static const bundleSubscribe = "${baseurl}bundleSubscribe";

  ApiServess(this.dio);
  Dio dio;

  Future<Getallpackagesrepsonse> getavailableBundles() async {
    final response = await dio.get(availableBundles,
        options: Options(
            headers: {"accept": "*/*", "Authorization": 'Bearer ${token}'}));
    final res = Getallpackagesrepsonse.fromJson(response.data);
    return res;
  }

  Future<UserBundlesResponse> getUserBundles() async {
    final response = await dio.get(UserBundles,
        options: Options(
            headers: {"accept": "*/*", "Authorization": 'Bearer ${token}'}));
    final res = UserBundlesResponse.fromJson(response.data);
    return res;
  }

  Future<AddBundlesResponse> postBundle(int bundleId) async {
    final response = await dio.post(bundleSubscribe,
        data: amr(bundle_id: bundleId).toMap()  ,
        options: Options(
            contentType: Headers.formUrlEncodedContentType,
            headers: {"accept": "*/*", "Authorization": 'Bearer ${token}'}));
            print(response.statusCode);
    final res = AddBundlesResponse.fromJson(response.data);
    
    return res;
  }
}
