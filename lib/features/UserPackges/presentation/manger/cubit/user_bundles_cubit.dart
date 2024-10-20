import 'package:aquadic_task/features/UserPackges/data/models/user_bundles_response/user_s_bundle.dart';
import 'package:aquadic_task/features/UserPackges/data/repo/UserBundlesRepo/UserBundlesRepo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_bundles_state.dart';

class UserBundlesCubit extends Cubit<UserBundlesState> {
  final UserBundlesRepo userBundlesRepo;
  UserBundlesCubit(this.userBundlesRepo) : super(UserBundlesInitial());

  getUserBundles() async {
    emit(UserBundlesLoading());
    var res = await userBundlesRepo.getUserBundles();
    res.fold((l) {
      emit(UserBundlesErorre(l.message));
      print("eroore");
    }, (r) {
      emit(UserBundlesSucsess(r.userSBundles));
      print("123132");
    });
  }
}
