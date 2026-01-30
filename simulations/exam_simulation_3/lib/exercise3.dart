import 'package:flutter/material.dart';

void main() {
  runApp(const BombillaApp());
}

class BombillaApp extends StatelessWidget {
  const BombillaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BombillaPage(),
    );
  }
}

class BombillaPage extends StatefulWidget {
  const BombillaPage({super.key});

  @override
  State createState() => _BombillaPageState();
}

class _BombillaPageState extends State {
  bool encendida = false;

  void toggle() {
    setState(() {
      encendida = !encendida;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animación implícita: Bombilla')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 18),
            AnimatedOpacity(
              opacity: encendida ? 1.0 : 0.25,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: AnimatedScale(
                scale: encendida ? 2.0 : 1.0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                child: const Text(
                  '💡',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Text(
              encendida ? 'ENCENDIDA' : 'APAGADA',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggle,
        child: const Icon(Icons.power_settings_new),
      ),
    );
  }
}