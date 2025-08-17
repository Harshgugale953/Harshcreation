# VidyutAI

AI-Powered Hardware Integration App (Flutter)

## Quick start

1. Install Flutter SDK and set up Android/iOS toolchains
2. From project root:
   - `flutter pub get`
   - `dart run build_runner build -d`
   - `flutter run`

## Features (scaffolded)
- Authentication (email + Google) [wiring placeholders]
- Device connectivity: Bluetooth, Wi‑Fi discovery
- AI runtimes placeholders: TensorFlow Lite, ONNX Runtime
- Control dashboard with charts and widgets
- Logs and push notifications (Firebase)

## Structure
```
lib/
  core/               # config, routing, theme, services
  features/
    auth/
    devices/
    ai/
    control/
    dashboard/
    logs/
    settings/
  widgets/
assets/
```

## Notes
- iOS requires enabling Bluetooth and microphone permissions.
- Configure Firebase for auth/messaging before release.
- Add your TFLite/ONNX models under `assets/models/`.