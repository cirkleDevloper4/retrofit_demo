import 'package:json_annotation/json_annotation.dart';

part 'payment_value_model.g.dart';

@JsonSerializable()
class PaymentValueRequestModel {
  @JsonKey(name: 'amount')
  int? amount;
  @JsonKey(name: 'currency')
  String? currency;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'callback_method')
  String? callbackMethod;
  @JsonKey(name: 'notify')
  NotifyData? notify;
  @JsonKey(name: 'customer')
  CustomerData? customer;

  PaymentValueRequestModel({this.amount, this.currency, this.description, this.callbackMethod, this.notify, this.customer});

  factory PaymentValueRequestModel.fromJson(Map<String, dynamic> json) => _$PaymentValueRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentValueRequestModelToJson(this);
}

@JsonSerializable()
class NotifyData {
  @JsonKey(name: 'email')
  bool? email;
  @JsonKey(name: 'sms')
  bool? sms;

  NotifyData({this.email, this.sms});

  factory NotifyData.fromJson(Map<String, dynamic> json) => _$NotifyDataFromJson(json);

  Map<String, dynamic> toJson() => _$NotifyDataToJson(this);
}

@JsonSerializable()
class CustomerData {
  @JsonKey(name: 'contact')
  String? contact;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'name')
  String? name;

  CustomerData({this.contact, this.email, this.name});

  factory CustomerData.fromJson(Map<String, dynamic> json) => _$CustomerDataFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDataToJson(this);
}


@JsonSerializable()
class PaymentValueResponsModel{
  @JsonKey(name: 'id')
  String? id;

  PaymentValueResponsModel({this.id});

  factory PaymentValueResponsModel.fromJson(Map<String, dynamic> json) => _$PaymentValueResponsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentValueResponsModelToJson(this);
}