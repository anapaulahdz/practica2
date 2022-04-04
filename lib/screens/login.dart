import 'package:flutter/material.dart';
import 'dashboard.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isValidating = false;
  @override
  Widget build(BuildContext context) {
    var txtUserController = TextEditingController();
    var txtPasswordController = TextEditingController();
    final txtUser = TextFormField(
        controller: txtUserController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Introduce el Usuario',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))));
    final txtPassword = TextFormField(
        controller: txtPasswordController,
        keyboardType: TextInputType.text,
        obscureText: true, //ocultar el texto passwd
        decoration: InputDecoration(
            hintText: 'Introduce el Password',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))));
    final btnEntrar = ElevatedButton(
        onPressed: () {
          //print(txtUserController.text);
          isValidating = !isValidating;
          setState(() {});
          Future.delayed(new Duration(seconds: 4), () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          });
        },
        child: Text('Entrar'));
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/movil.png"), fit: BoxFit.fill)),
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10), //margen
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                txtUser,
                SizedBox(
                  height: 5,
                ),
                txtPassword,
                SizedBox(
                  height: 5,
                ),
                btnEntrar
              ],
            ),
          ),
        ),
        Positioned(
          child: Image.asset(
            'assets/logo.png',
            width: 100,
          ),
          bottom: 200,
        ),
        Positioned(
          child: isValidating ? CircularProgressIndicator() : Container(),
          bottom: 350,
        )
      ],
    );
  }
}
