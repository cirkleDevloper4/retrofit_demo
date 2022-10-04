import 'package:json_annotation/json_annotation.dart';

part 'payment_status_model.g.dart';

@JsonSerializable()
class GetPaymentStatus {
  @JsonKey(name: 'payment_links')
  List<PaymentLinks>? paymentLinks;

  GetPaymentStatus({this.paymentLinks});

  factory GetPaymentStatus.fromJson(Map<String, dynamic> json) => _$GetPaymentStatusFromJson(json);

  Map<String, dynamic> toJson() => _$GetPaymentStatusToJson(this);
}

@JsonSerializable()
class PaymentLinks {
  @JsonKey(name: 'accept_partial')
  bool? acceptPartial;
  @JsonKey(name: 'amount')
  int? amount;
  @JsonKey(name: 'amount_paid')
  int? amountPaid;
  @JsonKey(name: 'cancelled_at')
  int? cancelledAt;
  @JsonKey(name: 'customer')
  CustomerData? customer;

  PaymentLinks({this.acceptPartial, this.amount, this.amountPaid, this.cancelledAt, this.customer});

  factory PaymentLinks.fromJson(Map<String, dynamic> json) => _$PaymentLinksFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentLinksToJson(this);
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
