import 'package:flutter/material.dart';

class Gst extends StatefulWidget {
  const Gst({Key? key}) : super(key: key);

  @override
  State<Gst> createState() => _GstState();
}

class _GstState extends State<Gst> {
  //local
  //logical veriable
  dynamic amount = "";
  dynamic total_amount = 0;
  bool check = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 25),
          box("ORIGINAL PRICE", amount, "Rs."),
          SizedBox(height: 13),
          Container(
            height: 70,
            width: double.infinity,
            // alignment: Alignment.center,
            color: Color(0x54B7B6B6),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "GST",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              check = true;
                              check2 = false;
                              check3 = false;
                              check4 = false;
                              check5 = false;
                              total_amount = double.parse(amount);
                              total_amount =
                                  (total_amount * 0.03) + total_amount;
                            });
                          },
                          child: percentage(3, check)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              check = false;
                              check2 = true;
                              check3 = false;
                              check4 = false;
                              check5 = false;
                              total_amount = double.parse(amount);
                              total_amount =
                                  (total_amount * 0.05) + total_amount;
                            });
                          },
                          child: percentage(5, check2)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              check = false;
                              check2 = false;
                              check3 = true;
                              check4 = false;
                              check5 = false;
                              total_amount = double.parse(amount);
                              total_amount =
                                  (total_amount * 0.12) + total_amount;
                            });
                          },
                          child: percentage(12, check3)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              check = false;
                              check2 = false;
                              check3 = false;
                              check4 = true;
                              check5 = false;
                              total_amount = double.parse(amount);
                              total_amount =
                                  (total_amount * 0.18) + total_amount;
                            });
                          },
                          child: percentage(18, check4)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              check = false;
                              check2 = false;
                              check3 = false;
                              check4 = false;
                              check5 = true;
                              total_amount = double.parse(amount);
                              total_amount =
                                  (total_amount * 0.28) + total_amount;
                            });
                          },
                          child: percentage(28, check5)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 13),
          box("FINAL PRICE", total_amount, "Rs."),
          SizedBox(height: 13),
          Container(
            height: 50,
            width: double.infinity,
            color: Color(0x54B7B6B6),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "CGST/SGST",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2),
                  ),
                  Text(
                    "25",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            child: Container(
              height: 350,
              width: double.infinity,
              color: Colors.pink.shade100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Color(0x54B7B6B6),
                          border: Border.all(color: Colors.pink, width: 1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: number(7, 8, 9),
                          ),
                          Expanded(
                            child: number(4, 5, 6),
                          ),
                          Expanded(
                            child: number(1, 2, 3),
                          ),
                          Expanded(
                            child: number("00", 0, "."),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              amount = "";
                              total_amount = 0;
                            });
                          },
                          child: button(
                            Text(
                              "Ac",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            setState(() {

                              amount=amount.substring(0,amount.length);

                            });
                          },
                          child: button(
                            Icon(
                              Icons.backspace,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget box(String data, dynamic rs, String tag) {
    return Container(
      height: 25,
      width: double.infinity,
      color: Color(0x54B7B6B6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "$data",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                letterSpacing: 2,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "$rs $tag",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget percentage(int per, bool click) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 30,
        width: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: click ? Colors.pink.shade600 : Color(0x54B7B6B6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "$per %",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget button(Widget w) {
    return Container(
      height: 175,
      width: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(50),
      ),
      child: w,
    );
  }

  Widget number(dynamic number, dynamic n1, dynamic n2) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                amount = amount + "$number";
              });
            },
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.pink, width: 1)),
              child: Text(
                "$number",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                amount = amount + "$n1";
              });
            },
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.pink, width: 1)),
              child: Text(
                "$n1",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                amount = amount + "$n2";
              });
            },
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.pink)),
              child: Text(
                "$n2",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
//0x54B7B6B6
