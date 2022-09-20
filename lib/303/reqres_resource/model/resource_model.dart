import 'package:json_annotation/json_annotation.dart';

part 'resource_model.g.dart';

String _fetchCustom(String data) {
  return 'aa';
}

@JsonSerializable()
class ResourceModel {
  ResourceModel({this.data});

  List<Data>? data;

  factory ResourceModel.fromJson(Map<String, dynamic> json) {
    return _$ResourceModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ResourceModelToJson(this);
  }
}

@JsonSerializable()
class Data {
  int? id;
  String? name;
  int? year;
  @JsonKey(name: 'renk')
  String? color;
  @JsonKey(fromJson: _fetchCustom)
  String? pantoneValue;
  String? price;
  final StatusCode? status;

  Data({this.id, this.name, this.year, this.color, this.pantoneValue, this.price, this.status});

  factory Data.fromJson(Map<String, dynamic> json) {
    return _$DataFromJson(json);
  }
}

enum StatusCode {
  @JsonValue(200)
  succcess,
  @JsonValue(500)
  weird,
}
