# EcoCircuito

Aplicativo mobile desenvolvido em **Dart** com o framework **Flutter**, voltado à sustentabilidade e ao incentivo de práticas ecológicas no dia a dia do usuário.

## 📋 Descrição

O EcoCircuito é um aplicativo que busca conectar hábitos sustentáveis à rotina do usuário, permitindo o registro de ações ecológicas, acompanhamento de progresso e, futuramente, integração com pontos de coleta, reciclagem ou trocas sustentáveis. O projeto tem como foco a aplicação prática de desenvolvimento mobile multiplataforma com Flutter.

## ✨ Funcionalidades

### Funcionalidades Principais
- [ ] Cadastro e login de usuário
- [ ] Registro de ações sustentáveis (ex: reciclagem, uso de transporte alternativo)
- [ ] Painel/dashboard com histórico de ações realizadas
- [ ] Sistema de metas e progresso (ex: pontuação, conquistas)
- [ ] Mapa de pontos de coleta/reciclagem próximos *(se aplicável)*
- [ ] Notificações e lembretes de hábitos sustentáveis

### Funcionalidades Complementares
- [ ] Perfil do usuário com estatísticas pessoais
- [ ] Compartilhamento de conquistas em redes sociais
- [ ] Modo escuro (dark mode)
- [ ] Suporte offline com sincronização posterior

## 🛠️ Tecnologias Utilizadas

- **Dart**
- **Flutter**
- **Firebase** *(Auth, Firestore, Storage — se aplicável)*
- **Provider / Riverpod / Bloc** *(defina o gerenciador de estado utilizado)*
- **Google Maps API** *(se houver funcionalidade de mapa)*

## 📁 Estrutura do Projeto (sugestão)

```
ecocircuito/
├── lib/
│   ├── main.dart
│   ├── models/
│   │   ├── usuario.dart
│   │   └── acao_sustentavel.dart
│   ├── screens/
│   │   ├── login/
│   │   ├── home/
│   │   ├── perfil/
│   │   └── mapa/
│   ├── widgets/
│   ├── services/
│   │   ├── auth_service.dart
│   │   └── firestore_service.dart
│   └── utils/
├── assets/
│   ├── images/
│   └── icons/
├── pubspec.yaml
└── README.md
```

## ⚙️ Pré-requisitos

- **Flutter SDK** instalado ([guia oficial](https://docs.flutter.dev/get-started/install))
- **Dart SDK** (incluído no Flutter)
- Emulador Android/iOS configurado ou dispositivo físico
- Conta no **Firebase** *(caso o projeto utilize)*

## 🚀 Instalação

```bash
# Clone o repositório
git clone https://github.com/seu-usuario/ecocircuito.git

# Acesse a pasta do projeto
cd ecocircuito

# Instale as dependências
flutter pub get

# Execute o aplicativo
flutter run
```

## ▶️ Como Usar

1. Após instalar as dependências, conecte um emulador ou dispositivo físico
2. Execute `flutter run` para iniciar o aplicativo
3. Crie uma conta ou faça login
4. Registre suas ações sustentáveis e acompanhe seu progresso no painel

## 🗺️ Roadmap

- [ ] Implementar autenticação completa (Firebase Auth)
- [ ] Integrar mapa de pontos de coleta
- [ ] Adicionar sistema de gamificação (conquistas/badges)
- [ ] Publicar versão beta na Play Store
- [ ] Adicionar suporte a múltiplos idiomas

## 🤝 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma *issue* ou enviar um *pull request*.

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 👤 Autor

Desenvolvido por **Beatriz Oliveira**
