import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: VidentVirtualView()));
}

class VidentVirtualView extends StatelessWidget {
  const VidentVirtualView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Vidente Virtual',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.brown[800],
      ),
      backgroundColor: Color(0xff332B25),
      body: VidenteVirtualPage(),
    );
  }
}

class VidenteVirtualPage extends StatefulWidget {
  const VidenteVirtualPage({super.key});

  @override
  State<VidenteVirtualPage> createState() =>
      _VidenteVirtualPageState();
}

class _VidenteVirtualPageState
    extends State<VidenteVirtualPage> {
  int numeroDaImagem = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset(
          'imagens/vidente$numeroDaImagem.png',
        ),
        onPressed: () {
          setState(() {
            numeroDaImagem = Random().nextInt(6) + 1;
            print(numeroDaImagem);
          });
        },
      ),
    );
  }
}
