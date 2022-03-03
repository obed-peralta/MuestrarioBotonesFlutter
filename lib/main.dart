import 'package:flutter/material.dart';

void main() {
  runApp(MuestrarioBotonesApp());
}

class MuestrarioBotonesApp extends StatelessWidget {
  const MuestrarioBotonesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Muestrario de botones'),
        ),
        body: GridView.count(
          childAspectRatio: 4 / 3,
          crossAxisCount: 2,
          children: [
            Muestra(
              child: RaisedButton(
                onPressed: () {
                  print('Presionado');
                },
                child: Text('Presioname'),
              ),
              text: 'RaisedButton',
            ),
            Muestra(
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print('Presionado');
                },
                child: Text('Presioname'),
              ),
              text: 'RaisedButton con color de fondo y texto',
            ),
            Muestra(
              child: RaisedButton(
                color: Colors.blue,
                onPressed: null,
                child: Text('Presioname'),
              ),
              text: 'RaisedButton desactivado',
            ),
            Muestra(
                child:
                    FlatButton(onPressed: () {}, child: Text('Presiona aquí')),
                text: 'FlatButton'),
            Muestra(
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Presiona aquí'),
                  color: Colors.red,
                  textColor: Colors.white,
                ),
                text: 'FlatButton con color'),
            Muestra(
                child: OutlineButton(
                  onPressed: () {},
                  child: Text('Presiona aquí'),
                ),
                text: 'OutlineButton'),
            Muestra(
                child: OutlineButton(
                  onPressed: () {},
                  child: Text('Presiona aquí'),
                  shape: StadiumBorder(),
                ),
                text: 'OutlineButton con StadiumBorder'),
            Muestra(
                child: OutlineButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle),
                  label: Text("Add circle"),
                  shape: StadiumBorder(),
                ),
                text: 'OutlineButton con icono y con StadiumBorder'),
            Muestra(
                child: OutlineButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle),
                  label: Text("Add circle"),
                  shape: StadiumBorder(),
                  highlightColor: Colors.green[100],
                ),
                text:
                    'OutlineButton con icono, con StadiumBorder y highlight color'),
            Muestra(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.panorama),
                ),
                text: 'IconButton'),
            Muestra(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.panorama),
                  tooltip: 'Esto es un IconButton con tooltip',
                ),
                text: 'IconButton con tooltip'),
            Muestra(child: BackButton(), text: 'BackButton'),
            Muestra(child: CloseButton(), text: 'CloseButton'),
            Muestra(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.query_builder),
                ),
                text: 'FloatingActionButton'),
          ],
        ),
      ),
    );
  }
}

class Muestra extends StatelessWidget {
  final Widget child;
  final String text;

  const Muestra({Key? key, required this.child, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              this.child,
              SizedBox(
                height: 10,
              ),
              Text(
                this.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
