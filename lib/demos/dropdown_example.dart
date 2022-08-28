import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({Key? key}) : super(key: key);

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  String kul_secimi = "";
  String img_name = "";
  String img_path = "assets/png/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Aşağıdaki Canlılardan Birini seçiniz."),
            DropdownButton(
                items: [
                  DropdownMenuItem(
                    child: Text("Kedi"),
                    value: "book.png",
                  ),
                  DropdownMenuItem(
                    child: Text("Kopek"),
                    value: "courses_image.png",
                  ),
                  DropdownMenuItem(
                    child: Text("Yılan"),
                    value: "image_collection.png",
                  ),
                  DropdownMenuItem(
                    child: Text("Balık"),
                    value: "book.png",
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    kul_secimi = value.toString();
                    img_name = kul_secimi;
                  });
                }),
            Text(kul_secimi),
            Image(image: AssetImage(img_path + img_name)),
          ],
        ),
      ),
    );
  }
}
