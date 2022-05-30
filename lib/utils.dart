import 'package:appa/constants.dart';
import 'package:flutter/material.dart';

class AppUtils {
  profileScreenWidget({context, iconImage, mainText, detailsText, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: () {}, icon: Image.asset(iconImage)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: detailsText == "" ? MainAxisAlignment.center:MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  mainText,
                  style: const TextStyle(color: whiteColor, fontSize: 16),
                ),
                detailsText == "" ? Container():Text(
                  detailsText,
                  style: const TextStyle(color: greyColor, fontSize: 11),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: greyColor,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
