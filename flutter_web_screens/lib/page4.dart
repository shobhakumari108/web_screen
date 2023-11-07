import 'package:flutter/material.dart';
import 'package:flutter_web_screens/page5.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
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
        title: const Text(
          'Payment Page',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
              height: size.height,
              width: size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Text(
                          'Enter any UPI ID',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800),
                          overflow: TextOverflow.visible,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Payable Now',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: '\u20B9 999',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
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
                          "UPI Options",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w800,
                              fontSize: 30),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              List<IconData> icons = [
                                Icons.brightness_1_outlined,
                                Icons.brightness_1_outlined,
                                Icons.brightness_1_outlined,
                              ];
                              List<IconData> additionalIcons = [
                                Icons.account_balance_outlined,
                                Icons.account_balance_outlined,
                                Icons.account_balance_outlined,
                              ];
                              List<String> texts = [
                                'Paytm',
                                'Google pay',
                                'Phonepe',
                              ];

                              return Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30, right: 30),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isIconSelected[index] =
                                            !isIconSelected[index];
                                      });
                                    },
                                    child: isIconSelected[index]
                                        ? const Icon(
                                            Icons.mode_standby_outlined,
                                            color: Colors.red,
                                            size: 22,
                                          )
                                        : Icon(
                                            icons[index % icons.length],
                                            color: const Color.fromRGBO(
                                                4, 84, 116, 1.0),
                                            size: 22,
                                          ),
                                  ),
                                  title: SizedBox(
                                    child: Row(
                                      children: [
                                        Icon(
                                          additionalIcons[
                                              index % additionalIcons.length],
                                          color: const Color.fromRGBO(
                                              4, 84, 116, 1.0),
                                          size: 22,
                                        ),
                                        const SizedBox(width: 30),
                                        Text(
                                          texts[index % texts.length],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  trailing: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.grey[700],
                                      size: 22),
                                  onTap: () {},
                                ),
                              );
                            },
                          ),
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
                                hintText: "Enter UPI Id"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 450,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Prince Kumar',
                                style: TextStyle(
                                  color: Color.fromARGB(
                                      255, 61, 221, 66), // Color of the text
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'VERIFIED',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 61, 221,
                                          66), // Color of the text
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: Color.fromARGB(255, 61, 221, 66),
                                    size: 20.0,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Keep Phonepe mobile app handly to complete payment',
                          style: TextStyle(
                            color: Colors.black, // Color of the text
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page5()),
                            );
                            // Add functionality for when the button is pressed
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(
                                4, 84, 116, 1.0), // Color of the button
                            minimumSize: const Size(
                                700, 50), // Width and height of the button
                          ),
                          child: const Text(
                            'Prpceed',
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
