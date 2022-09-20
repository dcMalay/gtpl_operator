import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/cable_tv.dart';

class Subscriber extends StatelessWidget {
  const Subscriber({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: primaryColor,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "QuickPay",
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Center(
                child: Text(
              "Enter your details to recharge",
              style: TextStyle(color: greyColor),
            )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 2,
                        color: primaryColor.withOpacity(0.1))
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TabBar(
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
                    ]),
              ),
            ),
            const Expanded(
              child: TabBarView(children: [
                CableTv(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
