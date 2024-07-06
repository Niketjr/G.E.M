import 'package:flutter/material.dart';
import 'rsurvey2.dart';

class RSurvey extends StatefulWidget {
  const RSurvey({super.key});

  @override
  _RSurveyState createState() => _RSurveyState();
}

class _RSurveyState extends State<RSurvey> {
  int _solarPanelGroupValue = -1; // Initial value for the radio button group
  int _evGroupValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 120,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(34, 124, 112, 1),
              ),
              child: Stack(
                children: <Widget>[
                  const Positioned(
                    top: 55.0,
                    left: 30.0,
                    child: Text(
                      'Survey',
                      style: TextStyle(
                        color: Color.fromRGBO(201, 213, 166, 1),
                        fontFamily: 'Poppins',
                        fontSize: 28,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 57,
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
                              fit: BoxFit.cover,
                              width: 39.95,
                              height: 40.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 391,
                    height: 51,
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
                            text: 'Enter your meter no.',
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
                  const SizedBox(
                    width: 391,
                    height: 70, // Increased height to accommodate the text
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
                                'Enter the units of electricity consumed in the current month.',
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
                  const SizedBox(height: 30),
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
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SizedBox(
                    width: 391,
                    height: 51,
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
                            text: 'Do you have a solar panel?',
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
                        groupValue: _solarPanelGroupValue,
                        onChanged: (value) {
                          setState(() {
                            _solarPanelGroupValue = value!;
                          });
                        },
                      ),
                      const Text(
                        'YES',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.2, // Adjusted height
                        ),
                      ),
                      const SizedBox(width: 20),
                      Radio<int>(
                        value: 0,
                        groupValue: _solarPanelGroupValue,
                        onChanged: (value) {
                          setState(() {
                            _solarPanelGroupValue = value!;
                          });
                        },
                      ),
                      const Text(
                        'NO',
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
                  const SizedBox(height: 35.0),
                  const SizedBox(
                    width: 391,
                    height: 51,
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
                            text: 'Do you own an electric vehicle?',
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
                        groupValue: _evGroupValue,
                        onChanged: (value) {
                          setState(() {
                            _evGroupValue = value!;
                          });
                        },
                      ),
                      const Text(
                        'YES',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.2, // Adjusted height
                        ),
                      ),
                      const SizedBox(width: 20),
                      Radio<int>(
                        value: 0,
                        groupValue: _evGroupValue,
                        onChanged: (value) {
                          setState(() {
                            _evGroupValue = value!;
                          });
                        },
                      ),
                      const Text(
                        'NO',
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
            ),
            Positioned(
              left: 0,
              top: 855,
              child: Stack(
                children: [
                  Container(
                    width: 430,
                    height: 97,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(1.00, 0.00),
                        end: const Alignment(-1, 0),
                        colors: [
                          Colors.white.withOpacity(0.5),
                          const Color(0xFF227C70)
                        ],
                      ),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    left:
                        115, // Adjusted left to center the button within the gradient container
                    top:
                        15, // Adjusted top to center the button vertically within the gradient container
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RSurvey2()),
                        );
                      },
                      child: SizedBox(
                        width: 199,
                        height: 66,
                        child: Container(
                          alignment: Alignment
                              .center, // Center the text inside the container
                          child: const Text(
                            'NEXT',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
