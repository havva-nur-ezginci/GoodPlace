import 'package:firebase_auth/firebase_auth.dart';
import 'package:good_place/core/resourcers/error_texts.dart';
import 'package:good_place/core/resourcers/firebase_utils.dart';
import 'package:good_place/core/utils/widgets/custom_toast.dart';
import 'package:good_place/logger.dart';

import 'google_sign_in.dart';

class AuthService extends FirebaseUtils {
  // Register
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      await firebaseAuth.currentUser?.updateDisplayName(name);

      // TODo: add user - kullanıcı kayıt olduğunda buradan add yapabiliriz.

      //  UserDatabaseService().addUser();
    } on FirebaseAuthException catch (e) {
      Toast.errToast(title: AppErrorText.errorMessageConverter(e.code));
    } catch (e) {
      Toast.errToast(title: AppErrorText.errorMessageConverter(e.toString()));
    }
  }

  // Login
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Toast.errToast(title: AppErrorText.errorMessageConverter(e.code));
    } catch (e) {
      print('Sign In Error: $e');
    }
  }

  Future<void> signOut() async {
    try {
      if (googleSignIn.currentUser != null) {
        await googleSignIn.signOut();
      }
      await firebaseAuth.signOut();
    } catch (e) {
      logger.e(e);
      Toast.errToast(title: e.toString());
    }
  }

  Future<void> deleteUser() async {
    try {
      await firebaseAuth.currentUser!.delete();
    } on Exception catch (e) {
      logger.e(e);
      Toast.errToast(title: e.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final OAuthCredential credential = await GoogleSignInService().signIn();
      await firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      Toast.errToast(title: AppErrorText.errorMessageConverter(e.code));
    } catch (e) {
      logger.e(e);
      Toast.errToast(title: e.toString());
    }
  }

// ileride anonim kullanıcı girişi eklemek istersek kullanabiliriz.
/* 
  Future<User?> signInAnonymously() async {
    final UserCredential userCredential =
        await _firebaseAuth.signInAnonymously();
    return userCredential.user;
  }
*/

/*
  Future<void> sendPasswordResetEmail({required String email}) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> confirmPasswordReset({
    required String code,
    required String newPassword,
  }) async {
    await _firebaseAuth.confirmPasswordReset(
        code: code, newPassword: newPassword);
  }
*/
}
