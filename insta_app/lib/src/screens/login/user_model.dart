class User {
  late String username;
  late String password;
  User({required this.username, required this.password});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  bool exists(String _username) {
    return username == _username;
  }

  bool login(String _username, String _password) {
    if (username == _username && password == _password) {
      return true;
    } else {
      return false;
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}
