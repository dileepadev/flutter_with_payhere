import 'package:flutter/material.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';
import 'payhere_payment.dart';
import 'custom_widgets.dart';

class RecurringPaymentPage extends StatefulWidget {
  const RecurringPaymentPage({Key? key}) : super(key: key);

  @override
  _RecurringPaymentPageState createState() => _RecurringPaymentPageState();
}

class _RecurringPaymentPageState extends State<RecurringPaymentPage> {
  // This paymentStatus is for future use
  String? paymentStatus;

  payNow() {
    PayHere.startPayment(PayHerePayment().paymentRecurring, (paymentId) {
      debugPrint("Recurring Payment Success. Payment Id: $paymentId");
      setPaymentStatus("Successful");
    }, (error) {
      debugPrint("Recurring Payment Failed. Error: $error");
      setPaymentStatus("Failed");
    }, () {
      debugPrint("Recurring Payment Dismissed");
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
      appBar: CustomWidgets().paymentMethodsAppBar("Recurring Payment"),
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
