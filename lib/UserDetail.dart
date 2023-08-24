import 'package:flutter/material.dart';

import 'models/user.dart';

class UserDetail extends StatelessWidget {
  final User user;
  const UserDetail({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.username,
          style: const TextStyle(
            color: Color(0xFFFFC286),
          ),
        ),
        backgroundColor: const Color(0xFF395144),
      ),
      body: Container(
        color: const Color(0xFF3C6255),
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            userPersonal(),
            userCompany(),
            Row(children: <Widget>[
              userlocation(),
              userwebsite(),
            ]),
            userGEO(),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget userPersonal() {
    return Card(
      color: const Color(0xFF395144),
      child: Padding(
        padding: const EdgeInsets.only(left: 60, right: 60, top: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.account_circle_sharp,
              size: 100,
              color: Color(0xFFF3FDE8),
            ),
            const SizedBox(width: 40),
            const Padding(padding: EdgeInsets.all(4.0)),
            Text(
              user.name,
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFFBCE29E),
                  fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.all(4.0)),
            // const Padding(padding: EdgeInsets.all(4.0)),
            // Text(user.username),
            Text(
              user.phone,
              style: const TextStyle(
                  fontSize: 15, color: Color.fromARGB(145, 243, 253, 232)),
            ),
            const Padding(padding: EdgeInsets.all(4.0)),
          ],
        ),
      ),
    );
  }

  Widget userCompany() {
    return Card(
      color: const Color(0xFF395144),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          width: 500,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.work,
                      size: 40,
                      color: Color(0xFFF3FDE8),
                    ),
                    const SizedBox(
                        width: 55), // Add some spacing between Icon and Text
                    Text(
                      user.company.name,
                      style: const TextStyle(
                          fontSize: 20, color: Color(0xFFF3FDE8)),
                    ),
                  ],
                ),
              ),
              Text(
                user.company.bs,
                style: const TextStyle(fontSize: 20, color: Color(0xFFF3FDE8)),
              ),
              Text(
                user.company.catchPhrase,
                style: const TextStyle(fontSize: 20, color: Color(0xFFF3FDE8)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userlocation() {
    return Card(
      color: const Color(0xFF395144),
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: SizedBox(
          width: 175,
          height: 90,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_city_sharp,
                      size: 30,
                      color: Color(0xFFF3FDE8),
                    ),
                    const SizedBox(
                        width: 10), // Add some spacing between Icon and Text
                    Text(
                      "${user.address.suite} ${user.address.street}",
                      style: const TextStyle(
                          fontSize: 13, color: Color(0xFFF3FDE8)),
                    ),
                  ],
                ),
              ),
              Text(
                user.address.city,
                style: const TextStyle(fontSize: 10, color: Color(0xFFF3FDE8)),
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              Text(
                user.address.zipcode,
                style: const TextStyle(
                    fontSize: 10,
                    color: Color(0xFFF3FDE8),
                    letterSpacing: VisualDensity.maximumDensity),
              ),
              const Padding(padding: EdgeInsets.all(4.0)),
            ],
          ),
        ),
      ),
    );
  }

  Widget userwebsite() {
    return Card(
      color: const Color(0xFF395144),
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: SizedBox(
          width: 175,
          height: 90,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.web_asset,
                      size: 25,
                      color: Color(0xFFF3FDE8),
                    ),
                    const SizedBox(
                        width: 15), // Add some spacing between Icon and Text
                    Text(
                      user.website,
                      style: const TextStyle(
                          fontSize: 13, color: Color(0xFFF3FDE8)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.email_sharp,
                      size: 25,
                      color: Color(0xFFF3FDE8),
                    ),
                    const SizedBox(
                        width: 15), // Add some spacing between Icon and Text
                    Text(
                      user.email,
                      style: const TextStyle(
                          fontSize: 13, color: Color(0xFFF3FDE8)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.phone_in_talk_sharp,
                      size: 25,
                      color: Color(0xFFF3FDE8),
                    ),
                    const SizedBox(
                        width: 15), // Add some spacing between Icon and Text
                    Text(
                      user.phone,
                      style: const TextStyle(
                          fontSize: 10, color: Color(0xFFF3FDE8)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userGEO() {
    return Card(
      color: const Color(0xFF395144),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          width: 500,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on_rounded,
                      size: 30,
                      color: Color(0xFFF3FDE8),
                    ),
                    const SizedBox(
                        width: 55), // Add some spacing between Icon and Text
                    Text(
                      "${user.address.geo.lat} | ${user.address.geo.lng}",
                      style: const TextStyle(
                          fontSize: 20, color: Color(0xFFF3FDE8)),
                    ),
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
