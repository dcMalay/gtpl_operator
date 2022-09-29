import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';
import 'package:timelines/timelines.dart';

class TicketTimeline extends StatefulWidget {
  const TicketTimeline({super.key});

  @override
  State<TicketTimeline> createState() => _TicketTimelineState();
}

class _TicketTimelineState extends State<TicketTimeline> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimelineTile(
          contents: Card(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text('29/09/2022 23.09 ')),
          ),
          node: const TimelineNode(
            indicator: OutlinedDotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),
        SizedBox(
          height: 80.0,
          width: 300,
          child: TimelineNode(
            indicator: Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ticket Id:#203934641387",
                          style: TextStyle(color: primaryColor),
                        ),
                        Text(
                          "Billing issue",
                          style: TextStyle(color: primaryColor),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: greyColor,
                              ),
                            ),
                          ),
                          child: Text(
                            "ticket recived",
                            style: TextStyle(color: greyColor),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.check_box_outlined,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            startConnector: const DashedLineConnector(),
            endConnector: const SolidLineConnector(),
          ),
        ),
        TimelineTile(
          contents: Card(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text('29/09/2022 23.09 ')),
          ),
          node: const TimelineNode(
            indicator: OutlinedDotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),
        SizedBox(
          height: 80.0,
          width: 300,
          child: TimelineNode(
            indicator: Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ticket Id:#203934641387",
                          style: TextStyle(color: primaryColor),
                        ),
                        Text(
                          "Billing issue",
                          style: TextStyle(color: primaryColor),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: greyColor,
                              ),
                            ),
                          ),
                          child: Text(
                            "ticket in-process",
                            style: TextStyle(color: greyColor),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.check_box_outlined,
                      color: greenColor,
                    ),
                  ],
                ),
              ),
            ),
            startConnector: const DashedLineConnector(),
            endConnector: const SolidLineConnector(),
          ),
        ),
        TimelineTile(
          contents: Card(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text('29/09/2022 23.09 ')),
          ),
          node: const TimelineNode(
            indicator: OutlinedDotIndicator(),
            startConnector: SolidLineConnector(),
            endConnector: SolidLineConnector(),
          ),
        ),
        SizedBox(
          height: 80.0,
          width: 300,
          child: TimelineNode(
            indicator: Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ticket Id:#203934641387",
                          style: TextStyle(color: primaryColor),
                        ),
                        Text(
                          "Billing issue",
                          style: TextStyle(color: primaryColor),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: greyColor,
                              ),
                            ),
                          ),
                          child: Text(
                            "ticket closed",
                            style: TextStyle(color: greyColor),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.file_upload_outlined,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            startConnector: const DashedLineConnector(),
            endConnector: const SolidLineConnector(),
          ),
        )
      ],
    );
  }
}
