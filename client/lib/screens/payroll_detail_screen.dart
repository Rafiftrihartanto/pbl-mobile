import 'package:flutter/material.dart';

class PayrollDetailScreen extends StatelessWidget {
  const PayrollDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF06A8E0),
        elevation: 0,
        title: const Text(
          "Pay Slip",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image.asset(
              "web/splash/img/light-1x.png",
              height: 28,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _InfoRow(label: "Payroll cut off", value: "01 - 30 November 2025"),
            const _InfoRow(label: "ID / Name", value: "T1001 / Aditya Y."),
            const _InfoRow(label: "Department", value: "IT"),
            const SizedBox(height: 20),

            // Earnings Card
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Color(0xffd3d3d3),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                    ),
                    child: const Text(
                      "Earnings",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const _EarningRow(label: "Total Work Time / hour", value: "176"),
                  const _EarningRow(label: "Rate Gaji (Reguler) / hour", value: "50.000"),
                  const _EarningRow(label: "Total Overtime / hour", value: "5"),
                  const _EarningRow(label: "Overtime / hour", value: "25.000"),

                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Earnings",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "8.925.000",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label, value;
  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          SizedBox(width: 150, child: Text("$label :")),
          Text(value),
        ],
      ),
    );
  }
}

class _EarningRow extends StatelessWidget {
  final String label, value;
  const _EarningRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}
