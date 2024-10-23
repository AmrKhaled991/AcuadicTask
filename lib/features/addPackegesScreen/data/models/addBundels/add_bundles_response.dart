class AddBundlesResponse {
  int? data;
  String? message;
  String? url;
  

  AddBundlesResponse(this.data, this.message,this.url);

  factory AddBundlesResponse.fromJson(Map<String, dynamic> json) {
    return AddBundlesResponse(
       json['data'] as int?,
       json['message'] as String?,
       json['url'] as String?,

    );
  }

  Map<String, dynamic> toJson() => {
        'data': data,
        'message': message,
      };
}
