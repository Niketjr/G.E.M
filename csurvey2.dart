import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gem/home.dart';

class CSurvey2 extends StatelessWidget {
  const CSurvey2({super.key});

  @override
  Widget build(BuildContext context) {
    final pincodeController = TextEditingController();
    final areaController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
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
                padding: const EdgeInsets.all(20.0),
                child: Form(
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
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'Enter your area pincode',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
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
                          controller: pincodeController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your area pincode';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 30),
                      const SizedBox(
                        width: 391,
                        height: 72,
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
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'Enter your Area (eg. jayanagar)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
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
                          controller: areaController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z\s,\-]'),
                            ), // Allow letters, spaces, commas, and hyphens
                          ],
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your area';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
