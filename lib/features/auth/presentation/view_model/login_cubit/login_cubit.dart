import 'package:cancer/features/auth/data/models/login_request_model.dart';
import 'package:cancer/features/auth/data/repository/auth_repo.dart';
import 'package:cancer/features/auth/presentation/view_model/login_cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(this.authRepo) : super(LoginInitialState());

  String? email;
  String? password;

  final AuthRepo authRepo;

  Future<void> login() async {
    emit(LoginLoadinglState());
    LoginRequestModel login = LoginRequestModel(
        email: email!, password: password!, accountType: 'user');
    final result = await authRepo.login(login);

    result.fold(
      (failure) => emit(LoginFailureState(failure.errMessage)),
      (success) => emit(
        LoginSuccessState(),
      ),
    );
  }
}
