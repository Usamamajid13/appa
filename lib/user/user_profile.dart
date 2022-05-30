import 'package:appa/constants.dart';
import 'package:appa/utils.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 14, color: backgroundColor),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/profilePic.png"),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 14, color: orangeColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Martin, Horowitz",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "+1(518)873-3369",
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Setting up Appa",
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                AppUtils().profileScreenWidget(
                  context: context,
                  detailsText: "Last Updated on 1 Jan 1970",
                  mainText: "Password",
                  onTap: () {},
                  iconImage: "assets/lock.png",
                ),
                AppUtils().profileScreenWidget(
                  context: context,
                  detailsText: "martinhorowitz@gmail.com",
                  mainText: "Your Email",
                  onTap: () {},
                  iconImage: "assets/email.png",
                ),
                AppUtils().profileScreenWidget(
                  context: context,
                  detailsText:
                      "Add debit/credit card, or deposit into your appa wallet",
                  mainText: "Payments",
                  onTap: () {},
                  iconImage: "assets/payments.png",
                ),
                AppUtils().profileScreenWidget(
                  context: context,
                  detailsText: "Get discounted deliveries",
                  mainText: "Promotional Codes",
                  onTap: () {},
                  iconImage: "assets/promoCode.png",
                ),
                AppUtils().profileScreenWidget(
                  context: context,
                  detailsText: "",
                  mainText: "Communication Preferences",
                  onTap: () {},
                  iconImage: "assets/communications.png",
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 384,
                  height: 83,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Become a dispatcher",
                            style: const TextStyle(color: whiteColor, fontSize: 16,fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "It's as easy as following this steps",
                            style: const TextStyle(color: whiteColor, fontSize: 13),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward,color: whiteColor,size: 25,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Logout",
                  style: const TextStyle(color: redColor, fontSize: 12,fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
