// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class amr {
  int bundle_id;
  amr({
    required this.bundle_id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundle_id': bundle_id,
    };
  }

  factory amr.fromMap(Map<String, dynamic> map) {
    return amr(
      bundle_id: map['bundles'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory amr.fromJson(String source) => amr.fromMap(json.decode(source) as Map<String, dynamic>);
}
