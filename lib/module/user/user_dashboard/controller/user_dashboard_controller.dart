import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/user_dashboard_view.dart';

class UserDashboardController extends State<UserDashboardView> implements MvcController {
  static late UserDashboardController instance;
  late UserDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}