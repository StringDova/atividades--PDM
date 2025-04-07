class Login {
  late String _email = "";
  late String _password = "";

  String get email => _email;
  String get password => _password;
  set setEmail(String newEmail) => _email = newEmail;
  set setPassword(String newPassword) => _password = newPassword;

  bool verificarLogin(){
    return _email == "admin" && _password == "1234";
  }


}