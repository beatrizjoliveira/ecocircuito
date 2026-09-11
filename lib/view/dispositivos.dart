import 'package:ecocircuito/view/cadastrar.dart';
import 'package:flutter/material.dart';

class Dispositivos extends StatelessWidget {
  const Dispositivos({super.key});

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
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
/**CONTEÚDO EDUCATIVO
  InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConteudoOffline(),
        ),
      );
    }, */
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cadastrar()),
          ); 
        },

        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
                    'Meus dispositivos',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Acompanhe todos os dispositivos cadastrados.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // FILTROS
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [

                  filtro(
                    texto: 'Todos',
                    cor: Colors.green,
                    textoCor: Colors.white,
                  ),

                  SizedBox(width: 10),

                  filtro(
                    texto: 'Reuso',
                    cor: Colors.grey.shade200,
                    textoCor: Colors.black,
                  ),

                  SizedBox(width: 10),

                  filtro(
                    texto: 'Em reparo',
                    cor: Colors.grey.shade200,
                    textoCor: Colors.black,
                  ),

                  SizedBox(width: 10),

                  filtro(
                    texto: 'Descartado',
                    cor: Colors.grey.shade200,
                    textoCor: Colors.black,
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // LISTA
            dispositivoCard(
              nome: 'Celular',
              modelo: 'Samsung Galaxy A10',
              status: 'Reuso',
              statusColor: Colors.green,
              data: '12/05/2026',
              icone: Icons.phone_android,
            ),

            SizedBox(height: 15),

            dispositivoCard(
              nome: 'Notebook',
              modelo: 'Dell Inspiron 15',
              status: 'Em reparo',
              statusColor: Colors.orange,
              data: '10/05/2026',
              icone: Icons.laptop,
            ),

            SizedBox(height: 15),

            dispositivoCard(
              nome: 'Tablet',
              modelo: 'Multilaser M7',
              status: 'Descartado',
              statusColor: Colors.red,
              data: '08/05/2026',
              icone: Icons.tablet,
            ),

            SizedBox(height: 15),

            dispositivoCard(
              nome: 'Celular',
              modelo: 'Motorola Moto G7',
              status: 'Em reparo',
              statusColor: Colors.orange,
              data: '06/05/2026',
              icone: Icons.phone_android,
            ),
          ],
        ),
      ),
    );
  }

  Widget filtro({
    required String texto,
    required Color cor,
    required Color textoCor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Text(
        texto,
        style: TextStyle(
          color: textoCor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget dispositivoCard({
    required String nome,
    required String modelo,
    required String status,
    required Color statusColor,
    required String data,
    required IconData icone,
  }) {
    return Container(
      padding: EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Row(
            children: [

              Icon(
                icone,
                size: 45,
                color: Colors.black54,
              ),

              SizedBox(width: 15),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    nome,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    modelo,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Column(
            children: [

              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),

                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 10),

              Text(
                data,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}