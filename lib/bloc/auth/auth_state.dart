abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class Authenticated extends AuthState {
  final String userId;

  Authenticated({required this.userId});
}

// Add other auth states like AuthError, Unauthenticated, etc.
