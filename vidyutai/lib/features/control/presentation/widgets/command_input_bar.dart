import 'package:flutter/material.dart';

class CommandInputBar extends StatefulWidget {
	const CommandInputBar({super.key, this.onSend});

	final ValueChanged<String>? onSend;

	@override
	State<CommandInputBar> createState() => _CommandInputBarState();
}

class _CommandInputBarState extends State<CommandInputBar> {
	final TextEditingController _controller = TextEditingController();

	void _submit() {
		final text = _controller.text.trim();
		if (text.isEmpty) return;
		widget.onSend?.call(text);
		_controller.clear();
	}

	@override
	Widget build(BuildContext context) {
		return Row(
			children: [
				Expanded(
					child: TextField(
						controller: _controller,
						decoration: const InputDecoration(hintText: 'Enter command'),
						onSubmitted: (_) => _submit(),
					),
				),
				const SizedBox(width: 8),
				IconButton(onPressed: _submit, icon: const Icon(Icons.send)),
			],
		);
	}
}