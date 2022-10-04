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
      description: 'description',
      amount: 100,
      currency: "INR",
      callbackMethod: "callbackMethod",
    );
    paymentValueResponsModel = await apiRepository.paymentValue(
        "Basic cnpwX3Rlc3RfUWlaWlZpNkNMNWVHTjE6S1oyelVWRzFBQ0xKOThwekp5V0tKb3dl", paymentValueRequestModel);
    state = ViewState.Idle;
    updateUI();
  }
}
