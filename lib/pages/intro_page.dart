import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:earlybirds_daycare/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle _dmSerifDisplay = GoogleFonts.dmSerifDisplay(
      color: Colors.white,
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 182, 193), // Light Pink color
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),

            // Daycare name
            Text(
              "Annie's Early Birds",
              style: _dmSerifDisplay.copyWith(
                fontSize: 28,
              ),
            ),

            const SizedBox(height: 25),

            // Cute Bird Icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/daycare.png'),
            ),

            const SizedBox(height: 25),

            // Title
            Text(
              "WELCOME TO EARLY BIRDS DAYCARE",
              style: _dmSerifDisplay.copyWith(
                fontSize: 44,
              ),
            ),

            const SizedBox(height: 10),

            // Subtitle
            Text(
              "Where every child's day begins with joy and learning!",
              style: TextStyle(
                color: Colors.grey[700],
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            // Get started button
            MyButton(
              text: "Join the Fun",
              onTap: () {
                // Go to enrollment page or any other desired page
                Navigator.pushNamed(context, '/enrollmentpage');
              },
            )
          ],
        ),
      ),
    );
  }
}
