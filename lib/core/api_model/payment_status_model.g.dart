// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPaymentStatus _$GetPaymentStatusFromJson(Map<String, dynamic> json) =>
    GetPaymentStatus(
      paymentLinks: (json['payment_links'] as List<dynamic>?)
          ?.map((e) => PaymentLinks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPaymentStatusToJson(GetPaymentStatus instance) =>
    <String, dynamic>{
      'payment_links': instance.paymentLinks,
    };

PaymentLinks _$PaymentLinksFromJson(Map<String, dynamic> json) => PaymentLinks(
      acceptPartial: json['accept_partial'] as bool?,
      amount: json['amount'] as int?,
      amountPaid: json['amount_paid'] as int?,
      cancelledAt: json['cancelled_at'] as int?,
      customer: json['customer'] == null
          ? null
          : CustomerData.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentLinksToJson(PaymentLinks instance) =>
    <String, dynamic>{
      'accept_partial': instance.acceptPartial,
      'amount': instance.amount,
      'amount_paid': instance.amountPaid,
      'cancelled_at': instance.cancelledAt,
      'customer': instance.customer,
    };

CustomerData _$CustomerDataFromJson(Map<String, dynamic> json) => CustomerData(
      contact: json['contact'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CustomerDataToJson(CustomerData instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'email': instance.email,
      'name': instance.name,
    };
