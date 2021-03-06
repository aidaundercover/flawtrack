import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flawtrack/views/auth/linknosent.dart';
import 'package:flutter/material.dart';
import 'package:flawtrack/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../const.dart';

class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final auth = FirebaseAuth.instance;
  User? user;
  late Timer timer;

  @override
  void initState() {
    user = auth.currentUser;
    auth.currentUser!.sendEmailVerification();

    timer = Timer.periodic(Duration(minutes: 5), (timer) {
      checkEmailVerified();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightYellow,
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context).emailwassend,
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${user!.email}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      AppLocalizations.of(context).changeemail,
                    )),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {},
                    child: Text(AppLocalizations.of(context).resendlink)),
                SizedBox(height: 20),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (cotext) => LinkNoSent()));
                    },
                    child: Text(
                      AppLocalizations.of(context).linkwasnsent,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )),
      ),
    );
  }

  Future<void> checkEmailVerified() async {
    user = auth.currentUser;
    await auth.currentUser!.reload();
    if (auth.currentUser!.emailVerified) {
      timer.cancel();
      Navigator.pushReplacementNamed(context, AppRoutes.homeVolunteer);
    } else {
      user!.delete();
    }
  }
}
