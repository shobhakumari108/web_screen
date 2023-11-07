import 'package:flutter/material.dart';

class Page13 extends StatefulWidget {
  const Page13({super.key});

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  List<bool> isIconSelected = [false, false, false];
  bool isChecked = false;

  void check() {
    setState(() {
      isChecked = true;
    });
  }

  void uncheck() {
    setState(() {
      isChecked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Image.asset(
          'assets/G_pay_img.jpg', // Replace with the path to your image
          height: 30, // Adjust the height as needed
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 40),
              height: size.height,
              width: size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Color.fromRGBO(4, 84, 116, 1.0),
                                size: 36.0,
                              ),
                              onPressed: () {
                                // Add functionality for back button here
                              },
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              'Back',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(4, 84, 116, 1.0),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Text(
                          'Enter card Details',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800),
                          overflow: TextOverflow.visible,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: const TextSpan(
                                    text: 'Payable Now ',
                                    style: TextStyle(fontSize: 20),
                                    children: [
                                  TextSpan(
                                    text: ' \u20B9 999',
                                  )
                                ])),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Transaction id - xxxxxxxxx',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[400]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit/Debit Card",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 30),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Please ensure your card can be used",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 20),
                        ),
                        Row(
                          children: [
                            Text(
                              "for online transaction. ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Know more",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Card Number",
                              suffixIcon: Icon(
                                Icons.credit_card,
                                color: Color.fromRGBO(4, 84, 116, 1.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 15),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Name on Card"),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15)),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 15),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Valid thru(MM/YY)"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15)),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 15),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "CVV",
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Checkbox(
                                value: isChecked,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    isChecked = newValue!;
                                  });
                                },
                                activeColor:
                                    const Color.fromRGBO(4, 84, 116, 1.0),
                                checkColor: Colors.white,
                              ),
                            ),
                            const Expanded(
                              flex: 8,
                              child: Text(
                                'Secure this option for faster checkout',
                                style: TextStyle(
                                  color: Colors.black, // Color of the text
                                  fontSize: 18,
                                ),
                                overflow: TextOverflow.visible,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add functionality for when the button is pressed
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(
                                4, 84, 116, 1.0), // Color of the button
                            minimumSize: const Size(
                                300, 50), // Width and height of the button
                          ),
                          child: const Text(
                            'Proceed',
                            style: TextStyle(
                              color: Colors.white, // Color of the text
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
