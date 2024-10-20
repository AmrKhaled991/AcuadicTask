class BundleName {
  String? en;
  String? ar;

  BundleName({this.en, this.ar});

  factory BundleName.fromJson(Map<String, dynamic> json) => BundleName(
        en: json['en'] as String?,
        ar: json['ar'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'en': en,
        'ar': ar,
      };
}
