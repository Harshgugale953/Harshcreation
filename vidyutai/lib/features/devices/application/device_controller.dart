import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/device.dart';

final devicesProvider = StateNotifierProvider<DeviceController, List<Device>>((ref) {
	return DeviceController();
});

class DeviceController extends StateNotifier<List<Device>> {
	DeviceController() : super(const []);

	void upsert(Device device) {
		final index = state.indexWhere((d) => d.id == device.id);
		if (index == -1) {
			state = [...state, device];
		} else {
			final updated = [...state];
			updated[index] = device;
			state = updated;
		}
	}

	void removeById(String id) {
		state = state.where((d) => d.id != id).toList(growable: false);
	}

	void setConnected(String id, bool connected) {
		final index = state.indexWhere((d) => d.id == id);
		if (index != -1) {
			final updated = [...state];
			updated[index] = updated[index].copyWith(isConnected: connected);
			state = updated;
		}
	}
}