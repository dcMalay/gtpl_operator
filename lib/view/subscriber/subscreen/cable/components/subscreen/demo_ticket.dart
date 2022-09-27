import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gtpl_operator/api_layer/model/get_ticket_model.dart';
import 'package:gtpl_operator/api_layer/networking.dart';
import 'package:gtpl_operator/const/const.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<GetTicket> tickets = [];
  String query = "";
  final TextEditingController _searchController = TextEditingController();
  Timer? debouncer;

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  void dispose() {
    debouncer?.cancel();
    super.dispose();
  }

  void debounce(VoidCallback callback,
      {Duration duration = const Duration(milliseconds: 1000)}) {
    if (debouncer != null) {
      debouncer!.cancel();
    }

    debouncer = Timer(duration, callback);
  }

  Future init() async {
    final tickets = await SearchApi.getTickets(query);
    setState(
      () => this.tickets = tickets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
      child: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {},
                ),
                hintText: 'Search by Id',
                border: const OutlineInputBorder(),
              ),
              onChanged: searchTicket,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: tickets.length,
                  itemBuilder: (context, index) {
                    final ticket = tickets[index];
                    return buildTicket(ticket);
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTicket(GetTicket ticket) {
    return Container(
        color: primaryColor,
        height: 100,
        width: 300,
        padding: const EdgeInsets.all(9),
        child: ListTile(
          title: Text(ticket.userId),
          subtitle: Text(ticket.description),
        ));
  }

  void searchTicket(String query) async => debounce(() async {
        final tickets = await SearchApi.getTickets(query);
        if (!mounted) return;
        setState(() {
          this.query = query;
          this.tickets = tickets;
        });
      });
}
