class BundleDescription {
  String? ar;
  String? en;

  BundleDescription({this.ar, this.en});

  factory BundleDescription.fromJson(Map<String, dynamic> json) {
    return BundleDescription(
      ar: json['ar'] as String?,
      en: json['en'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'ar': ar,
        'en': en,
      };
}
