import 'package:flutter/material.dart';
import 'package:gem/login_widget.dart';


class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  void navigateToLoginPage() {
    // Navigate to the login page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginWidget()),
    );
  }

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
                child: const Stack(
                  children: <Widget>[
                    Positioned(
                      top: 3,
                      left: 6,
                      child: Padding(
                        padding: EdgeInsets.only(top: 55.0, left: 30.0), // Add padding here
                        child: Text(
                          'Sign Up',
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
              child: Container(
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
              top: 311,
              left: 70,
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
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0), // Add padding here
                    child: TextField(
                      // Implement your logic for Name field
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 538,
              left: 70,
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
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0), // Add padding here
                    child: TextField(
                      // Implement your logic for Name field
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 420,
              left: 70,
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
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0), // Add padding here
                    child: TextField(
                      // Implement your logic for Name field
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email Address',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            Positioned(
              top: 696,
              left: 43,
              child: GestureDetector(
                onTap: navigateToLoginPage,
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
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 711,
              left: 321,
              child: Container(
                width: 39.95,
                height: 40.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child:  Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/vector3.jpg',
                        fit: BoxFit
                            .cover, // Ensure the image covers the container while maintaining aspect ratio
                        width: 39.95, // Explicitly set the image width
                        height: 40.0, 
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 711,
              left: 60,
              child: Container(
                width: 39.95,
                height: 40.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child:  Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/vector3.jpg',
                        fit: BoxFit
                            .cover, // Ensure the image covers the container while maintaining aspect ratio
                        width: 39.95, // Explicitly set the image width
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
    );
  }
}
