import 'user_s_bundle.dart';

class UserBundlesResponse {
  List<UserSBundle>? userSBundles;

  UserBundlesResponse({this.userSBundles});

  factory UserBundlesResponse.fromJson(Map<String, dynamic> json) {
    return UserBundlesResponse(
      userSBundles: (json["user's bundles"] as List<dynamic>?)
          ?.map((e) => UserSBundle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        "user's bundles": userSBundles?.map((e) => e.toJson()).toList(),
      };
}
