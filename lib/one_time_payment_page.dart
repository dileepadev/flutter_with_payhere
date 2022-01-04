import 'package:flutter/material.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';

import 'payhere_payment.dart';

class OneTimePaymentPage extends StatefulWidget {
  const OneTimePaymentPage({Key? key}) : super(key: key);

  @override
  _OneTimePaymentPageState createState() => _OneTimePaymentPageState();
}

class _OneTimePaymentPageState extends State<OneTimePaymentPage> {
  String paymentStatus = "Not Paid";

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
      paymentStatus = "Payment $status!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("One Time Payment"),
            ElevatedButton(
                onPressed: () => payNow(), child: const Text("Pay Now")),
            Text(paymentStatus),
          ],
        ),
      ),
    );
  }
}
