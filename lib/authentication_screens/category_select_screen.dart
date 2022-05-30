import 'package:flutter/material.dart';
import '../constants.dart';

class CategorySelectionPage extends StatefulWidget {
  const CategorySelectionPage({Key? key}) : super(key: key);

  @override
  State<CategorySelectionPage> createState() => _CategorySelectionPageState();
}

class _CategorySelectionPageState extends State<CategorySelectionPage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Who would you like to sign in as?",
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 18,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    selected = 0;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 250,
                    width: 155,
                    decoration: BoxDecoration(
                      border: Border.all(color: selected == 0 ? orangeColor : greyColor, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/user.png")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    selected = 1;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 250,
                    width: 155,
                    decoration: BoxDecoration(
                      border: Border.all(color: selected == 1 ? orangeColor : greyColor, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/driver.png")
                      ],
                    ),
                  ),
                ),

              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, userProfileScreenRoute);
                },
                child: Container(
                  width: 115,
                  height: 48,
                  decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("Next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
