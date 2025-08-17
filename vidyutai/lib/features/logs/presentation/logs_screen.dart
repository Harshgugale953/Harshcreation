import 'package:flutter/material.dart';

class LogsScreen extends StatelessWidget {
	const LogsScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: const Text('Logs')),
			body: const Center(child: Text('Logs and notifications will appear here')),
		);
	}
}