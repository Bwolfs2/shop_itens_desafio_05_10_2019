import 'package:flutter/material.dart';

import 'component/add_buttom/add_buttom_widget.dart';
import 'component/card_bad_rate/card_bad_rate_widget.dart';
import 'component/card_good_rate/card_good_rate_widget.dart';
import 'models/product_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        title: Text(
          "Shop Items (3)",
          style: TextStyle(fontSize: 18),
        ),
        elevation: 0,
        backgroundColor: Color(0xffFAFAFA),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            )),
      ),
      body: ListView.builder(
        itemCount:getProducts.length +1 ,
        itemBuilder: (_, index) {
          if (index == 0) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AddButtomWidget(),
              ],
            );
          }

          if (getProducts[index-1].rate > 4) {
            return CardGoodRateWidget(getProducts[index-1]);
          }

          return CardBadRateWidget(getProducts[index-1]);
        },
      ),
    );
  }
}
