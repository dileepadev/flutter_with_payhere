import 'package:flutter/material.dart';
import 'package:flutter_with_payhere/app_theme.dart';
import 'package:flutter_with_payhere/custom_widgets.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';

import 'payhere_payment.dart';

class OneTimePaymentPage extends StatefulWidget {
  const OneTimePaymentPage({Key? key}) : super(key: key);

  @override
  _OneTimePaymentPageState createState() => _OneTimePaymentPageState();
}

class _OneTimePaymentPageState extends State<OneTimePaymentPage> {
  // This paymentStatus is for future use
  String? paymentStatus;

  payNow() {
    PayHere.startPayment(PayHereOneTimePayment().paymentObject, (paymentId) {
      debugPrint("One Time Payment Success. Payment Id: $paymentId");
      setPaymentStatus("Successful");
    }, (error) {
      debugPrint("One Time Payment Failed. Error: $error");
      setPaymentStatus("Failed");
    }, () {
      debugPrint("One Time Payment Dismissed");
      setPaymentStatus("Dismissed");
    });
  }

  void setPaymentStatus(String status) {
    setState(() {
      paymentStatus = status;
      CustomWidgets().paymentStatus(status);
      debugPrint(status);
    });
  }

  @override
  void initState() {
    paymentStatus = "Not Paid";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().paymentMethodsAppBar("One Time Payment"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidgets().paymentStatus(paymentStatus!),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
                onPressed: () => payNow(), child: const Text("Pay Now")),
          ],
        ),
      ),
    );
  }
}
