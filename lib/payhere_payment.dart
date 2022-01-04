import 'package:flutter_with_payhere/payhere_credentials.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';

class PayHereOneTimePayment {
  Map paymentObject = {
    // true if using Sandbox Merchant ID
    "sandbox": true,
    // Replace your Merchant ID
    "merchant_id": PayHereAccountCredentials().merchantId,
    // See step 4e
    "merchant_secret": PayHereAccountCredentials().merchantSecret,
    "notify_url": "http://sample.com/notify",
    "order_id": "ItemNo12345",
    "items": "Hello from Flutter!",
    "amount": "50.00",
    "currency": "LKR",
    "first_name": "Dileepa",
    "last_name": "Bandara",
    "email": "contact.dileepabandara@gmail.com",
    "phone": "0712691003",
    "address": "No.474/1, Ranjanagama Road, Gepallwa, Uhumeeya",
    "city": "Kurunegala",
    "country": "Sri Lanka",
    "delivery_address": "No. 46, Galle road, Kalutara South",
    "delivery_city": "Kalutara",
    "delivery_country": "Sri Lanka",
    "custom_1": "",
    "custom_2": ""
  };
}
