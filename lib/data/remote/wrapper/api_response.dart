import '/data/model/converter.dart';
import 'base_response.dart';

class ResponseObject<T> extends BaseResponse {
  final T? data;

  ResponseObject({
    required int status,
    required String message,
    required String domain,
    this.data,
  }) : super(status: status, message: message, domain: domain);

  factory ResponseObject.fromJson(Map<String, dynamic> json) {
    return ResponseObject<T>(
      status: json["status"] as int,
      message: json["message"] as String,
      domain: json["domain"] as String,
      data: json["result"] == null
          ? null
          : Converter<T>().fromJson(json["result"]),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': this.status,
        'message': this.message,
        'domain': this.domain,
        'result': this.data == null ? null : Converter<T>().toJson(this.data!),
      };
}

class ResponseList<T> extends BaseResponse {
  List<T>? data;

  ResponseList({
    required int status,
    required String message,
    required String domain,
    this.data = const [],
  }) : super(status: status, message: message, domain: domain);

  factory ResponseList.fromJson(Map<String, dynamic> json) => ResponseList<T>(
        status: json["status"],
        message: json["message"],
        domain: json["domain"],
        data: json["result"] == null
            ? []
            : List<T>.from(
                json["result"].map((x) => Converter<T>().fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'status': this.status,
        'message': this.message,
        'domain': this.domain,
        'result': this.data?.map(Converter<T>().toJson).toList(),
      };
}
