import 'package:flutter/material.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    FlutterStatusbarManager.setColor(Colors.black);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/dash.png',
                    width: screenWidth / 4,
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chatter',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 56.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              'powered by',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          ColorFiltered(
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            child: Image.asset(
                              'assets/stream_logo.png',
                              width: screenWidth / 3.5,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
