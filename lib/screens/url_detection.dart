import 'package:flutter/material.dart';

class UrlDetectionScreen extends StatefulWidget {
  @override
  _UrlDetectionScreenState createState() => _UrlDetectionScreenState();
}

class _UrlDetectionScreenState extends State<UrlDetectionScreen> {
  String? urlToCheck;
  String? urlResult;

  void checkUrl() {

    setState(() {
      if (urlToCheck != null && urlToCheck!.isNotEmpty) {

        if (urlToCheck!.contains('malicious')) {
          urlResult = 'Link potencialmente malicioso: $urlToCheck';
        } else if (!urlToCheck!.startsWith('https://')) {
          urlResult = 'Link suspeito (considerando a falta de HTTPS): $urlToCheck';
        } else {
          urlResult = 'Link seguro: $urlToCheck';
        }
      } else {
        urlResult = 'Por favor, insira uma URL.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Identificação do Link'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Insira uma URL para verificação',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              onChanged: (value) {
                urlToCheck = value;
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: checkUrl,
              child: Text('Verificar URL'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            if (urlResult != null)
              Card(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    urlResult!,
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
