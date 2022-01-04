import 'package:flutter/material.dart';
import 'package:flutter_with_payhere/app_theme.dart';

class CustomWidgets {
  PreferredSizeWidget? paymentMethodsAppBar(String title) {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          title,
          style: AppThemeData().headline6Style,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: const Color.fromRGBO(33, 33, 33, 1.0));
  }

  Image cardIcon(String iconName) {
    return Image.asset(
      iconName,
      height: 40.0,
      width: 40.0,
    );
  }

  Text cardNumber(String cardNumber) {
    return Text(cardNumber);
  }

  Column paymentCards(String cardName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (cardName == "Visa") ...[
              statusIcon('assets/icons/icons8_visa_127px.png'),
            ] else if (cardName == "MasterCard") ...[
              statusIcon('assets/icons/icons8_mastercard_127px.png'),
            ] else if (cardName == "American Express") ...[
              statusIcon('assets/icons/icons8_american_express_127px.png'),
            ] else ...[
              statusIcon('assets/icons/icons8_payment_history_127px.png'),
            ],
            const SizedBox(
              width: 10.0,
            ),
            Text(
              cardName,
              style: AppThemeData().subtitle1Style,
            ),
          ],
        ),
        if (cardName == "Visa") ...[
          cardNumber('4916217501611292'),
        ] else if (cardName == "MasterCard") ...[
          cardNumber('5307732125531191'),
        ] else if (cardName == "American Express") ...[
          cardNumber('346781005510225'),
        ] else ...[
          cardNumber('XXXXXXXXXXXXXXXXXXXXXXX'),
        ],
      ],
    );
  }

  Column paymentInstruction() {
    return Column(
      children: [
        Text(
          "Test Card Numbers",
          style: AppThemeData().headline7Style,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                paymentCards("Visa"),
                const SizedBox(
                  height: 8.0,
                ),
                paymentCards("MasterCard"),
                const SizedBox(
                  height: 8.0,
                ),
                paymentCards("American Express"),
              ],
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/icons/icons8_card_payment_127px.png',
                  height: 80.0,
                  width: 80.0,
                ),
                Image.asset(
                  'assets/icons/icons8_paper_money_127px_1.png',
                  height: 80.0,
                  width: 80.0,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Image statusIcon(String iconName) {
    return Image.asset(
      iconName,
      height: 40.0,
      width: 40.0,
    );
  }

  Row paymentStatus(String paymentStatus) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (paymentStatus == "Successful") ...[
          statusIcon('assets/icons/icons8_ok_127px.png'),
        ] else if (paymentStatus == "Failed") ...[
          statusIcon('assets/icons/icons8_cancel_127px.png'),
        ] else if (paymentStatus == "Dismissed") ...[
          statusIcon('assets/icons/icons8_error_127px.png'),
        ] else ...[
          statusIcon('assets/icons/icons8_payment_history_127px.png'),
        ],
        const SizedBox(
          width: 10.0,
        ),
        Text(paymentStatus, style: AppThemeData().subtitle1Style),
      ],
    );
  }

  ElevatedButton paymentOptionButton(
      BuildContext context, var pageName, String buttonName) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageName),
        );
      },
      child: Text(buttonName),
      style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
    );
  }
}
