import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'RootMoney',
    home: HomeScreenPage(),
  )); // MaterialApp
}

class HomeScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Image.asset(
          'assets/background.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        SafeArea(
            child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 350, left: 40),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  width: 50,
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, left: 18),
                  child: Text(
                    'RootMoney',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]))
      ]),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                  child: ButtonTheme(
                      minWidth: 170.0,
                      height: 45.0,
                      child: RaisedButton(
                        color: Colors.white,
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          )
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.black)),
                        highlightColor: Colors.black,
                      ))),
            ),
            Expanded(
              child: Center(
                  child: ButtonTheme(
                      minWidth: 170.0,
                      height: 45.0,
                      child: RaisedButton(
                        color: Colors.black,
                        child: Text(
                          'CADASTRAR',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage())),
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.black)),
                        highlightColor: Colors.white,
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 90,
          left: 40,
          right: 40,
        ),
        color: Colors.transparent,
        child: ListView(
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Malgun Gothic',
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                hintText: 'rootmoney@gmail.com',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                hintText: '*********',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () {},
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.black,
                child: Text(
                  "ENTRAR",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
              alignment: Alignment.centerLeft,
              child: FlatButton(
                child: Text(
                  "Esqueci a senha",
                  style: TextStyle(
                    color: Colors.black45,
                    fontFamily: 'MalgunGothic',
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecoverPasswordPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecoverPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 100,
          left: 40,
          right: 40,
        ),
        color: Colors.transparent,
        child: ListView(
          children: <Widget>[
            Text(
              "Recuperar senha",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Malgun Gothic',
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                hintText: 'rootmoney@gmail.com',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RedefinePasswordPage()));
                },
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.black,
                child: Text(
                  "ENVIAR",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
              alignment: Alignment.center,
              child: FlatButton(
                  child: Text(
                    "Cancelar",
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'MalgunGothic',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class RedefinePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 80,
          left: 40,
          right: 40,
        ),
        color: Colors.transparent,
        child: ListView(
          children: <Widget>[
            Text(
              "Redefinir senha",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Malgun Gothic',
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                hintText: 'rootmoney@gmail.com',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                hintText: '*********',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirmar Senha",
                hintText: '*********',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.black,
                child: Text(
                  "CONFIRMAR",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
              alignment: Alignment.center,
              child: FlatButton(
                  child: Text(
                    "Cancelar",
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'MalgunGothic',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 80,
          left: 40,
          right: 40,
        ),
        color: Colors.transparent,
        child: ListView(
          children: <Widget>[
            Text(
              "Cadastrar",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Malgun Gothic',
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                hintText: 'Jane',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "SobreNome",
                hintText: 'Austen',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Telefone",
                hintText: '+55 (85) 95374-9216',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwoRegisterPage()));
                },
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.black,
                child: Text(
                  "PROXIMO",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
              alignment: Alignment.center,
              child: FlatButton(
                  child: Text(
                    "Cancelar",
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'MalgunGothic',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreenPage()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class TwoRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 80,
          left: 40,
          right: 40,
        ),
        color: Colors.transparent,
        child: ListView(
          children: <Widget>[
            Text(
              "Cadastrar",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Malgun Gothic',
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                hintText: 'rootmoney@gmail.com',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                hintText: '*********',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirmar Senha",
                hintText: '*********',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Malgun Gothic',
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.black,
                child: Text(
                  "CADASTRAR",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
              alignment: Alignment.center,
              child: FlatButton(
                  child: Text(
                    "Cancelar",
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'MalgunGothic',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreenPage()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
