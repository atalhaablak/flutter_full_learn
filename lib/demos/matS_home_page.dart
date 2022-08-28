import 'package:flutter/material.dart';

import '../product/matsitem_text_logo.dart';
import 'mat_sistem.dart';

class MatHomePage extends StatelessWidget {
  const MatHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SafeArea(
        child: Drawer(
          child: ListTile(
            leading: Icon(Icons.create_outlined),
          ),
        ),
      ),
      appBar: _appbar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: _customCardList(),
      ),
    );
  }

  Column _customCardList() {
    return Column(
      children: [
        CustomCard(
            cardIcon: Icon(Icons.business, color: _IconColors.iconColors),
            cardText: "Cariler",
            circleAvatarColor: Colors.blue),
        CustomCard(
            cardIcon: Icon(Icons.person_add, color: _IconColors.iconColors),
            cardText: "Kullanıcı Oluştur",
            circleAvatarColor: Colors.grey),
        CustomCard(
          cardIcon: Icon(Icons.receipt, color: _IconColors.iconColors),
          cardText: "Satış Oluştur",
          circleAvatarColor: Colors.green,
        ),
        CustomCard(
            cardIcon: Icon(Icons.monetization_on, color: _IconColors.iconColors),
            cardText: "Satın Alma (Stok Girişi)",
            circleAvatarColor: Color.fromARGB(190, 19, 163, 182)),
        CustomCard(cardIcon: Icon(Icons.shop, color: _IconColors.iconColors), cardText: "Stoklar"),
      ],
    );
  }

  AppBar _appbar() {
    return AppBar(
      centerTitle: true,
      leadingWidth: 25,
      title: Container(
        child: MatSistemTextLogo(
          matSistemLogo: LogoPath().matSistemLogo,
          textColor: Colors.white,
          imageColor: Colors.white,
          containerHeight: 30,
          containerWidth: 30,
        ),
      ),
      elevation: 1,
      backgroundColor: Colors.blue,
      actions: [],
    );
  }
}

class _IconColors {
  static Color iconColors = Colors.white;
}

class CustomCard extends StatelessWidget {
  CustomCard({Key? key, required this.cardIcon, required this.cardText, this.circleAvatarColor = Colors.blue})
      : super(key: key);
  final Icon cardIcon;
  final String cardText;
  final Color circleAvatarColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.002),
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.10,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    child: cardIcon,
                    backgroundColor: circleAvatarColor,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 4,
                  child: Text(
                    cardText,
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.blueGrey[900]),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_right,
                          color: Colors.black,
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
