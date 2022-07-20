import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inform_her/Screen/OnboardingScreen/InformHeAboutrSTD.dart';
class DoYouKnowScreen extends StatefulWidget {
  const DoYouKnowScreen({Key? key}) : super(key: key);

  @override
  State<DoYouKnowScreen> createState() => _DoYouKnowScreenState();
}

class _DoYouKnowScreenState extends State<DoYouKnowScreen> {
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
              "Did you know?",
              style: GoogleFonts.workSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff7772D3)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Birth rate and STDs for teens are on the high side, if having "
                  "a baby or getting STD,s isn’t your plan right nowt ell"
                  " us 2 things you're passionate about.",

              style: GoogleFonts.workSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff7772D3)),

            ),
            const SizedBox(height: 20,),
            Text("I’m passionate about:",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const AboutSexualScreen() ));

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
