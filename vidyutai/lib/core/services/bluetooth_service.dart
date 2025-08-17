import 'dart:async';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BluetoothService {
	final StreamController<List<BluetoothDevice>> _devicesController = StreamController.broadcast();

	Stream<List<BluetoothDevice>> get devicesStream => _devicesController.stream;

	Future<void> startScan({Duration timeout = const Duration(seconds: 5)}) async {
		await FlutterBluePlus.startScan(timeout: timeout);
		final List<BluetoothDevice> found = [];
		FlutterBluePlus.onScanResults.listen((results) {
			for (final r in results) {
				if (!found.any((d) => d.remoteId == r.device.remoteId)) {
					found.add(r.device);
					_devicesController.add(List.unmodifiable(found));
				}
			}
		});
	}

	Future<void> stopScan() async {
		await FlutterBluePlus.stopScan();
	}
}