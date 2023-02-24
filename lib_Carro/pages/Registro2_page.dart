import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class CarroPage extends StatelessWidget {
  static String id = "Carro_page";
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
            width: 150,
            filterQuality: FilterQuality.high,
          ),
          SizedBox(
            height: 35.0,
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
                        horizontal: 48.0,
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
                        horizontal: 30.0,
                        vertical: 10,
                      ),
                    ),
                  ),
                  child: Text(
                    'Iniciar Sesion',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/log');
                  })),
          SizedBox(
            height: 20.0,
          ),
          _textFieldMarca(),
          SizedBox(
            height: 5.0,
          ),
          _textFieldModelo(),
          SizedBox(
            height: 5.0,
          ),
          _textFieldYear(),
          SizedBox(
            height: 5.0,
          ),
          _textFieldPlaca(),
          SizedBox(
            height: 5.0,
          ),
          _buttonLogin(context),
        ],
      )),
    )));
  }

  Widget _textFieldMarca() {
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
            prefixIcon: Icon(Icons.directions_car),
            labelText: "Marca",
            hintText: "Ejemplo: Mazda"),
      ),
    );
  }

  Widget _textFieldYear() {
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
            prefixIcon: Icon(Icons.calendar_month_outlined),
            labelText: "Año del vehiculo ",
            hintText: 'YYYY'),
      ),
    );
  }

  Widget _textFieldModelo() {
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
              prefixIcon: Icon(Icons.directions_car),
              labelText: "Modelo",
              hintText: 'Ejemplo: Sedan'),
        ));
  }

  Widget _textFieldPlaca() {
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
            prefixIcon: Icon(Icons.directions_car),
            labelText: "Placa",
            hintText: "Ejemplo: AAA-111-ZZZ"),
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
            horizontal: 65.0,
            vertical: 10,
          ),
        ),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed('/home');
      },
      child: Text(
        'Entrar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
