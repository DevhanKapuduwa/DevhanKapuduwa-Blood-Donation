import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeGenerated extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String telephoneNo;
  final String date;
  final String email;
  final String address;
  final String gender;
  final String bloodGroup;
  final Map<String, String> healthChecks;

  const QrCodeGenerated({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.telephoneNo,
    required this.date,
    required this.email,
    required this.address,
    required this.gender,
    required this.bloodGroup,
    required this.healthChecks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String healthChecksString = jsonEncode(healthChecks);
    String qrData = '''
    https://yourapp.com/details?firstName=$firstName&lastName=$lastName&telephoneNo=$telephoneNo&date=$date&email=$email&address=$address&gender=$gender&bloodGroup=$bloodGroup&healthChecks=$healthChecksString
    ''';

    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(222, 37, 18, 246),
      ),
      body: Center(
        child: QrImageView(
          data: qrData,
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }
}

// import 'dart:io';
//
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:qr_flutter/qr_flutter.dart';
//
// class QrCodeGenerated extends StatefulWidget {
//   final String firstName;
//   final String lastName;
//   final String telephoneNo;
//   final String date;
//   final String email;
//   final String address;
//   final String gender;
//   final String bloodGroup;
//   final Map<String, String> healthChecks;
//
//   const QrCodeGenerated({
//     Key? key,
//     required this.firstName,
//     required this.lastName,
//     required this.telephoneNo,
//     required this.date,
//     required this.email,
//     required this.address,
//     required this.gender,
//     required this.bloodGroup,
//     required this.healthChecks,
//   }) : super(key: key);
//
//   @override
//   _QrCodeGeneratedState createState() => _QrCodeGeneratedState();
// }
//
// class _QrCodeGeneratedState extends State<QrCodeGenerated> {
//   String? pdfUrl;
//
//   @override
//   void initState() {
//     super.initState();
//     generateAndUploadPdf();
//   }
//
//   Future<void> generateAndUploadPdf() async {
//     final pdf = pw.Document();
//     pdf.addPage(
//       pw.Page(
//         build: (pw.Context context) => pw.Center(
//           child: pw.Text(
//             'Details:\n'
//             'First Name: ${widget.firstName}\n'
//             'Last Name: ${widget.lastName}\n'
//             'Telephone: ${widget.telephoneNo}\n'
//             'Date: ${widget.date}\n'
//             'Email: ${widget.email}\n'
//             'Address: ${widget.address}\n'
//             'Gender: ${widget.gender}\n'
//             'Blood Group: ${widget.bloodGroup}\n'
//             'Health Checks: ${widget.healthChecks.entries.map((e) => '${e.key}: ${e.value}').join(', ')}',
//           ),
//         ),
//       ),
//     );
//
//     final output = await getTemporaryDirectory();
//     final file = File('${output.path}/details.pdf');
//     await file.writeAsBytes(await pdf.save());
//
//     final storageRef = FirebaseStorage.instance.ref().child('pdfs/details.pdf');
//     final uploadTask = storageRef.putFile(file);
//
//     final snapshot = await uploadTask;
//     final url = await snapshot.ref.getDownloadURL();
//
//     setState(() {
//       pdfUrl = url;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     String qrData = pdfUrl ?? 'Loading...';
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QR Code'),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(222, 37, 18, 246),
//       ),
//       body: Center(
//         child: qrData != 'Loading...'
//             ? QrImageView(
//                 data: qrData,
//                 version: QrVersions.auto,
//                 size: 200.0,
//               )
//             : CircularProgressIndicator(),
//       ),
//     );
//   }
// }
