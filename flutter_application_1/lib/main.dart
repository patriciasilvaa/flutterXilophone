import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Xilophone'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.purple, numero: 1),
                  criarBotaoXilofone(cor: Colors.black, numero: 2),
                  criarBotaoXilofone(cor: Colors.purple, numero: 3),
                  criarBotaoXilofone(cor: Colors.black, numero: 4),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.black, numero: 1),
                  criarBotaoXilofone(cor: Colors.purple, numero: 2),
                  criarBotaoXilofone(cor: Colors.black, numero: 3),
                  criarBotaoXilofone(cor: Colors.purple, numero: 4),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.purple, numero: 1),
                  criarBotaoXilofone(cor: Colors.black, numero: 2),
                  criarBotaoXilofone(cor: Colors.purple, numero: 3),
                  criarBotaoXilofone(cor: Colors.black, numero: 4),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.black, numero: 1),
                  criarBotaoXilofone(cor: Colors.purple, numero: 2),
                  criarBotaoXilofone(cor: Colors.black, numero: 3),
                  criarBotaoXilofone(cor: Colors.purple, numero: 4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget criarBotaoXilofone({Color? cor, int? numero}) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.black38,
        onTap: () {
          var player = AudioCache();
          player.play('sounds/note$numero.wav');
        },
        child: Ink(color: cor),
      ),
    );
  }
}
