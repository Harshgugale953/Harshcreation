import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/auth_controller.dart';

class SignInScreen extends ConsumerWidget {
	const SignInScreen({super.key});

	static const String routePath = '/sign-in';
	static const String routeName = 'sign-in';

	@override
	Widget build(BuildContext context, WidgetRef ref) {
		return Scaffold(
			appBar: AppBar(title: const Text('Sign in')),
			body: Padding(
				padding: const EdgeInsets.all(16),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.stretch,
					children: [
						ElevatedButton(
							onPressed: () {
								ref.read(authStatusProvider.notifier).state = AuthStatus.signedIn;
							},
							child: const Text('Continue with Email'),
						),
						const SizedBox(height: 12),
						OutlinedButton(
							onPressed: () {
								ref.read(authStatusProvider.notifier).state = AuthStatus.signedIn;
							},
							child: const Text('Continue with Google'),
						),
					],
				),
			),
		);
	}
}