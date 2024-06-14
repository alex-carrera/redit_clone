import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redit_clone/core/constants/constants.dart';
import 'package:redit_clone/features/auth/controller/auth_controller.dart';
import 'package:redit_clone/theme/pallete.dart';

class SingInButtom extends ConsumerWidget {
  const SingInButtom({super.key});

  void singInWithGoogle(WidgetRef ref) {
    ref.read(authControllerProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton.icon(
        onPressed: () => singInWithGoogle(ref),
        icon: Image.asset(
          Constants.googlePath,
          width: 35,
        ),
        label: const Text(
          'Continue with Google',
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.greyColor,
        ),
      ),
    );
  }
}
