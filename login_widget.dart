import 'package:flutter/material.dart';
import 'home.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

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
                  padding: EdgeInsets.only(top: 55.0, left: 30.0),
                  child: Text(
                    'Log In',
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
            ),
            Positioned(
              top: 57,
              left: 366,
              child: Container(
                width: 39.95,
                height: 40.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Image.asset(
                  'assets/images/vector3.jpg',
                  fit: BoxFit.cover,
                  width: 39.95,
                  height: 40.0,
                ),
              ),
            ),
            Positioned(
              top: 341,
              left: 72,
              child: Container(
                width: 272,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                  color: const Color.fromRGBO(255, 251, 251, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email address',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 459,
              left: 72,
              child: Container(
                width: 272,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                  color: const Color.fromRGBO(255, 251, 251, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
                child: const Center(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        height: 1,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 617,
              left: 45,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Container(
                  width: 333,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromRGBO(201, 214, 166, 1),
                  ),
                  child: const Center(
                    child: Text(
                      'Submit',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 632,
              left: 323,
              child: Container(
                width: 39.95,
                height: 40.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Image.asset(
                  'assets/images/vector3.jpg',
                  fit: BoxFit.cover,
                  width: 39.95,
                  height: 40.0,
                ),
              ),
            ),
            Positioned(
              top: 632,
              left: 62,
              child: Container(
                width: 39.95,
                height: 40.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Image.asset(
                  'assets/images/vector3.jpg',
                  fit: BoxFit.cover,
                  width: 39.95,
                  height: 40.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
