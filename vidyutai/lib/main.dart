import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';

void main() {
	WidgetsFlutterBinding.ensureInitialized();
	runApp(const ProviderScope(child: VidyutAIApp()));
}

class VidyutAIApp extends ConsumerWidget {
	const VidyutAIApp({super.key});

	@override
	Widget build(BuildContext context, WidgetRef ref) {
		final router = ref.watch(appRouterProvider);
		return MaterialApp.router(
			debugShowCheckedModeBanner: false,
			title: 'VidyutAI',
			theme: AppTheme.light,
			darkTheme: AppTheme.dark,
			routerConfig: router,
		);
	}
}