class Description {
  String? ar;
  String? en;

  Description({this.ar, this.en});

  factory Description.fromJson(Map<String, dynamic> json) => Description(
        ar: json['ar'] as String?,
        en: json['en'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'ar': ar,
        'en': en,
      };
}
