# 📦 Flutter with PayHere

![GitHub repo size](https://img.shields.io/github/repo-size/dileepabandara/flutter_with_payhere?color=red&label=repository%20size)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/dileepabandara/flutter_with_payhere?color=red)
![GitHub language count](https://img.shields.io/github/languages/count/dileepabandara/flutter_with_payhere)
![GitHub top language](https://img.shields.io/github/languages/top/dileepabandara/flutter_with_payhere)
![GitHub](https://img.shields.io/github/license/dileepabandara/flutter_with_payhere?color=yellow)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/dileepabandara/flutter_with_payhere?color=brightgreen&label=commits)

![Flutter with PayHere](https://dileepadev.github.io/public-images/projects/flutter-with-payhere/flutter_with_payhere_preview.png)

## ✨ About

This **Flutter with PayHere** project is an example of how a flutter application can be integrated with PayHere. It includes PayHere integration with a One-Time Payment Request, a Recurring Payment Request, and a Preapproval Request for the Flutter app. **This project has been developed as an open source project for educational purposes.**

### ❓ What is PayHere

[PayHere](https://www.payhere.lk) is Sri Lanka's 1st Central Bank approved Aggregated Internet Payment Gateway Service that enables your business to conveniently accept Online Payments locally or globally from your customers all around the world. It's a single Online Payment Solution for Sri Lankan Businesses to get paid online via multiple local & global online payment methods available in Sri Lanka.

### 🖼️ Screenshots

![Sample Screenshot](https://dileepadev.github.io/public-images/projects/flutter-with-payhere/flutter_with_payhere_screenshots_1.png)

![Sample Screenshot](https://dileepadev.github.io/public-images/projects/flutter-with-payhere/flutter_with_payhere_screenshots_2.png)

## 🎬 Release Status

Version - Initial Release 1.0.0+1  
Initial release date - 04/01/2022

## 💡 Deployment

Deployment is not currently in use

## 💻 Built with

- Flutter
- Dart
- Android Studio

## 📌 Prerequisites

This app is developed under the following requirements so be sure to follow them before you get started.

- Dart SDK >=2.15.0 <3.0.0
- Flutter SDK >=2.8.0
- Android Gradle Plugin Version = 7.0.4
- Gradle Version = 7.0.2

## 🍃 How to Setup

- Download or clone the repository
- Move the project to the selected directory
- Open it with a code editor (Android Studio, Visual Studio Code)
- Do not run flutter clean or pub get commands until setup is complete
- Change app package name
- Create [PayHere Sandbox Account](https://sandbox.payhere.lk/)

  <a href="https://www.payhere.lk"><img src="https://www.payhere.lk/downloads/images/pay_with_payhere_light.png" alt="Pay with PayHere" width="180"/></a>

  PayHere Payment Options

  <a href="https://www.payhere.lk" target="_blank"><img src="https://www.payhere.lk/downloads/images/payhere_short_banner_dark.png" alt="PayHere" width="500"/></a>

  <!-- <a href="https://www.payhere.lk?utm_source=logo" target="_blank"><img src="https://www.payhere.lk/downloads/images/payhere_square_banner_dark.png" alt="PayHere"  width="400"/></a> -->

  [🔖 PayHere Knowledge Base - Flutter SDK](https://support.payhere.lk/api-&-mobile-sdk/payhere-flutter)

  [🔖 PayHere Sandbox & Testing](https://support.payhere.lk/faq/sandbox-and-testing)

- Whitelist Mobile App Package Name

  - Login to your PayHere Merchant Account and navigate to Settings > Domains and Credentials
  - Click the 'Add Domain/App' button
  - Select 'App' from the first dropdown
  - Add your Flutter App package name (e.g. com.myapp.memyself)
  - Copy Merchant Secret and Merchant ID of the app

- Create new dart file (payhere_credentials.dart) to save the merchantSecret and merchantId

  <b><i>payhere_credentials.dart</i></b>

  ```
  class PayHereAccountCredentials {
      final String merchantId = "Paste YOUR MERCHANT ID";
      final String merchantSecret = "Paste YOUR MERCHANT SECRET";
  }
  ```

- Run flutter clean and pub get commands

## 🚀 How to Run

- Run flutter clean and pub get commands
- Launch Device
- Run on the device

  <b>PayHere Sandbox & Testing Card numbers</b>

  | Card Icon                                                      | Card Name  | Card Number      |
  | :------------------------------------------------------------- | :--------- | :--------------- |
  | ![VISA](https://img.icons8.com/color/40/000000/visa.png)       | Visa       | 4916217501611292 |
  | ![VISA](https://img.icons8.com/color/40/000000/mastercard.png) | MasterCard | 5307732125531191 |
  | ![VISA](https://img.icons8.com/color/40/000000/amex.png)       | AMEX       | 346781005510225  |

## 📸 Icons and Images

- Flutter Logo - https://logowik.com/flutter-vector-logo-5285.html
- PayHere Images - https://support.payhere.lk/faq/payment-logos
- Icons - https://icons8.com

## 💎 Dependencies

- Flutter - https://flutter.dev
- Payhere Mobile SDK Flutter - https://pub.dev/packages/payhere_mobilesdk_flutter

## 🎞️ Project Gallery

Project screenshots and pictures - [Project Gallery](https://dileepabandara.github.io/project-gallery)

## ❤️ Thanks

Thanks to everyone who supported

## 👨‍💻 Developed By

Dileepa Bandara  
©dileepa.dev  
<https://dileepa.dev>

## 💬 Contact

If you want to contact me, leave a message via email or Twitter

- Email - <contact@dileepa.dev>
- Twitter - [dileepadev](https://twitter.com/dileepadev)

## 📜 License

This project is licensed under the MIT License  
MIT ©dileepa.dev 
See the license file for more details [LICENSE.md](https://github.com/dileepadev/flutter_with_payhere/blob/main/LICENSE)
