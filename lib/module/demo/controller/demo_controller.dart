import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/demo_view.dart';

class DemoController extends State<DemoView> implements MvcController {
  static late DemoController instance;
  late DemoView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
