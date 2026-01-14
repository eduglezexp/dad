import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ErrorHelpExample(),
    );
  }
}

class ErrorHelpExample extends StatefulWidget {
  const ErrorHelpExample({super.key});

  @override
  State createState() => _ErrorHelpExampleState();
}

class _ErrorHelpExampleState extends State {
  bool isNumber = false;

  void checkText(String text) {
    setState(() {
      isNumber = int.tryParse(text) != null;
    });
  }

  void sendData() {
    setState(() {
      isNumber = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Heurística 9 – Ayuda con errores')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            TextField(
              onChanged: checkText,
              decoration: InputDecoration(
                label: Text("Introduce un numero entero"),
                errorText: isNumber ? null: "Error: Debes introducir un entero",
              ),
            ),
            ElevatedButton(
              onPressed: sendData, 
              child: Text("Comprobar")
            )
          ],
        ),
      ),
    );
  }
}