import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'logout_response_model.g.dart';

@JsonSerializable()
class LogoutResponseModel extends Equatable {
  const LogoutResponseModel(
      {this.message, this.status = false, this.data,});

  final bool? status;
  final String? message;
  final Map? data;

  @override
  List<Object?> get props => [message, status, data];

  factory LogoutResponseModel.fromJson(Map<String, dynamic> json) {
    return _$LogoutResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LogoutResponseModelToJson(this);
  }
}
