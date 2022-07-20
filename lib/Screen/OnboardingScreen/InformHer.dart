import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Screen/AuthScreen/SignUp.dart';

class InformHerScreen extends StatefulWidget {
  const InformHerScreen({Key? key}) : super(key: key);

  @override
  State<InformHerScreen> createState() => _InformHerScreenState();
}

class _InformHerScreenState extends State<InformHerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xffF2F2F2),
      body: Container(
        margin: const EdgeInsets.only(top: 100),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey",
              style: GoogleFonts.workSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff7772D3)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Understanding your"
                  " body can be stressful. InformHer"
                  " is here to help. We want to help you make informed decision "
                  "about sex and how it affected your body & sharpens your future",
              style: GoogleFonts.workSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff7772D3)),

            ),
            const SizedBox(height: 20,),
            Text("Lets start by knowing a little about you",
              style: GoogleFonts.workSans(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff7772D3)),


            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>( const Color(0xff7772D3)),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),


                    )

                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpIntro() ));

              },
              child: Text("Continue",
                style: GoogleFonts.workSans(fontSize: 14, fontWeight: FontWeight.w800, color: const Color(0xffFFFFFF)),


              ),
            )
          ],
        ),
      ),
    );
  }
}
