import 'package:flutter/material.dart';
import 'home.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group29Widget - GROUP
    return Scaffold(
      body: SizedBox(
        width: 430,
        height: 932,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 430,
                height: 932,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 605,
                        height: 120,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(34, 124, 112, 1),
                        ),
                        child: const Stack(
                          children: <Widget>[
                            Positioned(
                              top: 3,
                              left: 6,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 55.0, left: 30.0), // Add padding here
                                child: Text(
                                  'Rewards',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(201, 213, 166, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 28,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 57,
                      left: 366,
                      child: SizedBox(
                        width: 39.95,
                        height: 40.0,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/vector3.jpg',
                                fit: BoxFit
                                    .cover, // Ensure the image covers the container while maintaining aspect ratio
                                width: 39.95, // Explicitly set the image width
                                height: 40.0, // Explicitly set the image height
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      top: 140,
                      left: 10,
                      child: SizedBox(
                        width: 393,
                        height: 195,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 393,
                                height: 195,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: Border.all(
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 98,
                              left: 256,
                              child: Text(
                                '1200 pts',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 11,
                              left: 21,
                              child: Container(
                                width: 160,
                                height: 173,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/plant.png'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 40,
                              left: 252,
                              child: Text(
                                'Plant',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 588,
                      left: 10,
                      child: SizedBox(
                        width: 393,
                        height: 195,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 393,
                                height: 195,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: Border.all(
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 114,
                              left: 246,
                              child: Text(
                                '1000pts',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 50,
                              left: 241,
                              child: Text(
                                'Bottle',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 7,
                              left: 12,
                              child: SizedBox(
                                width: 190.6036376953125,
                                height: 181,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        width: 190.6036376953125,
                                        height: 181,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/bottle.png'),
                                            fit: BoxFit.fitWidth,
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
                    ),
                    Positioned(
                      top: 364,
                      left: 10,
                      child: SizedBox(
                        width: 393,
                        height: 195,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 393,
                                height: 195,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: Border.all(
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 28,
                              child: SizedBox(
                                width: 158,
                                height: 156,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        width: 158,
                                        height: 156,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/mug.png'),
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 49,
                              left: 223,
                              child: Text(
                                'Coffee Mug',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 113,
                              left: 249,
                              child: Text(
                                '1500 pts',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
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
            ),
          ],
        ),
    ),
    bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        },
        child: Container(
          height: 80,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1, 0),
              end: Alignment(0, 1),
              colors: [
                Color.fromRGBO(255, 255, 255, 0.5),
                Color.fromRGBO(34, 124, 112, 1)
              ],
            ),
          ),
          child: const Center(
            child: Text(
              'BACK',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
