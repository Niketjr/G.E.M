import 'package:flutter/material.dart';
import 'home.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator LeaderboardWidget - FRAME
    return Scaffold(
      body: Container(
        width: 430,
        height: 932,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -1.1368683772161603e-13,
              left: 20,
              child: Container(
                width: 390,
                height: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                  color: Color.fromRGBO(34, 124, 112, 1),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 170,
              child: ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: Image.asset(
                    'assets/images/trophy.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 125,
              left: 197,
              child: Text(
                'blah',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            const Positioned(
              top: 148,
              left: 207,
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 45,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 214,
              left: 49,
              child: SizedBox(
                width: 333,
                height: 600,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: SizedBox(
                        width: 333,
                        height: 72,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 333,
                                height: 72,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(
                                          104, 87, 46, 0.20000000298023224),
                                      offset: Offset(0, 4),
                                      blurRadius: 12,
                                    )
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 18,
                              left: 1,
                              child: SizedBox(
                                width: 294,
                                height: 32,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 3,
                                      left: 279,
                                      child: Text(
                                        '2',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(205, 205, 205, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 24,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        'blah2',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
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
                    Positioned(
                      top: 88,
                      left: 0,
                      child: SizedBox(
                        width: 333,
                        height: 72,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 333,
                                height: 72,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(
                                          104, 87, 46, 0.20000000298023224),
                                      offset: Offset(0, 4),
                                      blurRadius: 12,
                                    )
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 18,
                              left: 1,
                              child: SizedBox(
                                width: 294,
                                height: 32,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 3,
                                      left: 279,
                                      child: Text(
                                        '3',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(239, 217, 16, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 24,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        'blah3',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
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
                    Positioned(
                      top: 176,
                      left: 0,
                      child: SizedBox(
                        width: 333,
                        height: 72,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 333,
                                height: 72,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(
                                          104, 87, 46, 0.20000000298023224),
                                      offset: Offset(0, 4),
                                      blurRadius: 12,
                                    )
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 18,
                              left: 1,
                              child: SizedBox(
                                width: 296,
                                height: 32,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 3,
                                      left: 279,
                                      child: Text(
                                        '4',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(13, 97, 115, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 24,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        'blah4',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
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
                    Positioned(
                      top: 264,
                      left: 0,
                      child: SizedBox(
                        width: 333,
                        height: 72,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 333,
                                height: 72,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(
                                          104, 87, 46, 0.20000000298023224),
                                      offset: Offset(0, 4),
                                      blurRadius: 12,
                                    )
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 18,
                              left: 1,
                              child: SizedBox(
                                width: 296,
                                height: 32,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 3,
                                      left: 279,
                                      child: Text(
                                        '5',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(182, 182, 182, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 24,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        'blah5',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        child: Container(
          height: 97,
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
