import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:local_auth/local_auth.dart';

class BiometricHelper {
  static final LocalAuthentication auth = LocalAuthentication();

  // Check Is device support biometrics
  static Future<bool> isDeviceSupprted() async {
    return await auth.isDeviceSupported();
  }

  // Check Available Biometrics
  static Future<List<BiometricType>> getAvailableBioMetric() async {
    return await auth.getAvailableBiometrics();
  }

  // Authenticate with biometrics
  static Future<bool> authenticate() async {
    try {
      final bool didAuthenticate = await auth.authenticate(
        localizedReason: 'Please authenticate to show account balance',
        biometricOnly: true,
      );
      return didAuthenticate;
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Something went wrong during authentication",
        backgroundColor: Colors.red,
        fontSize: 16.0,
      );
    }
    return false;
  }
}
