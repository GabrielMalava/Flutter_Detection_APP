import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart'; 

void main() {
  testWidgets('Verifica se a tela inicial carrega corretamente', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); 
   
    expect(find.text('Menu Principal'), findsOneWidget);
    expect(find.text('Dicas de Segurança Virtual:'), findsOneWidget);
  });
}
