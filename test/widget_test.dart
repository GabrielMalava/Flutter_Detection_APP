import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart'; // Ajuste o caminho conforme necessário

void main() {
  testWidgets('Verifica se a tela inicial carrega corretamente', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); // Não utilize `const` aqui

    // Verifica se o título "Menu Principal" está sendo exibido na tela inicial
    expect(find.text('Menu Principal'), findsOneWidget);
    expect(find.text('Dicas de Segurança Virtual:'), findsOneWidget);
  });
}
