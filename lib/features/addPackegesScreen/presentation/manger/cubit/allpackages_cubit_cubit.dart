import 'package:aquadic_task/features/addPackegesScreen/data/repo/getAllRepo/getAllPackges.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/getallpackagesrepsonse/bundle.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'allpackages_cubit_state.dart';

class AllpackagesCubitCubit extends Cubit<AllpackagesCubitState> {
  GetAllPackges getAllPackges;
  AllpackagesCubitCubit(this.getAllPackges) : super(AllpackagesCubitInitial());

  getallpackegs() async {
    emit(AllpackagesCubitLoading());
    var res = await getAllPackges.allPackges();
    res.fold((l) {
      emit(AllpackagesCubitErorre(l.message));
    }, (r) {
      emit(AllpackagesCubitSucsess(r.bundles!));
    });
  }
   
 
}


