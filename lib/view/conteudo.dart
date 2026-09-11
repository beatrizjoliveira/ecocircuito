import 'package:flutter/material.dart';

class ConteudoOffline extends StatelessWidget {
  const ConteudoOffline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
      ),

      // RODAPÉ COM MENU DE NAVEGAÇÃO
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android),
            label: 'Dispositivos',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Conteúdo',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),


      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Center(
              child: Column(
                children: [
                  Text(
                    'Conteúdo offline',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text('Aprenda e aproveite ao máximo a tecnologia!',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            conteudoCard(
              titulo: 'Como usar o celular para gerar\nrenda extra',
              descricao: 'Dicas práticas para transformar\nseu celular em uma ferramenta de trabalho.',
              cor: Colors.green.shade50,
              icone: Icons.monetization_on,
            ),

            SizedBox(height: 16),

            conteudoCard(
              titulo: 'Apps úteis offline',
              descricao: 'Aplicativos que funcionam sem\ninternet e podem facilitar seu dia a dia.',
              cor: Colors.green.shade50,
              icone: Icons.app_shortcut_rounded,
            ),

            SizedBox(height: 24),

            conteudoCard(
              titulo: 'Noções básicas de tecnologia',
              descricao: 'Aprenda o básico sobre\ncelulares, configurações e segurança.',
              cor: Colors.green.shade50,
              icone: Icons.settings,
            ),

            SizedBox(height: 24),

            conteudoCard(
              titulo: 'Segurança digital',
              descricao: 'Cuide dos seus dados e\nnavegue com mais segurança.',
              cor: Colors.green.shade50,
              icone: Icons.security_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

Widget conteudoCard({
  required String titulo,
  required String descricao,
  required Color cor,
  required IconData icone,
}) {
  return Container(
    padding: EdgeInsets.all(16),

    decoration: BoxDecoration(
      color: cor,
      borderRadius: BorderRadius.circular(20),
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              titulo,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              descricao,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),

        Icon(
          icone,
          size: 70,
          color: Colors.black54,
        ),
      ],
    ),
  );
}
