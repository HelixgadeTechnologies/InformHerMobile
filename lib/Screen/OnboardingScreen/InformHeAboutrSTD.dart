import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inform_her/Screen/OnboardingScreen/Summary.dart';

class AboutSexualScreen extends StatefulWidget {
  const AboutSexualScreen({Key? key}) : super(key: key);

  @override
  State<AboutSexualScreen> createState() => _AboutSexualScreenState();
}

class _AboutSexualScreenState extends State<AboutSexualScreen> {
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
              "InformHer(About Sexual"
                  "Transmitted Diseases",
              style: GoogleFonts.workSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff7772D3)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Teens are  at high risk for contacting sexual"
                  " transmitted diseases. it only takes one time.",

              style: GoogleFonts.workSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff7772D3)),

            ),
            const SizedBox(height: 20,),
            Text("I’m sure you don’t want this for yourself, so what  are the things you want:",
              style: GoogleFonts.workSans(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff7772D3)),


            ),
            const SizedBox(height: 25,),

            Text("What i want for myself is::",
              style: GoogleFonts.workSans(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff7772D3)),


            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required";
                  } else {
                    return null;
                  }
                },
                style: const TextStyle(color: Color(0xff7772D3)),
                keyboardType: TextInputType.name,
                onSaved: (value) {},
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  border: InputBorder.none,
                  hintText: 'Separate each plan with comma (,) ',
                  helperStyle: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff7772D3)),
                  hintStyle: const TextStyle(
                    color: Color(0xff7772D3),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const  SummaryScreen () ));

              },
              child: Text("I'm set",
                style: GoogleFonts.workSans(fontSize: 14, fontWeight: FontWeight.w800, color: const Color(0xffFFFFFF)),


              ),
            )
          ],
        ),
      ),
    );
  }
}
