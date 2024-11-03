import 'package:flutter/material.dart';

class IpDetectionScreen extends StatefulWidget {
  @override
  _IpDetectionScreenState createState() => _IpDetectionScreenState();
}

class _IpDetectionScreenState extends State<IpDetectionScreen> {
  String? ipResult;

  void checkIp() {
    // Simulação de verificação de IP
    setState(() {
      // Aqui você pode adicionar lógica de verificação de IP se necessário
      ipResult = 'IP detectado: ${DateTime.now().microsecondsSinceEpoch}'; // Simulando um IP
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Identificação do IP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: checkIp,
              child: Text('Detectar IP'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            if (ipResult != null)
              Text(
                ipResult!,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
          ],
        ),
      ),
    );
  }
}
