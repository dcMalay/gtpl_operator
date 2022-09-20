import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';
import 'package:gtpl_operator/view/myaccount/manage%20tickets/manage_tickets.dart';
import 'package:ionicons/ionicons.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(500, 30),
                bottomRight: Radius.elliptical(500, 20),
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF003A97),
                  Color(0xFF3B80CD),
                  Color(0xFF8CD0FD)
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    //MediaQ ka jo kaam h size ke sth kuch bhi kr skte h jo chahiye more importance for me this mediaQ.
                    height: MediaQuery.of(context).padding.top + 30,
                  ),
                  Text(
                    'My Account',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: whiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        child: Image.network(
                          'https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png',
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "XYZ123",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '09298418564',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 201, 234, 255),
                child: Icon(
                  Icons.location_on_outlined,
                  color: blackColor,
                ),
              ),
              title: const Text(
                'Operation Area',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: const Text('Location Setup,subscriber account'),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const ManageTicket(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                              begin: const Offset(1, 0), end: Offset.zero)
                          .animate(animation),
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 201, 234, 255),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: blackColor,
                  ),
                ),
                title: const Text(
                  'Manage Ticket request ',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: const Text('see your plan details'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 201, 234, 255),
                child: Icon(
                  Icons.settings_outlined,
                  color: blackColor,
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: const Text('Edit profile,notifications,password'),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 201, 234, 255),
                child: Icon(
                  Ionicons.globe_outline,
                  color: blackColor,
                ),
              ),
              title: const Text(
                'About Us',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: const Text('History,our goals,and T&C'),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Center(
            child: CupertinoButton(
              color: const Color.fromARGB(255, 201, 234, 255),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: primaryColor,
                  ),
                  Text(
                    'Log out',
                    style: TextStyle(color: primaryColor),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
