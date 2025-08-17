import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/auth_controller.dart';

class SplashScreen extends ConsumerStatefulWidget {
	const SplashScreen({super.key});

	static const String routePath = '/';
	static const String routeName = 'splash';

	@override
	ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
	@override
	void initState() {
		super.initState();
		Future<void>.delayed(const Duration(milliseconds: 500), () {
			ref.read(authStatusProvider.notifier).state = AuthStatus.signedOut;
		});
	}

	@override
	Widget build(BuildContext context) {
		return const Scaffold(
			body: Center(
				child: CircularProgressIndicator(),
			),
		);
	}
}