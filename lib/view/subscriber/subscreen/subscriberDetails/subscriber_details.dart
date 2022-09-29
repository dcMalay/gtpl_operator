import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/broadband/broadband.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/subscriberDetails/subscreen/cable.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/subscriberDetails/ticket_timeline.dart';

class SubscriberDetails extends StatefulWidget {
  const SubscriberDetails({super.key});

  @override
  State<SubscriberDetails> createState() => _SubscriberDetailsState();
}

class _SubscriberDetailsState extends State<SubscriberDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: blackColor,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const ListTile(
                title: Text('Priya Sarker'),
                subtitle: Text('Id: 123782893'),
                trailing: Text('Chat'),
              ),
              Row(
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
                    'You are Operating in ',
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
              Text(
                "General Info",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: blackColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Identification type",
                    style: TextStyle(
                      color: greyColor,
                    ),
                  ),
                  Text(
                    "Adhaar Card",
                    style: TextStyle(
                      color: blackColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Identification type",
                    style: TextStyle(
                      color: greyColor,
                    ),
                  ),
                  Text(
                    "Adhaar Card",
                    style: TextStyle(
                      color: blackColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Identification type",
                    style: TextStyle(
                      color: greyColor,
                    ),
                  ),
                  Text(
                    "Adhaar Card",
                    style: TextStyle(
                      color: blackColor,
                    ),
                  )
                ],
              ),
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
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 250,
                width: 400,
                child: TabBarView(
                  children: [
                    Cable(),
                    BroadBand(),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Ticket History",
                style: TextStyle(
                  color: greyColor,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 400,
                child: TicketTimeline(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
