class RegisterRequestModel {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;

  RegisterRequestModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.confirmPassword});

  Map<String, dynamic> toJson() {
    return {
      "user-name": name,
      "user-email": email,
      "user-password": password,
      "confirm-password": confirmPassword
    };
  }
}
