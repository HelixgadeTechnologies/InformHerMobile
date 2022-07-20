
import 'package:firebase_auth/firebase_auth.dart';

class AuthClass {
FirebaseAuth  auth = FirebaseAuth.instance;

  // creating an account
 Future  createAccount ({required String email, required String password, required String name}) async {
   try {
     await auth.createUserWithEmailAndPassword(
       email: email,
       password: password,
     );

     auth.currentUser!.updateDisplayName(name);

     return "Account Created";

   } on FirebaseAuthException catch (e) {
     if (e.code == 'weak-password') {
       return 'The password provided is too weak.';
     } else if (e.code == 'email-already-in-use') {
       return 'The account already exists for that email.';
     }
   } catch (e) {
     return "Error Occurred";
   }

}





//sign in user
  Future signIN ({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return "welcome";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }

  }





//reset password
  Future<String> resetPassword ({required String email,}) async {
    try {
      await auth.sendPasswordResetEmail(
          email: email,
      );
      return "Email sent";
    } on FirebaseException catch(e){
      return e.code;
    }
    catch (e) {
      return "Error Occurred";
    }

  }

  // sign out

  void signOut() {
    auth.signOut();
  }




}

