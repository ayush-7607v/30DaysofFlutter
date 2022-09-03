import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1_vs/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item itema;



  const ItemWidget({Key? key, required this.itema})
      : assert(itema != null), super(key: key);
        // assert used for debugging
       
      

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print(" $itema.price paisa ka samaan hai ghar jayega isme");
      },
      leading: Image.network(itema.image),
      title: Text(itema.name),
      subtitle: Text(itema.desc),
      // hoverColor: Colors.blue,
      // focusColor: Colors.amber,
      //  not working

      //  trailing: Text(itema.price.toString()), this also used but dollar camt given
      // /$ used to give variable

      trailing: Text(
        // "\$[${itema.price}]",  this will show blue coloured "$[999]"
        "\$${itema.price}",
        textScaleFactor: 1.3,
        style: const TextStyle(
          color: Color.fromARGB(255, 3, 156, 176),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
