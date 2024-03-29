import 'package:flutter/material.dart';
import 'package:shop_itens_desafio_05_10_2019/app/pages/home/component/stars_rate/stars_rate_widget.dart';
import 'package:shop_itens_desafio_05_10_2019/app/pages/home/models/product_model.dart';

class CardGoodRateWidget extends StatelessWidget {
  final ProductModel productModel;

  CardGoodRateWidget(this.productModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: 10),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color:Color(0xffFAFAFA),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[200],
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                  //  BoxShadow(
                  //   color: Colors.blue[200],
                  //   blurRadius: 12,
                  //   offset: Offset(0, 5),
                  // ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    productModel.name ?? "",
                    style: TextStyle(color: Color(0xff9EB9E6)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        productModel?.rate?.toString() ?? "",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text.rich(
                        TextSpan(
                            text: "Bought ",
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                  text:
                                      " ${productModel?.bougth?.toString() ?? '0'} ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                              TextSpan(text: " times for a profit of "),
                            ]),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xff5CB863),
                        ),
                        child: Text(
                          "\$ ${productModel.getFormatedPrice()}",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 40,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue[100],
                      blurRadius: 10,
                      offset: Offset(0, 8),
                    ),
                  ]),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: MediaQuery.of(context).size.width <
                        MediaQuery.of(context).size.height
                    ? MediaQuery.of(context).size.width / 4 / 2
                    : MediaQuery.of(context).size.height / 4 / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    "${productModel.image}",
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: -18,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      blurRadius:12,
                      offset: Offset(0, 8),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Colors.green,
                  gradient: LinearGradient(colors: [
                    Color(0xff8BD8EC),
                    Color(0xff86E9CC),
                    Color(0xff7AFDB7)
                  ])),
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Color(0xff9E24B3),
                    child: Text(
                      "${productModel.lastRate.getReducedName()}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("${productModel.lastRate.name} "),
                          StarsRateWidget(rate: productModel.lastRate.rate)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * .6,
                            child: Text(
                              "${productModel.lastRate.rateDescription} ",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
