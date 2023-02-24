import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  static String id = "home_page";
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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/Logo_Blipads_blanco.png',
            width: 250,
            filterQuality: FilterQuality.high,
          ),
          SizedBox(
            height: 35.0,
          ),
          _buttonMapa(context),
          SizedBox(
            height: 25.0,
          ),
          _buttonPerfil(context),
          SizedBox(
            height: 15.0,
          ),
          _buttonRecorridos(context),
          SizedBox(
            height: 15.0,
          ),
          _buttonPublicidad(context),
        ],
      )),
    )));
  }

  Widget _buttonMapa(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
          (states) => 20.0,
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
            horizontal: 100.0,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        'Mapa',
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buttonPerfil(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
          (states) => 20.0,
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
            horizontal: 100.0,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        'Perfil',
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buttonRecorridos(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
          (states) => 20.0,
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
            horizontal: 85.0,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        'Recorido',
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buttonPublicidad(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
          (states) => 20.0,
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
            horizontal: 78.0,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        'Publicidad',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
