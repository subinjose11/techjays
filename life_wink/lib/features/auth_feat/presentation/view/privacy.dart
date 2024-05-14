import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'create_acc.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    var assetsImage = const AssetImage('assets/img-2.png');
    var image = Image(image: assetsImage, fit: BoxFit.cover);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 450,
            child: image,
          ),
          const SizedBox(height: 24),
          Column(
            children: [
              const Text(
                "LifeWink Will Earn Your Trust",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 88,
                width: 316,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "LifeWink is dedicated to earning your absolute trust by respecting you and protecting your privacy while providing you with a truly meaningful experience.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MobileNumberVerificationScreen()),
                  );
                },
                style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size.fromWidth(350)),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: ' Terms of Services',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: ' and',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: ' Privacy policy',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
