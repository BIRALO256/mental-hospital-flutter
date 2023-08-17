import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MathQuiz extends StatelessWidget {
  const MathQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[60],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "<",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown[500],
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Math Quiz",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.brown[500],
                            fontSize: 24)),
                    Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.orange[200],
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width -
                          40, // Adjust width
                      lineHeight: 6,
                      percent: .6,
                      animation: true,
                      animationDuration: 1000,
                      backgroundColor: Colors.orange[50],
                      progressColor: Colors.green[600])
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "12",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: "/20",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 14))
                      ])),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "if David's age is 27 years old in 2011.What was his age in 2003?",
                  style: TextStyle(
                      color: Colors.brown[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "19 years",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_sharp,
                              size: 12,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "See explanation ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.3)),
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Years(37),
              SizedBox(
                height: 5,
              ),
              Years(20),
              SizedBox(
                height: 5,
              ),
              Years(17),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.error,
                      color: Colors.brown.withOpacity(.9),
                      size: 19,
                    ),
                    Text(
                      " Report question",
                      style: TextStyle(
                          color: Colors.brown.withOpacity(0.9),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding Years(int age) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.6),
            borderRadius: BorderRadius.circular(14)),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$age years",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 20),
            ),
            Text(
              ">",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
