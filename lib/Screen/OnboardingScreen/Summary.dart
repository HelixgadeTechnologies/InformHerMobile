import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../DashBoardScreen/Home.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
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
              "Here’s your info Summary",
              style: GoogleFonts.workSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff7772D3)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "I’m Lale",
              style: GoogleFonts.workSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff7772D3)),

            ),
            const SizedBox(height: 20,),
            Text(
              "My passion included writing, spoken words, acting",
              style: GoogleFonts.workSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff7772D3)),

            ),
            const SizedBox(height: 20,),
            Text("And I want to be a great writer and also an award "
                "wining spoken word artist",
              style: GoogleFonts.workSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeDashboardScreen() ));

              },
              child: Text("Inform me",
                style: GoogleFonts.workSans(fontSize: 14, fontWeight: FontWeight.w800, color: const Color(0xffFFFFFF)),


              ),
            )
          ],
        ),
      ),
    );
  }
}
