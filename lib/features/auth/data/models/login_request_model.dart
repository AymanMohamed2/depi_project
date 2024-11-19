class LoginRequestModel {
  final String email;
  final String password;
  final String accountType;

  LoginRequestModel(
      {required this.email, required this.password, required this.accountType});

  Map<String, dynamic> toJson() {
    return {
      "login-Email": email,
      "login-password": password,
      "account_type": accountType,
    };
  }
}
