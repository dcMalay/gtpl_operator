import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/broadband/broadband.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/cable/cable_tv.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/cable/components/subscreen/cable_screen.dart';

class SubscriberDetails extends StatelessWidget {
  const SubscriberDetails({
    Key? key,
    required this.subscriberName,
    required this.subscriberLocation,
  }) : super(key: key);
  final String subscriberName;
  final String subscriberLocation;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Subscriber $subscriberName",
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Id :#21323",
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: greenColor,
                      ),
                    ),
                  ),
                  child: Text(
                    "Chat",
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: whiteColor,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Connection given in ',
                    style: TextStyle(
                      fontSize: 16,
                      color: whiteColor,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    child: Text(
                      'Phoolbagan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'General Info',
              style: TextStyle(
                color: blackColor,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Text(
                  'Identification type',
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Adhaar card',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Identification Number',
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '1223090482048029',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Address Verification',
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Ration card',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: primaryColor,
              indicator: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              tabs: [
                Tab(
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.live_tv),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Cable TV")
                    ],
                  ),
                ),
                Tab(
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.indeterminate_check_box),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Broadband")
                    ],
                  ),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  CableScreen(),
                  BroadBand(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
