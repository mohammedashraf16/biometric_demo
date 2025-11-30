import 'package:flutter/material.dart';

class BankAccountView extends StatelessWidget {
  const BankAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bank Account Page"), centerTitle: true),
      body: Center(
        child: Text(
          "Your Balance : 500K",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
