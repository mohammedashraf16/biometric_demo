# 🔐 **Biometric Demo**

A clean and simple Flutter project demonstrating **biometric authentication** using **Fingerprint** and **Face ID**.  
This template includes ready-made setup for **Android** and **iOS**, making it a strong foundation for secure login flows or authentication-based features.

---

## ✨ **Features**

- 🔑 Fingerprint & Face ID authentication  
- 📱 Fully configured for Android & iOS  
- 🧱 Simple, easy-to-understand implementation  
- 🚀 Perfect starter template for secure screens  
- 💡 Lightweight & extendable project structure  

---

## 📸 **Preview**

<p align="center">
  <img width="250" height="540" src="https://github.com/user-attachments/assets/c722e506-36b7-43d4-8b6f-a333767838a3" />
  <img width="250" height="540" src="https://github.com/user-attachments/assets/f2582123-10d2-486c-af44-e13916a78af2" />
  <img width="250" height="540" src="https://github.com/user-attachments/assets/094fc300-739a-4c74-b6a8-67e51e009388" />
</p>

---

## 📱 **Platform Setup**

### 🔹 **Android Setup**

#### 1. Modify `MainActivity.kt`

Use `FlutterFragmentActivity` to support biometric APIs.

**File:** `android/app/src/main/kotlin/.../MainActivity.kt`

```kotlin
import io.flutter.embedding.android.FlutterFragmentActivity

class MainActivity : FlutterFragmentActivity() {
    // ...
}
```

#### 2. Add biometric permission

**File:** `android/app/src/main/AndroidManifest.xml`

```xml
<uses-permission android:name="android.permission.USE_BIOMETRIC" />
```

---

### 🔹 **iOS Setup**

#### 1. Add Face ID usage description

**File:** `ios/Runner/Info.plist`

```xml
<key>NSFaceIDUsageDescription</key>
<string>This app uses Face ID to verify your identity.</string>
```

---

## 📦 **Dependencies**

Add the biometric authentication plugin:

```yaml
dependencies:
  local_auth: ^2.1.0
```

Install packages:

```bash
flutter pub get
```

---

## 🚀 **Run the App**

```bash
flutter run
```

---

## 📄 **License**

Open-source and free to use 🎉
