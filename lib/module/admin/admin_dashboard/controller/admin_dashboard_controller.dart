import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AdminDashboardController extends State<AdminDashboardView>
    implements MvcController {
  static late AdminDashboardController instance;
  late AdminDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  generate() async {
    showLoading();
    await Dio().delete(
      "https://capekngoding.com/cahya/api/sales/action/delete-all",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    for (var i = 2018; i <= 2023; i++) {
      var response = await Dio().post(
        "https://capekngoding.com/cahya/api/sales",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "year": i,
          "sales": Random().nextInt(100),
        },
      );
    }
    hideLoading();
    getSales();
  }

  List<Map<dynamic, dynamic>> sales = [];
  getSales() async {
    var response = await Dio().get(
      "https://capekngoding.com/cahya/api/sales",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    sales = List<Map<dynamic, dynamic>>.from(obj["data"]);
    setState(() {});
  }

  generateCalendarData() async {
    showLoading();
    await Dio().delete(
      "https://capekngoding.com/cahya/api/events/action/delete-all",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    for (var i = 1; i <= 10; i++) {
      var response = await Dio().post(
        "https://capekngoding.com/cahya/api/events",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "event_name": "Event $i",
          "date": DateTime.now().add(Duration(days: i)).toString(),
          "start_at": "21:00",
          "end_at": "22:00",
        },
      );
    }
    hideLoading();
    getEvents();
  }

  Map<DateTime, List<Event>> events = {};
  getEvents() async {
    var response = await Dio().get(
      "https://capekngoding.com/cahya/api/events",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    // sales = List<Map<dynamic, dynamic>>.from(obj["data"]);
    List eventList = obj["data"];
    for (var event in eventList) {
      var date = DateTime.parse(event["date"]);
      var eventName = event["event_name"];
      events[date] = [
        Event(
          title: eventName,
          start: event["start_at"],
          end: event["end_at"],
        ),
      ];
    }
    setState(() {});
  }
}
