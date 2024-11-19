abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadinglState extends LoginStates {}

class LoginSuccessState extends LoginStates {}

class LoginFailureState extends LoginStates {
  final String errMessage;

  LoginFailureState(this.errMessage);
}
