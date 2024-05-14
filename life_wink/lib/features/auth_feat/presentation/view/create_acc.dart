import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:verify_number/core/widgets/privacy_agreement.dart';
import 'package:verify_number/features/auth_feat/data/country_data.dart';
import 'package:verify_number/features/auth_feat/presentation/providers/state_providers.dart';
import 'package:verify_number/features/auth_feat/presentation/view/otp_verification.dart';

class MobileNumberVerificationScreen extends ConsumerWidget {
  const MobileNumberVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var _phoneNumberController = TextEditingController();
    var _codeController = TextEditingController();

    final searchQuery = ref.watch(searchQueryProvider);
    final filteredCountries = getCountries(searchQuery);
    final _expand = ref.watch(expandProvider);
    final countryCode = ref.watch(countryCodeProvider);
    final _isColor = ref.watch(buttonColorProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 100),
            Text(
              "Log In or Sign Up",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900]),
            ),
            SizedBox(height: 4),
            const Text(
              "Please enter your phone number to continue",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16),
            const Text(
              "Phone number",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 80,
                  height: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'code',
                      prefixIcon: Icon(Icons.flag),
                    ),
                    onChanged: (value) {
                      ref.read(searchQueryProvider.notifier).updateQuery(value);
                    },
                    onTap: () {
                      ref.read(expandProvider.notifier).state = true;
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Text(countryCode),
                const SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 235,
                  child: TextField(
                    //initialValue: _phoneNumberController.text,
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '(000)000-0000',
                    ),
                    onChanged: (value) {
                      (value.length == 10)
                          ? ref.read(buttonColorProvider.notifier).state = true
                          : ref.read(buttonColorProvider.notifier).state =
                              false;
                      _phoneNumberController.text = value;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            if (filteredCountries.isNotEmpty && _expand)
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox();
                  },
                  shrinkWrap: true,
                  itemCount: filteredCountries.length,
                  itemBuilder: (context, index) {
                    final country = filteredCountries[index];
                    return ListTile(
                      title: Text(country['name']),
                      trailing: Text(country["phoneCode"]),
                      onTap: () {
                        ref.read(countryCodeProvider.notifier).state =
                            country["phoneCode"];
                        ref.read(expandProvider.notifier).state = false;
                      },
                    );
                  },
                ),
              ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OtpVerification()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    _isColor ? Colors.blue : Colors.grey),
              ),
              child: const Text(
                'Send verification code',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: PrivacyAgreement(),
            ),
          ],
        ),
      ),
    );
  }
}
