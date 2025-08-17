import 'package:flutter/material.dart';

class AiModelsScreen extends StatelessWidget {
	const AiModelsScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: const Text('AI Models')),
			body: const Center(child: Text('Add or select AI models here')),
		);
	}
}