import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redditclone/core/constants/constant.dart';
import 'package:redditclone/features/auth/controllers/auth_controller.dart';
import 'package:redditclone/theme/pallete.dart';
//change the stateless widget to consumer widget and it will all us to access WidgetRef
//WidgetRef willl aloow my provider to interact with my widgets
class SinginButton extends ConsumerWidget {
  const SinginButton({super.key});

  void  signInWithGoogleFunction(WidgetRef ref){
    ref.read(authControllerProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
        onPressed: ()=> signInWithGoogleFunction(ref),
        icon: Image.asset(Constant.googlePath, width: 40,),
         label: const Text("Continue with Google", style: TextStyle(
          fontSize: 20,
         ),),
         style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.drawerColor,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
         ),),
    );
  }
}