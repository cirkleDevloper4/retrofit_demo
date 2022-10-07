// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentValueRequestModel _$PaymentValueRequestModelFromJson(
        Map<String, dynamic> json) =>
    PaymentValueRequestModel(
      amount: json['amount'] as int?,
      currency: json['currency'] as String?,
      description: json['description'] as String?,
      callbackMethod: json['callback_method'] as String?,
      notify: json['notify'] == null
          ? null
          : NotifyData.fromJson(json['notify'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : CustomerDataResponse.fromJson(
              json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentValueRequestModelToJson(
        PaymentValueRequestModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'description': instance.description,
      'callback_method': instance.callbackMethod,
      'notify': instance.notify,
      'customer': instance.customer,
    };

NotifyData _$NotifyDataFromJson(Map<String, dynamic> json) => NotifyData(
      email: json['email'] as bool?,
      sms: json['sms'] as bool?,
    );

Map<String, dynamic> _$NotifyDataToJson(NotifyData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'sms': instance.sms,
    };

CustomerDataResponse _$CustomerDataResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerDataResponse(
      contact: json['contact'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CustomerDataResponseToJson(
        CustomerDataResponse instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'email': instance.email,
      'name': instance.name,
    };

PaymentValueResponsModel _$PaymentValueResponsModelFromJson(
        Map<String, dynamic> json) =>
    PaymentValueResponsModel(
      id: json['id'] as String?,
      shortUrl: json['short_url'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$PaymentValueResponsModelToJson(
        PaymentValueResponsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'short_url': instance.shortUrl,
      'status': instance.status,
    };
