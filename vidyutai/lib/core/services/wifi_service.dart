import 'package:network_info_plus/network_info_plus.dart';

class WifiService {
	final NetworkInfo _info = NetworkInfo();

	Future<String?> getWifiName() => _info.getWifiName();
	Future<String?> getWifiBSSID() => _info.getWifiBSSID();
	Future<String?> getWifiIP() => _info.getWifiIP();
}