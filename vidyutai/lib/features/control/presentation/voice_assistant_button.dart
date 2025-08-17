import 'package:flutter/material.dart';

class VoiceAssistantButton extends StatefulWidget {
	const VoiceAssistantButton({super.key});

	@override
	State<VoiceAssistantButton> createState() => _VoiceAssistantButtonState();
}

class _VoiceAssistantButtonState extends State<VoiceAssistantButton> {
	bool _listening = false;

	void _toggle() {
		setState(() => _listening = !_listening);
		// TODO: integrate speech_to_text and send commands
	}

	@override
	Widget build(BuildContext context) {
		return FloatingActionButton(
			onPressed: _toggle,
			child: Icon(_listening ? Icons.mic : Icons.mic_none),
		);
	}
}