import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AdminDashboardView extends StatefulWidget {
  const AdminDashboardView({Key? key}) : super(key: key);

  Widget build(context, AdminDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AdminDashboard"),
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const LoginView()),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.generate(),
                child: const Text("Generate Chart Data"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Builder(
                builder: (context) {
                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        SplineSeries<Map, int>(
                          dataSource: controller.sales,
                          xValueMapper: (Map data, _) => data["year"],
                          yValueMapper: (Map data, _) => data["sales"],
                        )
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.generateCalendarData(),
                child: const Text("Generate Calendar Data"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              if (controller.events.isNotEmpty)
                SizedBox(
                  height: 1000.0,
                  child: QTableCalendar(
                    events: controller.events,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<AdminDashboardView> createState() => AdminDashboardController();
}
