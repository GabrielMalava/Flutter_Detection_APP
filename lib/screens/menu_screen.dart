import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ip_detection_screen.dart';
import 'package:flutter_application_1/screens/url_detection.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Principal'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Identificação do IP'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IpDetectionScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Identificação do Link'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UrlDetectionScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView( // Substitua SingleChildScrollView por ListView
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Dicas de Segurança Virtual:',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          _buildTipCard(
            title: 'Use Senhas Fortes',
            description:
                'Utilize senhas longas e complexas, contendo letras, números e símbolos. Considere usar um gerenciador de senhas.',
          ),
          _buildTipCard(
            title: 'Mantenha seu Software Atualizado',
            description:
                'Sempre mantenha seu sistema operacional e aplicativos atualizados para se proteger contra vulnerabilidades.',
          ),
          _buildTipCard(
            title: 'Cuidado com Links Suspeitos',
            description:
                'Evite clicar em links de e-mails ou mensagens que você não reconhece. Verifique a URL antes de acessar.',
          ),
          _buildTipCard(
            title: 'Utilize uma VPN',
            description:
                'Ao usar redes públicas, considere utilizar uma VPN para proteger sua privacidade e dados.',
          ),
        ],
      ),
    );
  }

  Widget _buildTipCard({required String title, required String description}) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
