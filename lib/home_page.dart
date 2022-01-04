import 'package:flutter/material.dart';
import 'package:flutter_with_payhere/app_theme.dart';
import 'package:flutter_with_payhere/custom_widgets.dart';
import 'package:flutter_with_payhere/one_time_payment_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(80.0),
                bottomRight: Radius.circular(80.0),
              ),
              color: AppThemeData().appColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo_rounded.png',
                  height: 100.0,
                  width: 100.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomWidgets().paymentInstruction(),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const OneTimePaymentPage()),
              );
            },
            child: const Text("One Time Payment"),
          ),
        ],
      ),
    );
  }
}
