part of 'user_bundles_cubit.dart';

@immutable
sealed class UserBundlesState {}

final class UserBundlesInitial extends UserBundlesState {}

final class UserBundlesLoading extends UserBundlesState {}

final class UserBundlesSucsess extends UserBundlesState {
  List<UserSBundle>? userSBundles;
  UserBundlesSucsess(this.userSBundles);
}

final class UserBundlesErorre extends UserBundlesState {
  String erorre;
  UserBundlesErorre(this.erorre);
}
