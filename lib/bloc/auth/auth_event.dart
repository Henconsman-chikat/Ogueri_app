abstract class AuthEvent {}

class RegisterUser extends AuthEvent {
  final String email;
  final String password;

  RegisterUser({required this.email, required this.password});
}

// Add other auth events like LoginUser, LogoutUser, etc.
