import 'package:flutter/material.dart';
import 'package:shop_itens_desafio_05_10_2019/app/pages/home/component/stars_rate/stars_rate_widget.dart';
import 'package:shop_itens_desafio_05_10_2019/app/pages/home/models/product_model.dart';

class CardBadRateWidget extends StatelessWidget {
  final ProductModel productModel;

  CardBadRateWidget(this.productModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: 10),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(10),
              shadowColor: Colors.blue.withOpacity(.8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffC54B5A),
                      Color(0xffB1325F),
                      Color(0xff7E2464)
                    ],
                  ),
                ),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      productModel.name ?? "",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          productModel?.rate?.toString() ?? "",
                          style: TextStyle(
                              color: Color(0xffFFB324),
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xffFFB324),
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
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                    text:  " ${productModel?.bougth?.toString() ?? '0'} ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
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
          ),
          Positioned(
            right: 40,
            child: Material(
              elevation: 10,
              shape: CircleBorder(),
              shadowColor: Colors.blue.withOpacity(.5),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: MediaQuery.of(context).size.width / 4 / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                     "${productModel.image}",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: -18,
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: Container(
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
                           StarsRateWidget(rate: productModel.rate)
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
            ),
          )
        ],
      ),
    );
  }
}
