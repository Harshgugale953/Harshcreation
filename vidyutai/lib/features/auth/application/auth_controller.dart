import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AuthStatus { unknown, signedOut, signedIn }

final authStatusProvider = StateProvider<AuthStatus>((ref) => AuthStatus.unknown);

class AuthController {
	Future<void> signInWithEmail(String email, String password) async {
		// TODO: implement Firebase email sign-in
	}

	Future<void> signInWithGoogle() async {
		// TODO: implement Google sign-in
	}

	Future<void> signOut() async {
		// TODO: sign out
	}
}