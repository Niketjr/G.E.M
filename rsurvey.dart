import 'package:flutter/material.dart';
import 'package:gem/rsurvey2.dart';

class RSurvey extends StatefulWidget {
  const RSurvey({super.key});

  @override
  _RSurveyState createState() => _RSurveyState();
}

class _RSurveyState extends State<RSurvey> {
  final _formKey = GlobalKey<FormState>();
  int _solarPanelGroupValue = -1; // Initial value for the radio button group
  int _evGroupValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your meter no.';
                          }
                          return null;
                        },
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
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the units of electricity consumed';
                          }
                          return null;
                        },
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
                    FormField<int>(
                      builder: (state) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Radio<int>(
                                  value: 1,
                                  groupValue: _solarPanelGroupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _solarPanelGroupValue = value!;
                                      state.didChange(value);
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
                                      state.didChange(value);
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
                        if (_solarPanelGroupValue == -1) {
                          return 'Please select an option';
                        }
                        return null;
                      },
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
                    FormField<int>(
                      builder: (state) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Radio<int>(
                                  value: 1,
                                  groupValue: _evGroupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _evGroupValue = value!;
                                      state.didChange(value);
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
                                      state.didChange(value);
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
                        if (_evGroupValue == -1) {
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
      bottomNavigationBar: GestureDetector(
        onTap: () {
          if (_formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RSurvey2()),
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
              'NEXT',
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
