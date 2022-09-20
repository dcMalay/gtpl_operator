import 'package:flutter/material.dart';
import 'package:gtpl_operator/view/home/components/ticket.dart';

class ManageTicket extends StatelessWidget {
  const ManageTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Manage tickets requests',
            style: TextStyle(
              color: Colors.black,
            ),
          )),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            child: Text(
              'Tickets:',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Ticket(issueTitle: 'Service Issue'),
          Ticket(issueTitle: 'Service Issue'),
          Ticket(issueTitle: 'Service Issue'),
          Ticket(issueTitle: 'Service Issue'),
          Ticket(issueTitle: 'Service Issue'),
          Ticket(issueTitle: 'Service Issue'),
          Ticket(issueTitle: 'Service Issue'),
          Ticket(issueTitle: 'Service Issue'),
        ],
      ),
    );
  }
}
