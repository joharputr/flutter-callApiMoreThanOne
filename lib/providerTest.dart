import 'package:flutter/cupertino.dart';
import 'package:twoapi/api.dart';

class ProvderTest extends ChangeNotifier {
  ApiCall apiCall = ApiCall();
  String result = "";
  String result2 = "";

  Future<void> getApiProver() async {
    result = await apiCall.getAPi1();
    print("resultPrcdr = $result");
    notifyListeners();
  }

  Future<void> getApiProver2() async {
    result2 = await apiCall.getAPi1() + "2";
    print("resultPrcdr = $result2");
    notifyListeners();
  }
}
