import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1_vs/models/catalog.dart';
import 'package:flutter_application_1_vs/widgets/drawer.dart';
import 'package:flutter_application_1_vs/widgets/item_widget.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() =>
   _homepageState();
}

class _homepageState extends State<homepage> {

@override
  void initState() {
    super.initState();
    loadKaroData();
  }

loadKaroData() async{
     var catalogJsonCome= await rootBundle.loadString("assets/files/catalog.json");
   print(catalogJsonCome);

   var decodedData= jsonDecode(catalogJsonCome);
    var productsData= decodedData["products"];
    print(productsData);
}

  @override
  Widget build(BuildContext context) {

    //  int day=23;
    // final dummyList = List.generate(15, (index) => CatalogModel.itema[0]);
    // this will create 15 copies of index 0 item
    // helpful to check how look after if all data added
    // itemCount: dummylist.itema.length, use this in body listview
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.itema.length,
          itemBuilder: (context, index) {
            return ItemWidget(itema: CatalogModel.itema[index]);
          },
        ),
      ),
    );

    // body: Center(
    //   child: Container(
    //     child: Text("Lauda $day Welcomehj"),
    //   ),
    // ),

    //  """Constraints go down. Sizes go up. Parent sets position""".
    // the sizes are decided from above conatiner etc. inside conatainer

    //  Text(context.runtimeType.tostring()), this will print " stateless elemnt " bcoz comtext is element
    // inour tree it decide where each element is thus buid context is called
  }
}
