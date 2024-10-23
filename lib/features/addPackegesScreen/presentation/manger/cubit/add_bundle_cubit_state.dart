part of 'add_bundle_cubit_cubit.dart';

@immutable
sealed class AddBundleCubitState {}

final class AddBundleCubitInitial extends AddBundleCubitState {}



final class AddBundleCubitFreeSucsess extends AddBundleCubitState {
   String message;
  AddBundleCubitFreeSucsess(this.message);
}
final class AddBundleCubitPayment extends AddBundleCubitState {
   String url;
  AddBundleCubitPayment(this.url);
}
final class AddBundleCubitloading extends AddBundleCubitState {}
final class AddBundleCubitErorre extends AddBundleCubitState {
    String erorre;
  AddBundleCubitErorre(this.erorre);
}

