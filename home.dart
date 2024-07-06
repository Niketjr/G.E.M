import 'package:flutter/material.dart';
import 'package:gem/area.dart';
import 'leaderboad.dart';
import 'dart:math' as math;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              width: 430,
              height: 90,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(34, 124, 112, 1),
              ),
              child: Stack(
                children: <Widget>[
                  const Positioned(
                    top: 30,
                    left: 179,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'G.E.M',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis, // Add this line
                        style: TextStyle(
                          color: Color.fromRGBO(201, 214, 166, 1),
                          fontFamily: 'Inter',
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 37,
                    left: 346,
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
                    top: 25.714282989501953,
                    left: 18.346664428710938,
                    child: SizedBox(
                      width: 27.520000457763672,
                      height: 38.57143020629883,
                      
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 5.099999904632568,
                            left: 3.0999999046325684,
                            child: Image.asset(
                              'assets/images/triple_line/l1.jpg',
                            ),
                          ),
                          Positioned(
                            top: 11.100000381469727,
                            left: 3.099609375,
                            child: Image.asset(
                              'assets/images/triple_line/l2.jpg',
                            ),
                          ),
                          Positioned(
                            top: 17.100000381469727,
                            left: 3.0999999046325684,
                            child: Image.asset(
                              'assets/images/triple_line/l3.jpg',
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
            top: 267,
            left: 40,
            child: Container(
              width: 344,
              height: 83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
                color: const Color.fromRGBO(255, 255, 255, 0.9800000190734863),
                border: Border.all(
                  color: const Color.fromRGBO(8, 119, 26, 1),
                  width: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 417,
            left: 40,
            child: Container(
              width: 344,
              height: 83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(217, 217, 217, 0),
                border: Border.all(
                  color: const Color.fromRGBO(19, 124, 17, 1),
                  width: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 40,
            child: Container(
              width: 344,
              height: 83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(217, 217, 217, 0),
                border: Border.all(
                  color: const Color.fromRGBO(27, 123, 12, 1),
                  width: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 267,
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Area()),
                );
              },
              child: Container(
                width: 344,
                height: 83,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: const Color.fromRGBO(27, 123, 12, 1),
                    width: 1,
                  ),
                ),
                child: const Text(
                  'SURVEY',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis, // Add this line
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 442,
            left: 109,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Leaderboard()),
                );
              },
              child: const FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'LEADERBOARD',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis, // Add this line
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 573,
            left: 135,
            child: GestureDetector(
              onTap: () {
                // Handle onTap for REWARDS
                // Implement navigation logic here
              },
              child: const FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'REWARDS',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis, // Add this line
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: -40,
            child: Transform.rotate(
              angle: -15 * (math.pi / 180),
              child: Container(
                width: 800.0,
                height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/leaf.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
