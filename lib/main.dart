// Unica tela que terá acesso a todas as outras, por isso é a tela inicial do app
import 'package:ecocircuito/view/home.dart';
import 'package:ecocircuito/view/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Login()
    ),
  );
}
