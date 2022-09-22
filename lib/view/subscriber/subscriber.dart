import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/broadband/broadband.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/cable/cable_tv.dart';

class Subscriber extends StatelessWidget {
  const Subscriber({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
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
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    CableTv(),
                    BroadBand(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
