import 'package:flutter/material.dart';
import '../../devices/presentation/devices_screen.dart';
import '../../control/presentation/control_panel_screen.dart';
import '../../ai/presentation/ai_models_screen.dart';
import '../../logs/presentation/logs_screen.dart';
import '../../settings/presentation/settings_screen.dart';

class DashboardScreen extends StatefulWidget {
	const DashboardScreen({super.key});

	static const String routePath = '/dashboard';
	static const String routeName = 'dashboard';

	@override
	State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
	int _index = 0;

	final List<Widget> _pages = const [
		DevicesScreen(),
		ControlPanelScreen(),
		AiModelsScreen(),
		LogsScreen(),
		SettingsScreen(),
	];

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: const Text('VidyutAI')),
			body: _pages[_index],
			bottomNavigationBar: NavigationBar(
				selectedIndex: _index,
				onDestinationSelected: (i) => setState(() => _index = i),
				destinations: const [
					NavigationDestination(icon: Icon(Icons.devices), label: 'Devices'),
					NavigationDestination(icon: Icon(Icons.tune), label: 'Control'),
					NavigationDestination(icon: Icon(Icons.memory), label: 'AI'),
					NavigationDestination(icon: Icon(Icons.history), label: 'Logs'),
					NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
				],
			),
		);
	}
}