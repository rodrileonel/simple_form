import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children:[
          CajaName(),
          CajaEmail(),
          CajaPassword(),
          CajaFecha(),
        ]
      )
    );
  }
}

class CajaFecha extends StatefulWidget {
  @override
  _CajaFechaState createState() => _CajaFechaState();
}
class _CajaFechaState extends State<CajaFecha> {
  
  String _fecha = '';
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.email_outlined, color: Colors.green,),
        prefixIcon: Icon(Icons.account_circle, color: Colors.green,),
        hintText: 'Fecha de Nacimiento',
        labelText: 'Fecha de Nacimiento',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      onChanged: (valor){
        setState(() {});
        _selectDate();
      },
    );
  }

  void _selectDate(){

  }

}

class CajaPassword extends StatefulWidget {

  @override
  _CajaPasswordState createState() => _CajaPasswordState();
}
class _CajaPasswordState extends State<CajaPassword> {

  String _pw ='';

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.accessibility, color: Colors.green,),
        prefixIcon: Icon(Icons.account_circle, color: Colors.green,),
        hintText: 'Password',
        labelText: 'Password',
        counter: Text('${_pw.length}'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      onChanged: (valor){
        setState(() {});
        _pw = valor;
      },
    );
  }
}

class CajaEmail extends StatefulWidget {
  @override
  _CajaEmailState createState() => _CajaEmailState();
}
class _CajaEmailState extends State<CajaEmail> {

  String email = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.accessibility, color: Colors.green,),
        prefixIcon: Icon(Icons.account_circle, color: Colors.green,),
        hintText: 'Email',
        labelText: 'Email',
        helperText: 'Ingresa tu email',
        counter: Text('${email.length}'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      onChanged: (valor){
        setState(() {});
        email = valor;
      },
    );
  }
}

class CajaName extends StatefulWidget {

  @override
  _CajaNameState createState() => _CajaNameState();
}
class _CajaNameState extends State<CajaName> {

  String nombre = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.accessibility, color: Colors.green,),
        prefixIcon: Icon(Icons.account_circle, color: Colors.green,),
        hintText: 'Nombre',
        labelText: 'Nombre',
        helperText: 'Ingresa tu nombre',
        counter: Text('${nombre.length}'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      onChanged: (valor){
        setState(() {});
        nombre = valor;
      },
    );
  }
}