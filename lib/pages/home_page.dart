import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/widgets/navbar.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              NavBarWidget(), // pure Flutter nav bar
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Hello There.',
                                style: GoogleFonts.interTight(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF27567D),
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Ready for your daily moment of \nreflection?',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF5D82A2),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/check-in');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF27567D),
                              padding: EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: Text(
                              'Start Today\'s Check-in',
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Your current Streak',
                            style: GoogleFonts.openSans(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF5D82A2),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '7',
                                style: GoogleFonts.openSans(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF27567D),
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Days',
                                style: GoogleFonts.interTight(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF5D82A2),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
