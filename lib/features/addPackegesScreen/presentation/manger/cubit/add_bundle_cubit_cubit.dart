import 'package:aquadic_task/features/addPackegesScreen/data/repo/getAllRepo/getAllPackges.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_bundle_cubit_state.dart';

class AddBundleCubitCubit extends Cubit<AddBundleCubitState> {
GetAllPackges getAllPackges;
  AddBundleCubitCubit(this.getAllPackges) : super(AddBundleCubitInitial());

    addBundle(int id) async {
    emit(AddBundleCubitloading());
    var res = await getAllPackges.addBundle(id);
    res.fold((l) {
    print(l.message,);
    emit(AddBundleCubitErorre(l.message));
    },(r) { 
      print(AddBundleCubitSucsess);
      emit(AddBundleCubitSucsess(r.message!));
    });
  }

}
