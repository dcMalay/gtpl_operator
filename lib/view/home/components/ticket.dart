import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';

class Ticket extends StatefulWidget {
  const Ticket({Key? key, required this.issueTitle}) : super(key: key);
  final String issueTitle;

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  // Initial Selected Value
  String dropdownvalue = 'pending';
  final List<String> _items = ['pending', 'in-progress'];
  @override
  Widget build(BuildContext context) {
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.issueTitle,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    'TK No. 123456',
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              Text(
                '12/10/21',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 250,
                child: Text(
                  'Subscriber #1234556 raised a issue for "website not opening" ',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 15,
                    color: greyColor,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone_forwarded_outlined,
                  color: greenColor,
                  size: 30,
                ),
              ),
            ],
          ),
          InkWell(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.issueTitle,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Text(
                                    'TK No. 123456',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '12/10/21',
                                style: TextStyle(
                                  fontSize: 14,
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
                                children: const [
                                  Text(
                                      'customer detaissdfjklebrfjfebfljbhrjhbfkjrhebfuqkbgfliqregfqueirgfbkquerfkuqerbhfkueybfkurhjebrmndcbladfjlibroluqreolughqiurgeqruefjhbfrhefuefjsbckjgafileglige;igGFBIYWEUOCTGOUYTGOUCBTORUOOUouebgogcnogruygfukejkdfkahrflureilgkksbclkiuegiortoufhvfurehewfuklfjewhkuekjugaeswghfkasghfuksgfruetgfruefguergfkue'),
                                  Text(
                                      'customer detaissdfjklebrfjfebfljbhrjhbfkjrhebfuqkbgfliqregfqueirgfbkquerfkuqerbhfkueybfkurhjebrmndcbladfjlibroluqreolughqiurgeqruefjhbfrhefuefjsbckjgafileglige;igGFBIYWEUOCTGOUYTGOUCBTORUOOUouebgogcnogruygfukejkdfkahrflureilgkksbclkiuegiortoufhvfurehewfuklfjewhkuekjugaeswghfkasghfuksgfruetgfruefguergfkue'),
                                  Text(
                                      'customer detaissdfjklebrfjfebfljbhrjhbfkjrhebfuqkbgfliqregfqueirgfbkquerfkuqerbhfkueybfkurhjebrmndcbladfjlibroluqreolughqiurgeqruefjhbfrhefuefjsbckjgafileglige;igGFBIYWEUOCTGOUYTGOUCBTORUOOUouebgogcnogruygfukejkdfkahrflureilgkksbclkiuegiortoufhvfurehewfuklfjewhkuekjugaeswghfkasghfuksgfruetgfruefguergfkue'),
                                  Text(
                                      'customer detaissdfjklebrfjfebfljbhrjhbfkjrhebfuqkbgfliqregfqueirgfbkquerfkuqerbhfkueybfkurhjebrmndcbladfjlibroluqreolughqiurgeqruefjhbfrhefuefjsbckjgafileglige;igGFBIYWEUOCTGOUYTGOUCBTORUOOUouebgogcnogruygfukejkdfkahrflureilgkksbclkiuegiortoufhvfurehewfuklfjewhkuekjugaeswghfkasghfuksgfruetgfruefguergfkue'),
                                  Text(
                                      'customer detaissdfjklebrfjfebfljbhrjhbfkjrhebfuqkbgfliqregfqueirgfbkquerfkuqerbhfkueybfkurhjebrmndcbladfjlibroluqreolughqiurgeqruefjhbfrhefuefjsbckjgafileglige;igGFBIYWEUOCTGOUYTGOUCBTORUOOUouebgogcnogruygfukejkdfkahrflureilgkksbclkiuegiortoufhvfurehewfuklfjewhkuekjugaeswghfkasghfuksgfruetgfruefguergfkue'),
                                  Text(
                                      'customer detaissdfjklebrfjfebfljbhrjhbfkjrhebfuqkbgfliqregfqueirgfbkquerfkuqerbhfkueybfkurhjebrmndcbladfjlibroluqreolughqiurgeqruefjhbfrhefuefjsbckjgafileglige;igGFBIYWEUOCTGOUYTGOUCBTORUOOUouebgogcnogruygfukejkdfkahrflureilgkksbclkiuegiortoufhvfurehewfuklfjewhkuekjugaeswghfkasghfuksgfruetgfruefguergfkue'),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButton(
                                // Initial Value
                                value: dropdownvalue,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),
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
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  'Request Admin',
                                  style: TextStyle(
                                      color: whiteColor, fontSize: 16),
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
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(5)),
              child: Text(
                'view',
                style: TextStyle(color: whiteColor, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
