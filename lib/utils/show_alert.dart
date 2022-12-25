import 'package:flutterfire_login_ui/utils/constant.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showAlert(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    fontSize: 15,
    backgroundColor: kSecondColor,
  );
}
