import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/cable/components/operatorticketview.dart';
import 'package:gtpl_operator/view/subscriber/subscreen/cable/components/subscriber_details.dart';

class CableTv extends StatefulWidget {
  const CableTv({super.key});

  @override
  State<CableTv> createState() => _CableTvState();
}

class _CableTvState extends State<CableTv> {
  final List<bool> _selectedStatus = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'Total Subscriber',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '122',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              // suffixIcon: IconButton(
              //   icon: const Icon(Icons.clear),
              //   onPressed: () {
              //     /* Clear the search field */
              //   },
              // ),
              hintText: 'Search by Name/Id',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedStatus[0] = true;
                    _selectedStatus[1] = false;
                    _selectedStatus[2] = false;
                  });
                },
                child: Container(
                  height: 40,
                  width: 50,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(left: 17, top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      color: _selectedStatus[0] ? primaryColor : whiteColor,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'All',
                    style: TextStyle(
                      color: _selectedStatus[0] ? whiteColor : primaryColor,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedStatus[0] = false;
                    _selectedStatus[1] = !_selectedStatus[1];
                    _selectedStatus[2] = false;
                  });
                },
                child: Container(
                  height: 40,
                  width: 70,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(left: 17, top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      color: _selectedStatus[1] ? primaryColor : whiteColor,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Active',
                    style: TextStyle(
                      color: _selectedStatus[1] ? whiteColor : primaryColor,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedStatus[0] = false;
                    _selectedStatus[1] = false;
                    _selectedStatus[2] = !_selectedStatus[2];
                  });
                },
                child: Container(
                  height: 40,
                  width: 85,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(left: 17, top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      color: _selectedStatus[2] ? primaryColor : whiteColor,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Inactive',
                    style: TextStyle(
                      color: _selectedStatus[2] ? whiteColor : primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const OperatorTicketView(
          issueTitle: 'service issue',
          status: 'active',
        ),
        const OperatorTicketView(
          issueTitle: 'service issue',
          status: 'inactive',
        ),
        const OperatorTicketView(
          issueTitle: 'service issue',
          status: 'active',
        ),
        // const OperatorTicketView(
        //   issueTitle: 'service issue',
        //   status: 'inactive',
        // ),
        // const OperatorTicketView(
        //   issueTitle: 'service issue',
        //   status: 'active',
        // ),
        // const OperatorTicketView(
        //   issueTitle: 'service issue',
        //   status: 'inactive',
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Individual enquiry',
                style: TextStyle(
                  color: blackColor,
                  fontSize: 18,
                ),
              ),
              Text(
                'Enter subscriber ID or name to see details',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "eg. priya",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Location',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "eg. phoolbagan",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 10,
                  ),
                  color: primaryColor,
                  child: const Text('Proceed'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SubscriberDetails(
                          subscriberName: 'Priya',
                          subscriberLocation: 'subscriberLocation');
                    }));
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
