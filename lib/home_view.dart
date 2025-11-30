import 'package:biometric_demo/biometric_helper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'bank_account_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () => goToBankAccount(),
          child: Text("Go to Bank Account"),
        ),
      ),
    );
  }

  Future<void> goToBankAccount() async {
    // Check Is device support biometrics
    if (!await BiometricHelper.isDeviceSupprted()) {
      Fluttertoast.showToast(
        msg: "Device does not support biometrics",
        backgroundColor: Colors.red,
        fontSize: 16.0,
      );
    }

    // Check Available Biometrics
    final availableBiometrics = await BiometricHelper.getAvailableBioMetric();
    if (availableBiometrics.isEmpty) {
      Fluttertoast.showToast(
        msg: "No biometrics available",
        backgroundColor: Colors.red,
        fontSize: 16.0,
      );
    }

    // Authenticate with biometrics
    final isAuthenticated = await BiometricHelper.authenticate();
    if (isAuthenticated) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BankAccountView()),
      );
    }
  }
}
