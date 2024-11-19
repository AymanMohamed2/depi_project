abstract class RegisterState {}

class RegisterStateInitial extends RegisterState {}

class RegisterStateLoading extends RegisterState {}

class RegisterStateSuccess extends RegisterState {}

class RegisterStateFailure extends RegisterState {
  final String errMessage;

  RegisterStateFailure(this.errMessage);
}
