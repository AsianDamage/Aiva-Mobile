import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle buttonStyle = GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xFF27567D),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            child: Text('Home', style: buttonStyle),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/check-in');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            child: Text('Check-in', style: buttonStyle),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/trends');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            child: Text('Trends', style: buttonStyle),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/crisis');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 6),
            ),
            child: Text(
              'Crisis Help',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
