import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MarcadorApp());
}

class MarcadorApp extends StatelessWidget {
  const MarcadorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MarcadorPage(),
    );
  }
}

class MarcadorPage extends StatefulWidget {
  const MarcadorPage({super.key});

  @override
  State<StatefulWidget> createState() => _MarcadorPageState();
}

class _MarcadorPageState extends State {
  int puntosEquipoA = 0;
  int puntosEquipoB = 0;
  String mensaje = '';

  void incrementarA() {
    setState(() {
      puntosEquipoA++;
      if (puntosEquipoA > puntosEquipoB) {
        mensaje = 'El Equipo A está ganando';
      } else if (puntosEquipoA == puntosEquipoB) {
        mensaje = 'El marcador está empatado';
      }
    });
  }

  void incrementarB() {
    setState(() {
      puntosEquipoB++;
      if (puntosEquipoB > puntosEquipoA) {
        mensaje = 'El Equipo B está ganando';
      } else if (puntosEquipoA == puntosEquipoB) {
        mensaje = 'El marcador está empatado';
      }
    });
  }

  void reiniciar() {
    setState(() {
      puntosEquipoA = 0;
      puntosEquipoB = 0;
      mensaje = 'Empate';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Marcador estático')),
      body: Center(
        child: Column(
          children: [
            Text('Equipo A: $puntosEquipoA'),
            Text('Equipo B: $puntosEquipoB'),
            Text(mensaje),
            ElevatedButton(onPressed: incrementarA, child: Text('+1 A')),
            ElevatedButton(onPressed: incrementarB, child: Text('+1 B')),
            ElevatedButton(onPressed: reiniciar, child: Text('Reiniciar')),
          ],
        ),
      ),
    );
  }
}
