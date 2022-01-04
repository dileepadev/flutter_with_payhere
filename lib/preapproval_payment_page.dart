import 'package:flutter/material.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';
import 'payhere_payment.dart';
import 'custom_widgets.dart';

class PreapprovalPaymentPage extends StatefulWidget {
  const PreapprovalPaymentPage({Key? key}) : super(key: key);

  @override
  _PreapprovalPaymentPageState createState() => _PreapprovalPaymentPageState();
}

class _PreapprovalPaymentPageState extends State<PreapprovalPaymentPage> {
  // This paymentStatus is for future use
  String? paymentStatus;

  payNow() {
    PayHere.startPayment(PayHerePayment().paymentObjectPreapproval,
        (paymentId) {
      debugPrint("Preapproval Payment Success. Payment Id: $paymentId");
      setPaymentStatus("Successful");
    }, (error) {
      debugPrint("Preapproval Payment Failed. Error: $error");
      setPaymentStatus("Failed");
    }, () {
      debugPrint("Preapproval Payment Dismissed");
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
      appBar: CustomWidgets().paymentMethodsAppBar("Preapproval Payment"),
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
