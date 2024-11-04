import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/screens/ip_detection_screen.dart'; 

void main() {
  testWidgets('Detectar IP', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: IpDetectionScreen()));

    
    await tester.tap(find.text('Detectar IP'));
    await tester.pump();

   
    expect(find.textContaining('IP detectado:'), findsOneWidget);
  });
}
