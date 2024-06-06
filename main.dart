import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  void _showMaterialAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Mostrar Alerta de Material"),
          content: Text("esta es una alerta de material"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }


  void _showCupertinoAlertDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Mostrar Alerta de Cupertino"),
          content: Text("Esta es una alerta de cupertino."),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }


  void _showMaterialAlertWithOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Opciones de Alerta de Material"),
          content: Text("ejemplo de opcion de alerta de material"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Opcion 1"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Opcion 2"),
            ),
          ],
        );
      },
    );
  }


  void _showCupertinoAlertWithOptions(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Opciones de Alerta de Cupertino"),
          content: Text("ejemplo de opcion de alerta de cupertino"),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Opcion 1"),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Opcion 2"),
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertas"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showMaterialAlertDialog(context);
              },
              child: Text("Alerta de Material"),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              onPressed: () {
                _showCupertinoAlertDialog(context);
              },
              child: Text("Alerta de Cupernico"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showMaterialAlertWithOptions(context);
              },
              child: Text("Opciones de Alerta de Material"),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              onPressed: () {
                _showCupertinoAlertWithOptions(context);
              },
              child: Text("Opciones de Alerta de Cupertino"),
            ),
          ],
        ),
      ),
    );
  }
}


