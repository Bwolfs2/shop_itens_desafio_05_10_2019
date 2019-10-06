import 'package:flutter/material.dart';

class AddButtomWidget extends StatelessWidget {
  final bool isBottom;
  AddButtomWidget(this.isBottom);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: RaisedButton(
        elevation: 10,
        color: Colors.black,
        splashColor: Theme.of(context).primaryColor,
        shape: isBottom
            ? CircleBorder()
            : RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all( isBottom ? 15 : 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
              Text(
                isBottom ? "" : "ADD A NEW ITEM",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
