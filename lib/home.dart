import 'package:flutter/material.dart';
import 'package:flutter_speedcode/details.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFDCD6),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 478,
                decoration: BoxDecoration(
                  color: Color(0xffFFDCD5).withOpacity(0.75)
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      child: SvgPicture.asset(
                        "assets/images/bg.svg",
                        height: 250,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Learn Online \nfrom your home",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff121212)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Learn a lot of new skills with our \ninteresting lessons by watching\videos and solving tasks",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: "Gilroy",
                        fontSize: 18,
                        color: Color(0xff112745)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xff2C4BBA),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 4),
                          height: 34,
                          child: RaisedButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Details(),
                            )),
                            elevation: 0,
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.3,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                            ),
                            color: Color(0xff3657E0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}