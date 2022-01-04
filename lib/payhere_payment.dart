import 'package:flutter_with_payhere/payhere_credentials.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';

class PayHerePayment {
  Map paymentObjectOneTime = {
    // true if using Sandbox Merchant ID
    "sandbox": true,
    // Replace your Merchant ID
    "merchant_id": PayHereAccountCredentials().merchantId,
    // See step 4e
    "merchant_secret": PayHereAccountCredentials().merchantSecret,
    "notify_url": "http://sample.com/notify",
    "order_id": "ItemNo12345",
    "items": "One Time Payment",
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

  Map paymentRecurring = {
    // true if using Sandbox Merchant ID
    "sandbox": true,
    // Replace your Merchant ID
    "merchant_id": PayHereAccountCredentials().merchantId,
    // See step 4e
    "merchant_secret": PayHereAccountCredentials().merchantSecret,
    "notify_url": "http://sample.com/notify",
    "order_id": "ItemNo123456",
    "items": "Recurring Payment",
    "amount": "75.00",
    "recurrence": "1 Month", // Recurring payment frequency
    "duration": "1 Year", // Recurring payment duration
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

  Map paymentObjectPreapproval = {
    // true if using Sandbox Merchant ID
    "sandbox": true,
    // Required
    "preapprove": true,
    // Replace your Merchant ID
    "merchant_id": PayHereAccountCredentials().merchantId,
    // See step 4e
    "merchant_secret": PayHereAccountCredentials().merchantSecret,
    "notify_url": "http://sample.com/notify",
    "order_id": "ItemNo1234567",
    "items": "Preapproval Payment",
    "currency": "LKR",
    "first_name": "Dileepa",
    "last_name": "Bandara",
    "email": "contact.dileepabandara@gmail.com",
    "phone": "0712691003",
    "address": "No.474/1, Ranjanagama Road, Gepallwa, Uhumeeya",
    "city": "Kurunegala",
    "country": "Sri Lanka",
  };
}
