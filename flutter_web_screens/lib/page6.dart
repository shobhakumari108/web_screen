import 'package:flutter/material.dart';
// import 'package:themcontrol/theme/theme.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          'Payment Page',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Doc Search Health Care pvt limited',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '\u20B9 999',
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 350),
              child: Container(
                child: Center(
                  child: Row(children: [
                    Column(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Color.fromRGBO(4, 84, 116, 1.0),
                          size: 100.0,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Color.fromRGBO(4, 84, 116, 1.0),
                          size: 200.0,
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Step1',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'Go to the ',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Phonepe',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' Mobile app',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            'Step2',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Check pending request & approve',
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              Text(
                                'payment by enterting ',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'UPI PIN',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 80,
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 380),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Doc ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                    TextSpan(
                      text: 'Search ',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                    TextSpan(
                      text: 'Processing Payment',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Text(
                    'Cant pay with UPI ? ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Choose another payment system',
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
