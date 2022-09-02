import 'package:flutter/material.dart';
import 'package:flutter_application_1_vs/widgets/drawer.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = 1771;

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),

      body: Center(
        child: Container(child: Text("hello $day Welcome ji")),
      ),

      // body: Center(
      //   child: Container(
      //     child: Text("Lauda $day Welcomehj"),
      //   ),
      // ),

      //  """Constraints go down. Sizes go up. Parent sets position""".
      // the sizes are decided from above conatiner etc. inside conatainer

      //  Text(context.runtimeType.tostring()), this will print " stateless elemnt " bcoz comtext is element
      // inour tree it decide where each element is thus buid context is called
      drawer: MyDrawer(),
    );
  }
}
