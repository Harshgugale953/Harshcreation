import 'package:flutter/material.dart';

class PlaceholderCard extends StatelessWidget {
	const PlaceholderCard({required this.title, super.key});

	final String title;

	@override
	Widget build(BuildContext context) {
		return Center(
			child: Card(
				margin: const EdgeInsets.all(24),
				child: Padding(
					padding: const EdgeInsets.all(24),
					child: Text(title, style: Theme.of(context).textTheme.headlineSmall),
				),
			),
		);
	}
}