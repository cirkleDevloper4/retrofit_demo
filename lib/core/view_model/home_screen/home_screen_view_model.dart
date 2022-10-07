import 'package:demo/core/enum/view_state.dart';
import 'package:demo/core/view_model/base_model.dart';

import '../../api_model/payment_status_model.dart';
import '../../api_model/payment_value_model.dart';
import '../../repository/api_repository.dart';

class HomeScreenViewModel extends BaseModel {
  PaymentValueResponsModel paymentValueResponsModel = PaymentValueResponsModel();
  GetPaymentStatus getPaymentStatus = GetPaymentStatus();

  @override
  APIRepository apiRepository = APIRepository();

  getPayment() async {
    state = ViewState.Busy;
    getPaymentStatus =
        await apiRepository.getPaymentData("Basic cnpwX3Rlc3RfUWlaWlZpNkNMNWVHTjE6S1oyelVWRzFBQ0xKOThwekp5V0tKb3dl");
    state = ViewState.Idle;

    updateUI();
  }

  postPayment() async {
    state = ViewState.Busy;
    PaymentValueRequestModel paymentValueRequestModel = PaymentValueRequestModel(
        amount: 100,
        description: 'description',
        currency: "INR",
        callbackMethod: "get",
        notify: NotifyData(email: false, sms: false),
        customer: CustomerDataResponse(name: 'name', email: 'rutvik12@gmail.com', contact: '+918866187223'));

    paymentValueResponsModel = await apiRepository.paymentValue(
        "Basic cnpwX3Rlc3RfUWlaWlZpNkNMNWVHTjE6S1oyelVWRzFBQ0xKOThwekp5V0tKb3dl", paymentValueRequestModel);
    print("Respons::- $paymentValueResponsModel");
    state = ViewState.Idle;
    updateUI();
  }
}
