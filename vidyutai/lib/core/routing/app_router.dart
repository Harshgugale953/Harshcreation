import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/dashboard/presentation/dashboard_screen.dart';
import '../../features/auth/presentation/sign_in_screen.dart';
import '../../features/auth/presentation/splash_screen.dart';
import '../../features/auth/application/auth_controller.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
	final auth = ref.watch(authStatusProvider);
	return GoRouter(
		initialLocation: SplashScreen.routePath,
		routes: [
			GoRoute(
				path: SplashScreen.routePath,
				name: SplashScreen.routeName,
				builder: (context, state) => const SplashScreen(),
			),
			GoRoute(
				path: SignInScreen.routePath,
				name: SignInScreen.routeName,
				builder: (context, state) => const SignInScreen(),
			),
			GoRoute(
				path: DashboardScreen.routePath,
				name: DashboardScreen.routeName,
				builder: (context, state) => const DashboardScreen(),
			),
		],
		redirect: (context, state) {
			final loggingIn = state.matchedLocation == SignInScreen.routePath;
			switch (auth) {
				case AuthStatus.unknown:
					return SplashScreen.routePath;
				case AuthStatus.signedOut:
					return loggingIn ? null : SignInScreen.routePath;
				case AuthStatus.signedIn:
					return state.matchedLocation == SplashScreen.routePath
						? DashboardScreen.routePath
						: null;
			}
		},
		refreshListenable: GoRouterRefreshStream(Stream<void>.empty()),
	);
});

class GoRouterRefreshStream extends ChangeNotifier {
	GoRouterRefreshStream(Stream<dynamic> stream) {
		stream.asBroadcastStream().listen((_) => notifyListeners());
	}
}