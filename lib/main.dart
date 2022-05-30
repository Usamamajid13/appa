import 'package:appa/authentication_screens/enter_phone_number_screen.dart';
import 'package:flutter/material.dart';

import 'authentication_screens/category_select_screen.dart';
import 'constants.dart';
import 'user/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appa',
      initialRoute: enterNumberScreenRoute,
      routes: {
        categorySelectionScreenRoute: (context) => const CategorySelectionPage(),
        userProfileScreenRoute: (context) => const UserProfileScreen(),
        enterNumberScreenRoute: (context) => const EnterPhoneNumberScreen(),

      },
    );
  }
}
