// import 'package:flutter/material.dart';
//
// import 'dashboard.dart';
// import 'qr_code_generated.dart';
//
// class QrScan extends StatefulWidget {
//   @override
//   _QrScanState createState() => _QrScanState();
// }
//
// class _QrScanState extends State<QrScan> {
//   final _firstNameController = TextEditingController(text: 'Amy');
//   final _lastNameController = TextEditingController(text: 'Jackson');
//   final _telephoneController = TextEditingController(text: '63214');
//   final _dateController = TextEditingController(text: '07-06-2002');
//   final _emailController = TextEditingController(text: 'Jackson@email.com');
//   final _addressController =
//       TextEditingController(text: 'Moronthuduwa,Wadduwa');
//   final _genderController = TextEditingController(text: 'Female');
//   final _bloodGroupController = TextEditingController(text: 'A-');
//
//   final Map<String, String> _healthChecks = {
//     'Do you suffer of any diseases ?': 'No',
//     'Do you have allergies ?': 'No',
//     'Have you ever had positive Blood test for HbsAg, Hcv, HIV ?': 'No',
//     'Do you have any cardiac problems ?': 'No',
//     'Do you suffer any bleeding disorders ?': 'No',
//     'Do you take medication ?': 'No',
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Donating Documentation',
//             style: TextStyle(color: Colors.white)),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(222, 37, 18, 246),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_circle_left_rounded),
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => dashboard()));
//           },
//           color: Colors.white,
//         ),
//         bottom: PreferredSize(
//             preferredSize: Size.fromHeight(15), child: Container()),
//       ),
//       backgroundColor: Color.fromARGB(255, 235, 234, 255),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(20),
//               child: Card(
//                 shadowColor: Color.fromARGB(255, 195, 192, 252),
//                 color: Colors.white,
//                 child: Center(
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(
//                           height:
//                               (MediaQuery.of(context).size.width / 375) * 20),
//                       Text(
//                         "Blood Donation form",
//                         style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w600,
//                             color: Color.fromARGB(255, 12, 6, 79)),
//                       ),
//                       SizedBox(
//                           height:
//                               (MediaQuery.of(context).size.width / 375) * 10),
//                       Text(
//                         "Blood Donor Information",
//                         style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                             color: Color.fromARGB(255, 38, 21, 225)),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextDetails(
//                             txDetails: _firstNameController.text,
//                             txWidth:
//                                 (MediaQuery.of(context).size.width / 375) * 150,
//                             txHeading: 'First name:',
//                           ),
//                           TextDetails(
//                             txDetails: _lastNameController.text,
//                             txWidth:
//                                 (MediaQuery.of(context).size.width / 375) * 150,
//                             txHeading: 'Last name:',
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextDetails(
//                             txDetails: _telephoneController.text,
//                             txWidth:
//                                 (MediaQuery.of(context).size.width / 375) * 150,
//                             txHeading: 'Telephone No.:',
//                           ),
//                           TextDetails(
//                             txDetails: _dateController.text,
//                             txWidth:
//                                 (MediaQuery.of(context).size.width / 375) * 150,
//                             txHeading: 'Date:',
//                           ),
//                         ],
//                       ),
//                       TextDetails(
//                         txDetails: _emailController.text,
//                         txWidth:
//                             (MediaQuery.of(context).size.width / 375) * 300,
//                         txHeading: 'Email:',
//                       ),
//                       TextDetails(
//                         txDetails: _addressController.text,
//                         txWidth:
//                             (MediaQuery.of(context).size.width / 375) * 300,
//                         txHeading: 'Address :',
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextDetails(
//                             txDetails: _genderController.text,
//                             txWidth:
//                                 (MediaQuery.of(context).size.width / 375) * 150,
//                             txHeading: 'Gender:',
//                           ),
//                           TextDetails(
//                             txDetails: _bloodGroupController.text,
//                             txWidth:
//                                 (MediaQuery.of(context).size.width / 375) * 150,
//                             txHeading: 'Blood Group:',
//                           ),
//                         ],
//                       ),
//                       Text(
//                         "Health Security Check",
//                         style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                             color: Color.fromARGB(255, 38, 21, 225)),
//                       ),
//                       RadioQuestion(
//                         radioTx: 'Do you suffer of any diseases ?',
//                         onChanged: (value) {
//                           setState(() {
//                             _healthChecks['Do you suffer of any diseases ?'] =
//                                 value;
//                           });
//                         },
//                       ),
//                       RadioQuestion(
//                         radioTx: 'Do you have allergies ?',
//                         onChanged: (value) {
//                           setState(() {
//                             _healthChecks['Do you have allergies ?'] = value;
//                           });
//                         },
//                       ),
//                       RadioQuestion(
//                         radioTx:
//                             'Have you ever had positive Blood test for HbsAg, Hcv, HIV ?',
//                         onChanged: (value) {
//                           setState(() {
//                             _healthChecks[
//                                     'Have you ever had positive Blood test for HbsAg, Hcv, HIV ?'] =
//                                 value;
//                           });
//                         },
//                       ),
//                       RadioQuestion(
//                         radioTx: 'Do you have any cardiac problems ?',
//                         onChanged: (value) {
//                           setState(() {
//                             _healthChecks[
//                                 'Do you have any cardiac problems ?'] = value;
//                           });
//                         },
//                       ),
//                       RadioQuestion(
//                         radioTx: 'Do you suffer any bleeding disorders ?',
//                         onChanged: (value) {
//                           setState(() {
//                             _healthChecks[
//                                     'Do you suffer any bleeding disorders ?'] =
//                                 value;
//                           });
//                         },
//                       ),
//                       RadioQuestion(
//                         radioTx: 'Do you take medication ?',
//                         onChanged: (value) {
//                           setState(() {
//                             _healthChecks['Do you take medication ?'] = value;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Center(
//               child: MaterialButton(
//                 child: Container(
//                   height: (MediaQuery.of(context).size.height / 812) * 50,
//                   width: (MediaQuery.of(context).size.width / 375) * 157,
//                   decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 37, 18, 246),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Submit",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => QrCodeGenerated(
//                         firstName: _firstNameController.text,
//                         lastName: _lastNameController.text,
//                         telephoneNo: _telephoneController.text,
//                         date: _dateController.text,
//                         email: _emailController.text,
//                         address: _addressController.text,
//                         gender: _genderController.text,
//                         bloodGroup: _bloodGroupController.text,
//                         healthChecks: _healthChecks,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class TextDetails extends StatelessWidget {
//   final String txDetails;
//   final String txHeading;
//   final double txWidth;
//
//   const TextDetails(
//       {required this.txDetails,
//       required this.txWidth,
//       required this.txHeading});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: txWidth,
//       height: 50,
//       padding: EdgeInsets.all(10),
//       child: Row(
//         children: <Widget>[
//           Text(
//             txHeading,
//             style: TextStyle(
//                 fontSize: 12,
//                 color: Color.fromARGB(255, 12, 6, 79),
//                 fontWeight: FontWeight.w400),
//           ),
//           SizedBox(width: 2),
//           Text(
//             txDetails,
//             style: TextStyle(
//                 fontSize: 14,
//                 color: Color.fromARGB(255, 12, 6, 79),
//                 fontWeight: FontWeight.w500),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class RadioQuestion extends StatefulWidget {
//   final String radioTx;
//   final ValueChanged<String> onChanged;
//
//   const RadioQuestion(
//       {Key? key, required this.radioTx, required this.onChanged})
//       : super(key: key);
//
//   @override
//   State<RadioQuestion> createState() => _RadioQuestionState();
// }
//
// class _RadioQuestionState extends State<RadioQuestion> {
//   String currentOption = "No";
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//           child: Text(widget.radioTx),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Text("Yes"),
//                 Radio(
//                   value: "Yes",
//                   groupValue: currentOption,
//                   onChanged: (value) {
//                     setState(() {
//                       currentOption = value.toString();
//                       widget.onChanged(currentOption);
//                     });
//                   },
//                 )
//               ],
//             ),
//             Row(
//               children: <Widget>[
//                 Text("No"),
//                 Radio(
//                   value: "No",
//                   groupValue: currentOption,
//                   onChanged: (value) {
//                     setState(() {
//                       currentOption = value.toString();
//                       widget.onChanged(currentOption);
//                     });
//                   },
//                 )
//               ],
//             )
//           ],
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'qr_code_generated.dart';

class QrScan extends StatefulWidget {
  @override
  _QrScanState createState() => _QrScanState();
}

class _QrScanState extends State<QrScan> {
  final _firstNameController = TextEditingController(text: 'Amy');
  final _lastNameController = TextEditingController(text: 'Jackson');
  final _telephoneController = TextEditingController(text: '63214');
  final _dateController = TextEditingController(text: '07-06-2002');
  final _emailController = TextEditingController(text: 'Jackson@email.com');
  final _addressController =
      TextEditingController(text: 'Moronthuduwa,Wadduwa');
  final _genderController = TextEditingController(text: 'Female');
  final _bloodGroupController = TextEditingController(text: 'A-');

  final Map<String, String> _healthChecks = {
    'Do you suffer of any diseases ?': 'No',
    'Do you have allergies ?': 'No',
    'Have you ever had positive Blood test for HbsAg, Hcv, HIV ?': 'No',
    'Do you have any cardiac problems ?': 'No',
    'Do you suffer any bleeding disorders ?': 'No',
    'Do you take medication ?': 'No',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donating Documentation',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(222, 37, 18, 246),
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_rounded),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => dashboard()));
          },
          color: Colors.white,
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(15), child: Container()),
      ),
      backgroundColor: Color.fromARGB(255, 235, 234, 255),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Card(
                shadowColor: Color.fromARGB(255, 195, 192, 252),
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          height:
                              (MediaQuery.of(context).size.width / 375) * 20),
                      Text(
                        "Blood Donation form",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 12, 6, 79)),
                      ),
                      SizedBox(
                          height:
                              (MediaQuery.of(context).size.width / 375) * 10),
                      Text(
                        "Blood Donor Information",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 38, 21, 225)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextDetails(
                            txDetails: _firstNameController.text,
                            txWidth:
                                (MediaQuery.of(context).size.width / 375) * 150,
                            txHeading: 'First name:',
                          ),
                          TextDetails(
                            txDetails: _lastNameController.text,
                            txWidth:
                                (MediaQuery.of(context).size.width / 375) * 150,
                            txHeading: 'Last name:',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextDetails(
                            txDetails: _telephoneController.text,
                            txWidth:
                                (MediaQuery.of(context).size.width / 375) * 150,
                            txHeading: 'Telephone No.:',
                          ),
                          TextDetails(
                            txDetails: _dateController.text,
                            txWidth:
                                (MediaQuery.of(context).size.width / 375) * 150,
                            txHeading: 'Date:',
                          ),
                        ],
                      ),
                      TextDetails(
                        txDetails: _emailController.text,
                        txWidth:
                            (MediaQuery.of(context).size.width / 375) * 300,
                        txHeading: 'Email:',
                      ),
                      TextDetails(
                        txDetails: _addressController.text,
                        txWidth:
                            (MediaQuery.of(context).size.width / 375) * 300,
                        txHeading: 'Address :',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextDetails(
                            txDetails: _genderController.text,
                            txWidth:
                                (MediaQuery.of(context).size.width / 375) * 150,
                            txHeading: 'Gender:',
                          ),
                          TextDetails(
                            txDetails: _bloodGroupController.text,
                            txWidth:
                                (MediaQuery.of(context).size.width / 375) * 150,
                            txHeading: 'Blood Group:',
                          ),
                        ],
                      ),
                      Text(
                        "Health Security Check",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 38, 21, 225)),
                      ),
                      RadioQuestion(
                        radioTx: 'Do you suffer of any diseases ?',
                        onChanged: (value) {
                          setState(() {
                            _healthChecks['Do you suffer of any diseases ?'] =
                                value;
                          });
                        },
                      ),
                      RadioQuestion(
                        radioTx: 'Do you have allergies ?',
                        onChanged: (value) {
                          setState(() {
                            _healthChecks['Do you have allergies ?'] = value;
                          });
                        },
                      ),
                      RadioQuestion(
                        radioTx:
                            'Have you ever had positive Blood test for HbsAg, Hcv, HIV ?',
                        onChanged: (value) {
                          setState(() {
                            _healthChecks[
                                    'Have you ever had positive Blood test for HbsAg, Hcv, HIV ?'] =
                                value;
                          });
                        },
                      ),
                      RadioQuestion(
                        radioTx: 'Do you have any cardiac problems ?',
                        onChanged: (value) {
                          setState(() {
                            _healthChecks[
                                'Do you have any cardiac problems ?'] = value;
                          });
                        },
                      ),
                      RadioQuestion(
                        radioTx: 'Do you suffer any bleeding disorders ?',
                        onChanged: (value) {
                          setState(() {
                            _healthChecks[
                                    'Do you suffer any bleeding disorders ?'] =
                                value;
                          });
                        },
                      ),
                      RadioQuestion(
                        radioTx: 'Do you take medication ?',
                        onChanged: (value) {
                          setState(() {
                            _healthChecks['Do you take medication ?'] = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                child: Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 157,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 37, 18, 246),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QrCodeGenerated(
                        firstName: _firstNameController.text,
                        lastName: _lastNameController.text,
                        telephoneNo: _telephoneController.text,
                        date: _dateController.text,
                        email: _emailController.text,
                        address: _addressController.text,
                        gender: _genderController.text,
                        bloodGroup: _bloodGroupController.text,
                        healthChecks: _healthChecks,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextDetails extends StatelessWidget {
  final String txDetails;
  final String txHeading;
  final double txWidth;

  const TextDetails(
      {required this.txDetails,
      required this.txWidth,
      required this.txHeading});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: txWidth,
      height: 50,
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Text(
            txHeading,
            style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 12, 6, 79),
                fontWeight: FontWeight.w400),
          ),
          SizedBox(width: 2),
          Text(
            txDetails,
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 12, 6, 79),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class RadioQuestion extends StatefulWidget {
  final String radioTx;
  final ValueChanged<String> onChanged;

  const RadioQuestion(
      {Key? key, required this.radioTx, required this.onChanged})
      : super(key: key);

  @override
  State<RadioQuestion> createState() => _RadioQuestionState();
}

class _RadioQuestionState extends State<RadioQuestion> {
  String currentOption = "No";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Text(widget.radioTx),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Yes"),
                Radio(
                  value: "Yes",
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                      widget.onChanged(currentOption);
                    });
                  },
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text("No"),
                Radio(
                  value: "No",
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                      widget.onChanged(currentOption);
                    });
                  },
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
