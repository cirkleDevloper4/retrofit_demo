import 'package:demo/core/enum/view_state.dart';
import 'package:demo/core/view_model/base_model.dart';

import '../../api_model/payment_status_model.dart';
import '../../repository/api_repository.dart';

class HomeScreenViewModel extends BaseModel {
  GetPaymentStatus getPaymentStatus = GetPaymentStatus();

  @override
  APIRepository apiRepository = APIRepository();

  getPayment() async {
    state = ViewState.Busy;
    getPaymentStatus =
        await apiRepository.getPaymentData("Basic cnpwX3Rlc3RfUWlaWlZpNkNMNWVHTjE6S1oyelVWRzFBQ0xKOThwekp5V0tKb3dl");
    state = ViewState.Idle;

   //  print('@@@@@@@@@@@@@@@@@@${getPaymentStatus.toJson()}');
    updateUI();
  }
}
