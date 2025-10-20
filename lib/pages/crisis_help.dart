import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/widgets/navbar.dart';
import 'package:url_launcher/url_launcher.dart';

class CrisisHelpWidget extends StatelessWidget {
  const CrisisHelpWidget({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint('Could not launch $url');
    }
  }

  Widget _resourceRow(String label, String action) {
    return Row(
      children: [
        Text(
          label,
          style: GoogleFonts.openSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF27567D),
          ),
        ),
        TextButton(
          onPressed: () {
            if (action.startsWith('tel:') || action.startsWith('sms:')) {
              _launchURL(action);
            }
          },
          child: Text(
            action.replaceAll(RegExp(r'tel:|sms:'), ''),
            style: GoogleFonts.inter(
              fontSize: 16,
              color: Color(0xFF51A2FF),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              NavBarWidget(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'This Is Not A Crisis Tool',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'This application is for wellness tracking and is not equipped to handle a crisis.\nIf you are in immediate danger or experiencing a mental health crisis, please reach out to a professional service.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF27567D),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Immediate Health Resources',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF27567D),
                            ),
                          ),
                          SizedBox(height: 8),
                          _resourceRow(
                            'National Suicide Prevention Lifeline:',
                            'tel:988',
                          ),
                          _resourceRow(
                            'Crisis Text Line: Text HOME to',
                            'sms:741741',
                          ),
                          _resourceRow('Emergency Services:', 'tel:911'),
                          SizedBox(height: 8),
                          Text(
                            'Remember, it\'s okay to ask for help',
                            style: GoogleFonts.openSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF27567D),
                            ),
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
