import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/screens/url_detection.dart'; 

void main() {
  testWidgets('Verificar URL maliciosa', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: UrlDetectionScreen()));

    final urlField = find.byType(TextField);
    await tester.enterText(urlField, 'http://malicious.com');
    await tester.tap(find.text('Verificar URL'));
    await tester.pump();

    // Verifica se o resultado aparece com a mensagem correta
    expect(find.text('Link potencialmente malicioso: http://malicious.com'), findsOneWidget);
  });
}
