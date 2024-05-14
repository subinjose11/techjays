import 'dart:js_interop';
import 'package:flutter/cupertino.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../providers/state_providers.dart';

class OtpVerification extends ConsumerWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    OtpTimerButtonController controller = OtpTimerButtonController();
    var _codeController = TextEditingController();
    final _isColor = ref.watch(buttonColorProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 100),
            const Text(
              "Verify phone number",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 4),
            const Text(
              "The OTP has been sent to +91 **********",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 24),
            Container(
              height: 100,
              // width: 235,
              child: TextFormField(
                maxLength: 6,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '0-0-0-0-0-0',
                ),
                onChanged: (value) {
                  (value.length == 6)
                      ? ref.read(buttonColorProvider.notifier).state = true
                      : ref.read(buttonColorProvider.notifier).state = false;
                },
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: OtpTimerButton(
                buttonType: ButtonType.text_button,
                controller: controller,
                onPressed: () {},
                text: const Text('Resend OTP'),
                duration: 15,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              statesController: MaterialStatesController(),
              onPressed: _isColor ? () => {} : null,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    _isColor ? Colors.blue : Colors.grey),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
