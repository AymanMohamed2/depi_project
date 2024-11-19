import 'package:cancer/features/auth/data/models/register_request_model.dart';
import 'package:cancer/features/auth/presentation/view_model/register_cubit/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/auth_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterStateInitial());

  final AuthRepo authRepo;
  String? userName;
  String? email;
  String? password;
  String? confirmPassword;

  Future<void> register() async {
    emit(RegisterStateLoading());
    RegisterRequestModel register = RegisterRequestModel(
        name: userName!,
        email: email!,
        password: password!,
        confirmPassword: confirmPassword!);
    final result = await authRepo.register(register);
    result.fold(
      (failure) => emit(
        RegisterStateFailure(failure.errMessage),
      ),
      (success) => emit(
        RegisterStateSuccess(),
      ),
    );
  }
}
