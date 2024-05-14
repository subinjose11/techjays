import 'package:flutter/material.dart';
import 'package:verify_number/features/auth_feat/presentation/view/privacy.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    var assetsImage = const AssetImage('assets/img-1.png');
    var image = Image(image: assetsImage, fit: BoxFit.cover);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: image,
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Column(
                children: [
                  const Text(
                    "Easily and Safely Create Your Timeless Video, Photo, Audio and Written LifeWinks",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Let’s get started creating your timeless Video LifeWinks, Photo LifeWinks, Audio LifeWinks and Written LifeWinks.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Privacy()),
                      );
                    },
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size.fromWidth(500)),
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
