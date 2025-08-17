import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../devices/application/device_controller.dart';

class DevicesScreen extends ConsumerWidget {
	const DevicesScreen({super.key});

	@override
	Widget build(BuildContext context, WidgetRef ref) {
		final devices = ref.watch(devicesProvider);
		return Scaffold(
			appBar: AppBar(title: const Text('Devices')),
			body: ListView.builder(
				itemCount: devices.length,
				itemBuilder: (context, index) {
					final d = devices[index];
					return ListTile(
						title: Text(d.name),
						subtitle: Text(d.type),
						trailing: Icon(
							d.isConnected ? Icons.bluetooth_connected : Icons.bluetooth_disabled,
							color: d.isConnected ? Colors.green : Colors.grey,
						),
					);
				},
			),
			floatingActionButton: FloatingActionButton.extended(
				onPressed: () {},
				label: const Text('Scan'),
				icon: const Icon(Icons.search),
			),
		);
	}
}