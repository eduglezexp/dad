import 'package:flutter/material.dart';

void main() {
  runApp(const NavigatorBasicoApp());
}

class NavigatorBasicoApp extends StatelessWidget {
  const NavigatorBasicoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InicioPage(),
      routes: {
        '/info': (_) => InfoPage(),
        '/contacto': (_) => ContactoPage(),
      },
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/info');
              },
              child: const Text('Ir a Info'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contacto');
              },
              child: const Text('Ir a Contacto'),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Crea InfoPage (StatelessWidget)
// - Scaffold con AppBar "Info"
// - Un texto con información
// - Botón "Volver" que haga Navigator.pop
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Info')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Esta es la página de información.'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Crea ContactoPage (StatelessWidget)
// - Scaffold con AppBar "Contacto"
// - Un texto con email/teléfono ficticio
// - Botón "Volver" que haga Navigator.pop
class ContactoPage extends StatelessWidget {
  const ContactoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacto')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Email: contacto@ejemplo.com'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}