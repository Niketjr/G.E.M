import 'package:flutter/material.dart';
import 'csurvey2.dart';

class CSurvey extends StatefulWidget {
  const CSurvey({super.key});

  @override
  _CSurveyState createState() => _CSurveyState();
}
class _CSurveyState extends State<CSurvey> {
  int _people = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 430,
        height: 932,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 835,
              child: Container(
                width: 430,
                height: 97,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(1.00, 0.00),
                    end: const Alignment(-1, 0),
                    colors: [Colors.white.withOpacity(0.5), const Color(0xFF227C70)],
                  ),
                  shape: const RoundedRectangleBorder(side: BorderSide(width: 1)),
                ),
              ),
            ),
            Positioned(
              left: 103,
              top: 844,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const CSurvey2()), 
                  );
                },
                child: const SizedBox(
                  width: 199,
                  height: 66,
                  child: Text(
                    'NEXT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),

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
                          'Survey',
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
              left: 20,
              top: 146,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 391,
                    height: 100,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Q  ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontFamily: 'Sawarabi Mincho',
                              fontWeight: FontWeight.w400,
                              height: 1.2, // Adjusted height
                            ),
                          ),
                          TextSpan(
                            text:
                                'On average, how many units of electricity does your business consume per month?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.2, // Adjusted height
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 287,
                    height: 56,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.50),
                      ),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            Positioned(
              left: 26,
              top: 378,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 391,
                    height: 97,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Q  ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontFamily: 'Sawarabi Mincho',
                              fontWeight: FontWeight.w400,
                              height: 1.2, // Adjusted height
                            ),
                          ),
                          TextSpan(
                            text:
                                'How many employees are there in your workspace?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.2, // Adjusted height
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Radio<int>(
                        value: 1,
                        groupValue: _people,
                        onChanged: (value) {
                          setState(() {
                            _people = value!;
                          });
                        },
                      ),
                      const Text(
                        'Less than 50 people',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.2, // Adjusted height
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Radio<int>(
                        value: 0,
                        groupValue: _people,
                        onChanged: (value) {
                          setState(() {
                            _people = value!;
                          });
                        },
                      ),
                      const Text(
                        '50-100 employees',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.2, // Adjusted height
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Radio<int>(
                        value: 2,
                        groupValue: _people,
                        onChanged: (value) {
                          setState(() {
                            _people = value!;
                          });
                        },
                      ),
                      const Text(
                        'More than 100 employees',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.2, // Adjusted height
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ) 
          ],
        ),
      ),
    );
  }
}
