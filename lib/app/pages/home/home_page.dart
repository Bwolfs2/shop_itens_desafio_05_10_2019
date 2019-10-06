import 'package:flutter/material.dart';

import 'component/add_buttom/add_buttom_widget.dart';
import 'component/card_bad_rate/card_bad_rate_widget.dart';
import 'component/card_good_rate/card_good_rate_widget.dart';
import 'component/home_page_mixin.dart';
import 'models/product_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, HomePageMixin {
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
      body: Stack(
        children: <Widget>[
          ListView.builder(
            padding: EdgeInsets.only(top: 60),
            controller: scrollController,
            itemCount: getProducts.length,
            itemBuilder: (_, index) {
              if (getProducts[index].rate > 4) {
                return CardGoodRateWidget(getProducts[index]);
              }

              return CardBadRateWidget(getProducts[index]);
            },
          ),
          buildActionButtom()
        ],
      ),
    );
  }

  buildActionButtom() {
    return AnimatedBuilder(
      animation: scrollController,
      builder: (context, child) {
        return AnimatedPositioned(
          curve: Curves.ease,
          left:  0,
          right: isBottom ? 25 : 0,
          top: isBottom ? MediaQuery.of(context).size.height - 150 : 15,
          // bottom: 15,
          child: AnimatedAlign(
            duration: Duration(milliseconds: 300),
            alignment: isBottom ? Alignment.centerRight : Alignment.center,
            child: 
               AddButtomWidget(isBottom),
          ),
          duration: Duration(milliseconds: 300),
        );
      },
    );
  }
}
