import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
        children:[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Color(0xFF674AEF),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(70),
                ),
              ),
              child:  Center(
                child: Image.asset(
                  "assets/images/books.png",
                  scale: 0.8,
                ),

              ),
            ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: EdgeInsets.only(top: 30, bottom: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                     Text(
                      'Learning is everything',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                   const  SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Learning with pleasure with us , Where ever you are ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(.6),
                        ),
                      ),
                    ),
                    const  SizedBox(
                      height: 60,
                    ),
                    Material(
                      color: Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                        },
                          child:  Container(
                            padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 80),
                            child: Text(
                              'Get Start',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
