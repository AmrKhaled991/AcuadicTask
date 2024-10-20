// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:aquadic_task/core/apiServieses/ApiServess.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/addBundels/add_bundles_response.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/repo/remoteRepo/RemoteGetAllPackges.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/getallpackagesrepsonse/getallpackagesrepsonse.dart';

class RemoteGetAllPackgesImp extends RemoteGetAllPackges {
  ApiServess apiServess;
  RemoteGetAllPackgesImp({
    required this.apiServess,
  });

  @override
  Future<Getallpackagesrepsonse> allPackges() async {
    var res = await apiServess.getavailableBundles();
    return res;
  }

  @override
  Future<AddBundlesResponse> addBunle(int id)  async {
    var res = await apiServess.postBundle(id);
    return res;
  }

}
