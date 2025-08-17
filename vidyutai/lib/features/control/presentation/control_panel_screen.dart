import 'package:flutter/material.dart';
import 'widgets/sensor_chart.dart';
import 'widgets/command_input_bar.dart';
import 'voice_assistant_button.dart';

class ControlPanelScreen extends StatelessWidget {
	const ControlPanelScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: const Text('Control Panel')),
			body: Padding(
				padding: const EdgeInsets.all(16),
				child: Column(
					children: [
						Row(
							children: [
								ElevatedButton(onPressed: () {}, child: const Text('ON')),
								const SizedBox(width: 12),
								OutlinedButton(onPressed: () {}, child: const Text('OFF')),
							],
						),
						const SizedBox(height: 24),
						const SensorChart(),
						const SizedBox(height: 12),
						CommandInputBar(onSend: (cmd) {
							// TODO: send command to device via websocket/bluetooth
						}),
					],
				),
			),
			floatingActionButton: const VoiceAssistantButton(),
		);
	}
}