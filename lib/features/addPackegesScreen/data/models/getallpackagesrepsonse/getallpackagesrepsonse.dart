import 'bundle.dart';

class Getallpackagesrepsonse {
  List<Bundle>? bundles;

  Getallpackagesrepsonse({this.bundles});

  factory Getallpackagesrepsonse.fromJson(Map<String, dynamic> json) {
    return Getallpackagesrepsonse(
      bundles: (json['bundles'] as List<dynamic>?)
          ?.map((e) => Bundle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'bundles': bundles?.map((e) => e.toJson()).toList(),
      };
}
