import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demostration',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'COMIDAS'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _ocultarPassword = true;
  Icon _iconoOjo = Icon(Icons.visibility_off);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    label: Text('Correo:'),
                    helperText: 'Tu dirección de correo'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                title: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: _ocultarPassword,
                  decoration: InputDecoration(
                      label: Text('Contraseña:'),
                      helperText: 'Tu contraseña de usuario'),
                ),
                trailing: IconButton(
                  icon: _iconoOjo,
                  onPressed: () {
                    setState(() {
                      _ocultarPassword = !_ocultarPassword;
                      _iconoOjo = _ocultarPassword
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility);
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
