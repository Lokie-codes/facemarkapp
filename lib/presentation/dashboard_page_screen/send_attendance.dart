import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../core/utils/color_constant.dart';

class SendAttendance extends StatefulWidget {
  const SendAttendance({Key? key}) : super(key: key);

  @override
  State<SendAttendance> createState() => _SendAttendanceState();
}

class _SendAttendanceState extends State<SendAttendance> {
  Future<String> sendAttendance() async {
    final response = await http.post(
      Uri.parse('http://192.168.93.142:8000/api/send_mail/'),
    );
    if (response.statusCode == 200) {
      return 'Success';
    } else {
      return 'Failed';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.teal300,
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Placeholder(),
              SizedBox(height: 20),
              Text('Send Attendance',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text('Please click the button below.',
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Future response = sendAttendance();
                  // Navigator.pop(context);
                  response.then((value) {
                    String result = value;
                    if (result == 'Success') {
                      // show snackbar with a message as Attendance sent succefully
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Attendance Sent Successfully!"),
                          duration: Duration(seconds: 4),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Failed to Send Attendance "),
                          duration: Duration(seconds: 4),
                        ),
                      );
                    }
                  });
                },
                child: Text('Send Attendance',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ))),
    );
  }
}
