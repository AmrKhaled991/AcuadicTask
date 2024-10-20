part of 'add_bundle_cubit_cubit.dart';

@immutable
sealed class AddBundleCubitState {}

final class AddBundleCubitInitial extends AddBundleCubitState {}



final class AddBundleCubitSucsess extends AddBundleCubitState {
   String message;
  AddBundleCubitSucsess(this.message);
}
final class AddBundleCubitloading extends AddBundleCubitState {}
final class AddBundleCubitErorre extends AddBundleCubitState {
    String erorre;
  AddBundleCubitErorre(this.erorre);
}

