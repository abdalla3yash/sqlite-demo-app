import 'package:sqlite/data/rest_data.dart';
import 'package:sqlite/models/user.dart';

abstract class LoginContract {
  void onLoginSuccess(User user);
  void onLoginError(String error);
}

class LoginPageBackend {
  LoginContract _view;
  RestData api = new RestData();
  LoginPageBackend(this._view);

  doLogin(String username, String password) {
    api
        .login(username, password)
        .then((user) => _view.onLoginSuccess(user))
        .catchError((onError) => _view.onLoginError(onError));
  }
}
