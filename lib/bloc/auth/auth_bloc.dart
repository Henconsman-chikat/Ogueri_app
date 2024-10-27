import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthInitial());

  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    // Handle different authentication events here
  }
}

class AuthRepository {
  AuthRepository(param0);
}
