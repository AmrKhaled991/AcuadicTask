class AddBundlesResponse {
  int? data;
  String? message;

  AddBundlesResponse({this.data, this.message});

  factory AddBundlesResponse.fromJson(Map<String, dynamic> json) {
    return AddBundlesResponse(
      data: json['data'] as int?,
      message: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data,
        'message': message,
      };
}
