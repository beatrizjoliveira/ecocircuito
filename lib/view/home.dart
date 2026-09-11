import 'package:flutter/material.dart';
// Importação da tela de cadastro para navegação
import 'package:ecocircuito/view/cadastrar.dart';
import 'package:ecocircuito/view/dispositivos.dart';
import 'package:ecocircuito/view/conteudo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Widget Center, responsável por centralizar o conteúdo dentro do Scaffold
      body: SafeArea(
        child: Center(
          
          child: Column(
      /** CABEÇALHO DE BOAS-VINDAS AO USUÁRIO, COM SUBTÍTULO NO CANTO ESQUERDO
       * E SINO DE NOTIFICAÇÃO NO CANTO DIREITO */
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Olá, Beatriz!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ), 
                  ),
                  SizedBox(height: 8),
                ],
              ), // Espaçamento entre o título e o subtítulo
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Que bom ter você por aqui.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.notifications),
                    iconSize: (30),
                    onPressed:() {
                      // Ação a ser executada quando o sino de notificações for pressionado
                    },
                  ),
                ],
              ),
              // FIM DO CABEÇALHO
              // Espaçamento entre o cabeçalho e o restante do conteúdo
              SizedBox(height: 20),
            
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Impacto até agora',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //CADASTRADOS 
                        Column(
                          children: [
                            Text(
                              '12',
                              style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,                                
                              ),
                            ),

                            SizedBox(height: 5),

                            Text('Cadastrados'),
                          ],
                        ),

                        Container(
                          height: 60,
                          width: 2,
                          color: Colors.green,
                        ),

                        // RECUPERADOS
                        Column(
                          children: [
                            Text('5',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 5),

                          Text('Recuperados'),
                          ],
                        ),

                        Container(
                          height: 60,
                          width: 2,
                          color: Colors.green,
                        ),

                        // DESCARTADOS
                        Column(
                          children: [
                            Text('3',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                            ),

                            SizedBox(height: 5),

                            Text('Descartados'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              Text('O que você deseja fazer?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              //CADASTRAR NOVO DISPOSITIVO
              // Usamos inkwell para tornar o container clicável, permitindo a navegação para a tela de cadastro
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cadastrar(),
                    ),
                  );
                },

                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                
                      SizedBox(width: 16),
                
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cadastrar dispositivo',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                
                        SizedBox(height: 4),
                
                        Text(
                          'Adicione um novo dispositivo',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15),

              //VER LISTA DE DISPOSITIVOS
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dispositivos(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.list,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                
                      SizedBox(width: 16),
                
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ver dispositivos',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                
                        SizedBox(height: 4),
                
                        Text(
                          'Acompanhe seus dispositivos cadastrados',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15),

              //CONTEÚDO EDUCATIVO
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConteudoOffline(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.library_books_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                
                      SizedBox(width: 16),
                
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Conteúdo educativo',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                
                        SizedBox(height: 4),
                
                        Text(
                          'Guias e tutoriais para te ajudar',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15),

              //VER DISPOSITIVOS
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[50],

                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blueAccent,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                    SizedBox(width: 16),

                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pontos de coleta',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        'Encontre locais para descarte de dispositivos eletrônicos',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

            ],
          ),
        ),
      ),
      // RODAPÉ COM MENU DE NAVEGAÇÃO
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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
        ]
      ),
    );
  }
}
