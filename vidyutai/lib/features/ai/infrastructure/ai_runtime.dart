abstract class AiRuntime {
	Future<void> load({required String modelPath});
	Future<List<double>> run(List<double> input);
	Future<void> dispose();
}

class TfliteRuntime implements AiRuntime {
	@override
	Future<void> load({required String modelPath}) async {
		// TODO: integrate tflite_flutter Interpreter here
	}

	@override
	Future<void> dispose() async {}

	@override
	Future<List<double>> run(List<double> input) async {
		return input; // echo
	}
}

class OnnxRuntimeEngine implements AiRuntime {
	@override
	Future<void> dispose() async {}

	@override
	Future<void> load({required String modelPath}) async {
		// TODO: integrate onnxruntime here
	}

	@override
	Future<List<double>> run(List<double> input) async {
		return input;
	}
}