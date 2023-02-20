import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';

class LoginPage2 extends StatelessWidget {
  static String id = "login_page2";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.0, 1.0),
            colors: const <Color>[
              Color(0xff0861d4),
              Color(0xff03c3f4),
            ],
            tileMode: TileMode.repeated),
      ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/Logo_Blipads_blanco.png',
            width: 180,
            filterQuality: FilterQuality.high,
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
              child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (states) => 10.0,
                    ),
                    shape: MaterialStateProperty.resolveWith(
                      (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.white)),
                    ),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) => Color(0xff0861d4)),
                    padding: MaterialStateProperty.resolveWith<EdgeInsets>(
                      (states) => EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 10,
                      ),
                    ),
                  ),
                  child: Text(
                    'Resgistro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/reg');
                  })),
          SizedBox(
            height: 25.0,
          ),
          _textFieldEmail(),
          SizedBox(
            height: 15.0,
          ),
          _textFieldPassword(),
          SizedBox(
            height: 15.0,
          ),
          _buttonLogin(context),
        ]),
      ),
    )));
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.mail_outline),
            labelText: "Email",
            hintText: 'example@example.com'),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.password_outlined),
          labelText: "Contraseña",
        ),
      ),
    );
  }

  Widget _buttonLogin(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith<double>(
            (states) => 10.0,
          ),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.white)),
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) => Color(0xff0861d4)),
          padding: MaterialStateProperty.resolveWith<EdgeInsets>(
            (states) => EdgeInsets.symmetric(
              horizontal: 55.0,
              vertical: 10,
            ),
          ),
        ),
        child: Text(
          'Entrar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/home');
        });
  }
}
