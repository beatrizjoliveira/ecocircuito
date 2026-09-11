import 'package:flutter/material.dart';

class Cadastrar extends StatelessWidget {
  const Cadastrar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Widget Center, responsável por centralizar o conteúdo dentro do Scaffold
      appBar: AppBar (
        backgroundColor: Colors.white,
        elevation: 0, // Remove a sombra da AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0), // Adiciona um padding de 20 pixels em todos os lados
        child: Center(
           
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
      /** CABEÇALHO DE BOAS-VINDAS AO USUÁRIO, COM SUBTÍTULO NO CANTO ESQUERDO
       * E SINO DE NOTIFICAÇÃO NO CANTO DIREITO */
            children: <Widget>[
              
              Text(
                'Adicionar dispositivo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ), 
              ),
              SizedBox(height: 8), // Espaçamento entre o título e o subtítulo
              
              Text(
                'Tipo de dispositivo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),
              ),

              // FIM DO CABEÇALHO
              // Espaçamento entre o cabeçalho e o restante do conteúdo
              SizedBox(height: 10),
              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                    hint: Text('Selecione o tipo de dispositivo'),
                    items: const [],
                    onChanged: (value) {},
                ),
              ),

              SizedBox(height: 20),

              // MARCA
              Text('Marca',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Ex: Samsung',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // modelo
              Text('Modelo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Ex: Galaxy A10',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text('Estado de conservação',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              estadoCard(
                titulo:'Funcionado',
                subtitulo: 'Em perfeito estado de funcionamento',
              ),

              SizedBox(height: 10),

              estadoCard(
                titulo:'Precisa de reparo',
                subtitulo: 'Precisa de conserto',
              ),

              SizedBox(height: 10),

              estadoCard(
                titulo:'Sucata/ Irrecuperável',
                subtitulo: 'Não pode ser reparado',
              ),

              Spacer(),

              SizedBox(
                width: double. infinity,
                height: 50,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Cadastro concluído!'),
                          content: const Text('Acesse a aba "Dispositivos" para visualizar a lista de aparelhos cadastrados.'),
                          actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Fechar'),
                          ),
                        ],
                      ),
                    );
                  },

                  child: Text(
                    'Finalizar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              
            ],
          ),
        ),
      ),
      
    );
  }
}

Widget estadoCard({
  required String titulo,
  required String subtitulo,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [
          Icon(Icons.radio_button_unchecked,),

          SizedBox(width: 12),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 4,),

              Text(
                subtitulo,
                style: (TextStyle(
                  color: Colors.grey,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }