import 'package:flutter/material.dart';
import 'package:flutter_web_screens/page9.dart';

class Page8 extends StatefulWidget {
  const Page8({super.key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
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
              padding: const EdgeInsets.only(left: 80, right: 15, top: 40),
              height: size.height,
              width: size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                text: const TextSpan(
                                    text: 'Payable Now',
                                    style: TextStyle(fontSize: 20),
                                    children: [
                                  TextSpan(
                                    text: '\u20B9 999',
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
                          width: size.width / 2,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              List<IconData> icons = [
                                Icons.brightness_1_outlined,
                                Icons.brightness_1_outlined,
                                Icons.brightness_1_outlined,
                              ];
                              List<String> additionalIcons = [
                                'assets/paytm_img.jpg',
                                'assets/G_pay_jpg',
                                'assets/phone_pay_img.jpg',
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
                                        Image.asset(
                                          additionalIcons[
                                              index % additionalIcons.length],
                                          width: 22,
                                          height: 22,
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
                          width: size.width / 2,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  // width: size.width / 4,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 15),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Enter UPI Id",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 52,
                                width: 1,
                                color: Colors.black,
                              ),
                              Expanded(
                                child: Container(
                                  width: size.width / 4,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 15),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "@oksbi",
                                      suffixIcon: Icon(
                                        Icons.expand_more_rounded,
                                        color: Color.fromRGBO(4, 84, 116, 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                          MaterialPageRoute(builder: (context) => Page9()),
                        );
                            // Add functionality for when the button is pressed
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(
                                255, 61, 221, 66), // Color of the button
                            minimumSize: const Size(
                                300, 50), // Width and height of the button
                          ),
                          child: const Text(
                            'Verify',
                            style: TextStyle(
                              color: Colors.white, // Color of the text
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: size.width / 2,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              List<IconData> icons = [
                                Icons.brightness_1_outlined,
                              ];
                              List<String> additionalIcons = [
                                'assets/phone_pay_img.jpg',
                              ];

                              List<String> texts = [
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
                                        Image.asset(
                                          additionalIcons[
                                              index % additionalIcons.length],
                                          width: 22,
                                          height: 22,
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
