import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_model.freezed.dart';
part 'ai_model.g.dart';

@freezed
class AiModel with _$AiModel {
	const factory AiModel({
		required String id,
		required String name,
		@Default('tflite') String runtime, // tflite | onnx | torch
		String? localPath,
		String? remoteUrl,
	}) = _AiModel;

	factory AiModel.fromJson(Map<String, dynamic> json) => _$AiModelFromJson(json);
}