import 'package:flutter/widgets.dart';

mixin HomePageMixin<T extends StatefulWidget>
    on State<T>, TickerProviderStateMixin<T> {
  ScrollController scrollController;

  bool get isBottom => scrollController?.positions?.isEmpty
      ? false
      : scrollController.offset > 0;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }
}
