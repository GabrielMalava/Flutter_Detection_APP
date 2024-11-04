import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/screens/ip_detection_screen.dart'; // Ajuste o nome do projeto se necessário

void main() {
  testWidgets('Detectar IP', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: IpDetectionScreen()));

    // Simula o toque no botão de detecção de IP
    await tester.tap(find.text('Detectar IP'));
    await tester.pump();

    // Verifica se o texto "IP detectado:" aparece na tela
    expect(find.textContaining('IP detectado:'), findsOneWidget);
  });
}
