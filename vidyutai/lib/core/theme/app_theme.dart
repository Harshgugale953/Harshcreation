import 'package:flutter/material.dart';

class AppTheme {
	static ThemeData get light => ThemeData(
		brightness: Brightness.light,
		colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4B7BEC)),
		useMaterial3: true,
	);

	static ThemeData get dark => ThemeData(
		brightness: Brightness.dark,
		colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4B7BEC), brightness: Brightness.dark),
		useMaterial3: true,
	);
}