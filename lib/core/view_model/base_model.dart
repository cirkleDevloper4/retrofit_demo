import 'package:demo/core/repository/api_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enum/view_state.dart';
import '../routing/locator/locator.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  set state(ViewState value) {
    _state = value;
    notifyListeners();
  }

  ////////
  APIRepository _apiRepository = locator<APIRepository>();

  APIRepository get apiRepository => _apiRepository;

  set apiRepository(APIRepository value) {
    _apiRepository = value;
    notifyListeners();
  }

  updateUI() {
    notifyListeners();
  }
}