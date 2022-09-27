import 'package:flutter/material.dart';
import 'package:gtpl_operator/api_layer/model/get_ticket_model.dart';
import 'package:gtpl_operator/api_layer/networking.dart';
import 'package:gtpl_operator/const/const.dart';

class OperatorTicketView extends StatefulWidget {
  const OperatorTicketView({
    Key? key,
  }) : super(key: key);

  @override
  State<OperatorTicketView> createState() => _OperatorTicketViewState();
}

class _OperatorTicketViewState extends State<OperatorTicketView> {
  // Initial Selected Value
  String dropdownvalue = 'pending';
  final List<String> _items = ['pending', 'in-progress'];

  late Future<List<GetTicket>> futureData;

  @override
  void initState() {
    futureData = fetchTicketData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GetTicket>>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<GetTicket>? data = snapshot.data;
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data!.length,
              itemBuilder: (context, index) {
                var str = data[index].createdAt.toString();
                var parts = str.split(' ');
                var createdDate = parts[0].trim();
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 23,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: greyColor,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data[index].issueType,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                              Text(
                                'Subscriber Id - ${data[index].userId}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            padding: const EdgeInsets.only(
                                top: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: data[index].status == 'active'
                                  ? greenColor
                                  : redColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              data[index].status,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: greyColor),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 16,
                                  child: Container(
                                    height: 400.0,
                                    width: 360.0,
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  data[index].issueType,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: primaryColor,
                                                  ),
                                                ),
                                                Text(
                                                  'TK No. ${data[index].id}',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: primaryColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              createdDate,
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: primaryColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          'Ticket Details :',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Expanded(
                                          child: Scrollbar(
                                            thumbVisibility: true,
                                            child: ListView(
                                              children: [
                                                Text(data[index].description)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            DropdownButton(
                                              // Initial Value
                                              value: dropdownvalue,

                                              // Down Arrow Icon
                                              icon: const Icon(
                                                  Icons.keyboard_arrow_down),
                                              items: _items.map((String items) {
                                                return DropdownMenuItem<String>(
                                                  value: items,
                                                  child: Text(items),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                // setState(() {
                                                //   dropdownvalue = newValue!;
                                                // });
                                              },
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'Request Admin',
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            'View details',
                            style: TextStyle(
                              color: greyColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}
