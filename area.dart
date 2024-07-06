import 'package:flutter/material.dart';
import 'package:gem/rsurvey.dart';
import 'csurvey.dart';
import 'dart:math' as math;

class Area extends StatefulWidget {
  const Area({super.key});

  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
  @override
  Widget build(BuildContext context) {
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
              top: 0,
              left: 0,
              child: Container(
                width: 605,
                height: 120,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(34, 124, 112, 1),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 55.0,
                    left: 30.0,
                  ), // Add padding here
                  child: Text(
                    'Category',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis, // Handle overflow
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
              top: 287,
              left: 60,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Container(
                  width: 283,
                  height: 78.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color.fromRGBO(34, 124, 112, 1),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RSurvey()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white), // White background
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero), // No internal padding
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(283, 78.9)), // Match the Container size
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Same border radius as Container
                            side: const BorderSide(
                              color: Color.fromRGBO(34, 124, 112, 1),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Residential',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(54, 102, 146, 1),
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470.9,
              left: 60,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Container(
                  width: 283,
                  height: 78.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color.fromRGBO(19, 124, 17, 1),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CSurvey()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // White background
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero), // No internal padding
                        minimumSize: MaterialStateProperty.all<Size>(const Size(283, 78.9)), // Match the Container size
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Same border radius as Container
                            side: const BorderSide(
                              color: Color.fromRGBO(34, 124, 112, 1),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Commercial',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis, // Handle overflow
                        style: TextStyle(
                          color: Color.fromRGBO(54, 102, 146, 1),
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
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
      ),
    );
  }
}
