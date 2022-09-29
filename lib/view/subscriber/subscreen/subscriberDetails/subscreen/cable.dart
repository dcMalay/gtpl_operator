import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';

class Cable extends StatefulWidget {
  const Cable({super.key});

  @override
  State<Cable> createState() => _CableState();
}

class _CableState extends State<Cable> {
  double feedbackrate = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: greyColor),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "129",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Package Name",
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "134",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Channels subbed",
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "28",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Validity",
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        Slider(
          min: 0.0,
          max: 100.0,
          value: feedbackrate,
          activeColor: primaryColor,
          thumbColor: primaryColor,
          inactiveColor: const Color.fromARGB(255, 199, 225, 247),
          onChanged: (value) {
            setState(() {
              feedbackrate = value;
              print(feedbackrate);
            });
          },
        ),
        Text(
          "14 days remain",
          style: TextStyle(
            color: greyColor,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            SizedBox(
              width: 150,
              height: 50,
              child: CupertinoButton(
                  color: primaryColor,
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "Renewal",
                    style: TextStyle(color: whiteColor),
                  ),
                  onPressed: () {}),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(8)),
              child: CupertinoButton(
                  color: whiteColor,
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "Change Pack",
                    style: TextStyle(color: primaryColor),
                  ),
                  onPressed: () {}),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              width: 1,
              color: greyColor,
            ),
          )),
          child: Text(
            'Send push notification',
            style: TextStyle(
              fontSize: 14,
              color: greyColor,
            ),
          ),
        )
      ]),
    );
  }
}
