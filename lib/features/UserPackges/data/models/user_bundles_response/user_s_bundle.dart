import 'bundle_description.dart';
import 'bundle_name.dart';

class UserSBundle {
  int? id;
  int? userId;
  String? userName;
  int? bundleId;
  BundleName? bundleName;
  DateTime? createdAt;
  DateTime? updatedAt;
  BundleDescription? bundleDescription;
  String? bundlePrice;
  int? bundleAmount;
  int? bundleUsed;
  int? bundleProfileDuration;
  int? bundleIsEditable;
  dynamic bundleColor;
  String? bundlePurchasedTimes;
  int? bundleStoryDuration;

  UserSBundle({
    this.id,
    this.userId,
    this.userName,
    this.bundleId,
    this.bundleName,
    this.createdAt,
    this.updatedAt,
    this.bundleDescription,
    this.bundlePrice,
    this.bundleAmount,
    this.bundleUsed,
    this.bundleProfileDuration,
    this.bundleIsEditable,
    this.bundleColor,
    this.bundlePurchasedTimes,
    this.bundleStoryDuration,
  });

  factory UserSBundle.fromJson(Map<String, dynamic> json) => UserSBundle(
        id: json['id'] as int?,
        userId: json['user_id'] as int?,
        userName: json['user_name'] as String?,
        bundleId: json['bundle_id'] as int?,
        bundleName: json['bundle_name'] == null
            ? null
            : BundleName.fromJson(json['bundle_name'] as Map<String, dynamic>),
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        bundleDescription: json['bundle_description'] == null
            ? null
            : BundleDescription.fromJson(
                json['bundle_description'] as Map<String, dynamic>),
        bundlePrice: json['bundle_price'] as String?,
        bundleAmount: json['bundle_amount'] as int?,
        bundleUsed: json['bundle_used'] as int?,
        bundleProfileDuration: json['bundle_profile_duration'] as int?,
        bundleIsEditable: json['bundle_is_editable'] as int?,
        bundleColor: json['bundle_color'] as dynamic,
        bundlePurchasedTimes: json['bundle_purchased_times'] as String?,
        bundleStoryDuration: json['bundle_story_duration'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'user_name': userName,
        'bundle_id': bundleId,
        'bundle_name': bundleName?.toJson(),
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'bundle_description': bundleDescription?.toJson(),
        'bundle_price': bundlePrice,
        'bundle_amount': bundleAmount,
        'bundle_used': bundleUsed,
        'bundle_profile_duration': bundleProfileDuration,
        'bundle_is_editable': bundleIsEditable,
        'bundle_color': bundleColor,
        'bundle_purchased_times': bundlePurchasedTimes,
        'bundle_story_duration': bundleStoryDuration,
      };
}
