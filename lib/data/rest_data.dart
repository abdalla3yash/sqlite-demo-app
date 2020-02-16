import 'package:sqlite/utils/network_utils.dart';
import 'package:sqlite/models/user.dart';

class RestData {
  NetworkUtils _netUtils = new NetworkUtils();

  static final BASE_URL = '';
  static final LOGIN_URL = BASE_URL + '/';

  Future<User> login(String username, String password) {
    return new Future.value(new User(username, password));
  }
}
