import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';
import 'constants.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({Key? key}) : super(key: key);

  @override
  _PaymentsPageState createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  late Razorpay razerPay;
  TextEditingController textEditingController = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    razerPay = new Razorpay();
    razerPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razerPay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerPaymentError);
    razerPay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razerPay.clear();
  }

  void openCheckout() {
    var options = {
      "Key": "rzp_test_6djRON0tycxzVb",
      "amount": num.parse(textEditingController.text) * 100,
      "name": 'Booking the hotel',
      'description': 'Pay the money',
      'prefill': {'email': 'Nikhil', 'contact': '123456789'},
      'external': {
        'wallets': ['paytm']
      }
    };
    try {
      razerPay.open(options);
    } catch (e) {
      print(e);
    }
  }

  void handlerPaymentSuccess() {
    print('Payment Success');
    Toast.show('Payment Success', context);
  }

  void handlerPaymentError() {
    print('Payment Error');
    Toast.show('Payment Failed', context);
  }

  void handlerExternalWallet() {
    print('Wallet gateway successful');
    Toast.show('Please select wallet', context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.background,
      appBar: AppBar(
        title: Text(
          'Payment Gateway',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Constants.textColor),
        ),
        backgroundColor: Constants.buttonColor,
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(hintText: 'Amount to pay'),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                openCheckout();
              },
              style: ElevatedButton.styleFrom(primary: Constants.buttonColor),
              child: Text('Pay Now',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Constants.textColor)),
            )
          ],
        ),
      ),
    );
  }
}
