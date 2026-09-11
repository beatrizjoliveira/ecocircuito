import 'package:flutter/material.dart';
import 'package:ecocircuito/view/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Widget Center, responsável por centralizar o conteúdo dentro do Scaffold
      appBar: AppBar (
        title: Row(
          children: [
            Image.asset('imagens/logo.png',
              height: 100,
              ),
            ],
          ),
        backgroundColor: Colors.white,
        elevation: 0, // Remove a sombra da AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
      ),
      mainAxisAlignment: MainAxisAlignment.center,

      body: Padding(
        padding: EdgeInsets.all(20.0), // Adiciona um padding de 20 pixels em todos os lados
        child: Center(
           
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
      /** CABEÇALHO DE BOAS-VINDAS AO USUÁRIO, COM SUBTÍTULO NO CANTO ESQUERDO
       * E SINO DE NOTIFICAÇÃO NO CANTO DIREITO */
            children: <Widget>[
              
              Text(
                'Bem-vindo de volta!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ), 
              ),
              SizedBox(height: 8), // Espaçamento entre o título e o subtítulo
              
              Text(
                'Faça login para continuar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),
              ),

              // FIM DO CABEÇALHO
              // Espaçamento entre o cabeçalho e o restante do conteúdo
              SizedBox(height: 10),

              // MARCA
              Text('E-mail',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  hintText: 'seuNome@email.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // modelo
              Text('Senha',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '********',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              //Add icon de login
  
              SizedBox(height: 20),

              Text('Esqueceu a senha?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                ),
              ),

              SizedBox(height: 15),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                  ),
                ),

                Text('Ou entre com',
                style: TextStyle(
                  fontSize: 12,
                ),),
              
            ],
          ),
        ),
      ),
      
    );
  }
}
