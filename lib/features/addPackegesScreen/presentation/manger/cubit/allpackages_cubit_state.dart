part of 'allpackages_cubit_cubit.dart';

@immutable
sealed class AllpackagesCubitState {}

final class AllpackagesCubitInitial extends AllpackagesCubitState {}

final class AllpackagesCubitLoading extends AllpackagesCubitState {}

final class AllpackagesCubitSucsess extends AllpackagesCubitState {
  List<Bundle> bundles;
  AllpackagesCubitSucsess(this.bundles);
}

final class AllpackagesCubitErorre extends AllpackagesCubitState {
  String erorre;
  AllpackagesCubitErorre(this.erorre);
}


