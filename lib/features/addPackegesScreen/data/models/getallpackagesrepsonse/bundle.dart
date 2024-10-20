import 'description.dart';
import 'name.dart';

class Bundle {
  int? id;
  int? accountTypeId;
  Name? name;
  Description? description;
  String? price;
  int? amount;
  int? profileDuration;
  int? storyDuration;
  int? isEditable;
  int? isRepeatable;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? isActive;
  String? color;

  Bundle({
    this.id,
    this.accountTypeId,
    this.name,
    this.description,
    this.price,
    this.amount,
    this.profileDuration,
    this.storyDuration,
    this.isEditable,
    this.isRepeatable,
    this.createdAt,
    this.updatedAt,
    this.isActive,
    this.color,
  });

  factory Bundle.fromJson(Map<String, dynamic> json) => Bundle(
        id: json['id'] as int?,
        accountTypeId: json['account_type_id'] as int?,
        name: json['name'] == null
            ? null
            : Name.fromJson(json['name'] as Map<String, dynamic>),
        description: json['description'] == null
            ? null
            : Description.fromJson(json['description'] as Map<String, dynamic>),
        price: json['price'] as String?,
        amount: json['amount'] as int?,
        profileDuration: json['profile_duration'] as int?,
        storyDuration: json['story_duration'] as int?,
        isEditable: json['is_editable'] as int?,
        isRepeatable: json['is_repeatable'] as int?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        isActive: json['is_active'] as int?,
        color: json['color'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_type_id': accountTypeId,
        'name': name?.toJson(),
        'description': description?.toJson(),
        'price': price,
        'amount': amount,
        'profile_duration': profileDuration,
        'story_duration': storyDuration,
        'is_editable': isEditable,
        'is_repeatable': isRepeatable,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'is_active': isActive,
        'color': color,
      };
}
