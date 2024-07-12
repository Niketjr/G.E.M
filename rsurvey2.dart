import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gem/home.dart';

class RSurvey2 extends StatefulWidget {
  const RSurvey2({super.key});

  @override
  _RSurvey2State createState() => _RSurvey2State();
}

class _RSurvey2State extends State<RSurvey2> {
  final _formKey = GlobalKey<FormState>();
  int _houseTypeGroupValue = -1; // Initial value for the radio button group

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                        height: 72, // Increased height to accommodate the text
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
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[a-zA-Z]')),
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
                      const SizedBox(
                        width: 391,
                        height: 90, // Increased height to accommodate the text
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
                                text:
                                    'Do you live in an individual house or an Apartment',
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
                      FormField<int>(
                        builder: (state) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 1,
                                    groupValue: _houseTypeGroupValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _houseTypeGroupValue = value!;
                                        state.didChange(value);
                                      });
                                    },
                                  ),
                                  const Text(
                                    'INDIVIDUAL HOUSE',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 0,
                                    groupValue: _houseTypeGroupValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _houseTypeGroupValue = value!;
                                        state.didChange(value);
                                      });
                                    },
                                  ),
                                  const Text(
                                    'APARTMENT',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                              if (state.hasError)
                                Text(
                                  state.errorText!,
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                                ),
                            ],
                          );
                        },
                        validator: (value) {
                          if (_houseTypeGroupValue == -1) {
                            return 'Please select an option';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          if (_formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          }
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
