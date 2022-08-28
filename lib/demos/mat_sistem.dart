import 'package:flutter/material.dart';

import '../product/matsitem_text_logo.dart';

class _ProjectPadding {
  static double textFieldPadding = 5;
  static double normalPadding = 8;
  static double normalplusPadding = 10;
  static double normal2xPadding = 16;
  static double normal2xplusPadding = 20;
}

class LogoPath {
  final String matSistemLogo = "assets/png/stack-logo-white.png";
}

class MatSistemLogInPage extends StatelessWidget {
  const MatSistemLogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: _ProjectPadding.normal2xPadding,
            right: _ProjectPadding.normal2xPadding,
            top: _ProjectPadding.normalPadding,
            bottom: _ProjectPadding.normalPadding,
          ),
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: MatSistemTextLogo(
                        matSistemLogo: LogoPath().matSistemLogo,
                        containerHeight: 40,
                        containerWidth: 40,
                      )),
                  Expanded(flex: 2, child: HosgeldinizText()),
                  Expanded(
                      flex: 6,
                      child: Column(children: [
                        LogInTextFields(),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.all(
                              _ProjectPadding.normal2xplusPadding),
                          child: LogInButton(
                            buttonText: 'Giriş Yap',
                            onPressed: () {
                              print("Giriş Yapıldı");
                            },
                          ),
                        )
                      ])),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LogInButton extends StatelessWidget {
  LogInButton({Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);
  final String buttonText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(Icons.login),
          label: Padding(
            padding: EdgeInsets.all(_ProjectPadding.normalPadding),
            child: Text(
              buttonText,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}

class LogInTextFields extends StatelessWidget {
  const LogInTextFields({Key? key}) : super(key: key);
  final String _userName = "Kullanıcı Adı";
  final String _password = "Şifre";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.people),
              labelText: _userName,
            ),
          ),
        ),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.key,
                color: Colors.blue,
              ),
              labelText: _password,
            ),
          ),
        ),
      ],
    );
  }
}

class HosgeldinizText extends StatelessWidget {
  const HosgeldinizText({Key? key}) : super(key: key);
  final String _welcome = "Mat Sisteme Hoş Geldiniz";
  final String _description = "Lütfen Giriş İçin Bilgilerinizi Giriniz.";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            _welcome,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.blueGrey[900],
                  fontSize: 25,
                ),
          ),
          subtitle: Text(
            _description,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.blueGrey[900]),
          ),
        ),
      ],
    );
  }
}
