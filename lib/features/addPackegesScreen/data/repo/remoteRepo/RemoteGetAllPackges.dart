import 'package:aquadic_task/features/addPackegesScreen/data/models/addBundels/add_bundles_response.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/getallpackagesrepsonse/getallpackagesrepsonse.dart';

abstract class RemoteGetAllPackges {
  Future<Getallpackagesrepsonse> allPackges();
  Future<AddBundlesResponse> addBunle(int id);

}
