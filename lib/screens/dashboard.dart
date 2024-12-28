import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/blood_log.dart';
import 'package:flutter_application_7/screens/donors_page.dart';
import 'package:flutter_application_7/screens/geolocation.dart';
import 'package:flutter_application_7/screens/login.dart';
import 'package:flutter_application_7/screens/person_details.dart';
import 'package:flutter_application_7/screens/qr_scan.dart';
import 'package:flutter_application_7/screens/recent_avt_screen.dart';
import 'package:flutter_application_7/widget/Button_box.dart';
import 'package:flutter_application_7/widget/banner.dart';
import 'package:flutter_application_7/widget/recent_avt.dart';

import '../widget/avatar_card.dart';
import 'map_page.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        centerTitle: true,
        backgroundColor: Color.fromARGB(222, 37, 18, 246),
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: <Widget>[
              Text(
                'Hi Saman Perera',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                'A negative Donor',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: IconButton(
              icon: const Icon(Icons.login),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_screen()));
              },
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(15), child: Container()),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(222, 37, 18, 246),
              ),
              child: AvatarCard(),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dashboard())),
            ),
            Divider(
              height: 3,
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PersonalDetailsScreen())),
            ),
            Divider(
              height: 3,
              color: Colors.grey.shade800,
            ),
            // ListTile(
            //   leading: Icon(Icons.edit_document),
            //   title: Text('Edit profile'),
            //   onTap: () => Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => QrScan())),
            // ),
            Divider(
              height: 3,
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: Icon(Icons.find_in_page),
              title: Text('Find a Donor'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DonorsPage())),
            ),
            Divider(
              height: 3,
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: Icon(Icons.local_activity),
              title: Text('Recent Activites'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => recent_avt_screen())),
            ),
            Divider(
              height: 3,
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: Icon(Icons.document_scanner),
              title: Text('Donation Documentation'),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => QrScan())),
            ),
            Divider(
              height: 3,
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Donation History'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => blood_log())),
            ),
            Divider(
              height: 3,
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Donation Campaigns'),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MapPage())),
            ),
            Divider(
              height: 3,
              color: Colors.grey.shade800,
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Live location'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Geolocation())),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 235, 234, 255),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Geolocation())),
                child: Icon(Icons.home)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PersonalDetailsScreen())),
                child: Icon(Icons.notifications)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => QrScan())),
                child: Icon(Icons.person)),
            label: '',
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          SizedBox(
            height: (MediaQuery.of(context).size.height / 20) * 0.6,
          ),
          Container(
            height: (MediaQuery.of(context).size.height / 20) * 1,
            width: (MediaQuery.of(context).size.width / 20) * 18,
            child: SearchBar(
              hintText: "Search",
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height / 20) * 0.6,
          ),
          BannerDesign(
            text: 'News about recent health camps',
            imgText: 'assets/images/banner_image.jpg',
            bgcolor: Color.fromARGB(255, 255, 255, 255),
            textcolor: Colors.black,
            onTapver: () {},
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height / 20) * 0.3,
          ),
          Text(
            "Select Option",
            style: TextStyle(
              color: Color.fromARGB(222, 37, 18, 246),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height / 20) * 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button_box(
                text: 'History',
                imagename: 'assets/images/logImage.png',
                textcolor: Color.fromARGB(255, 255, 255, 255),
                bgcolor: Color.fromARGB(77, 7, 21, 27),
                iconName: Icons.history_rounded,
                onTapver: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => blood_log()));
                },
              ),
              Button_box(
                text: 'QR scanner',
                imagename: 'assets/images/login2.png',
                textcolor: Color.fromARGB(255, 255, 255, 255),
                bgcolor: Color.fromARGB(77, 7, 21, 27),
                iconName: Icons.qr_code_scanner_rounded,
                onTapver: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QrScan()));
                },
              ),
              Button_box(
                text: 'Find Doner',
                imagename: 'assets/images/login2.png',
                textcolor: Color.fromARGB(255, 255, 255, 255),
                bgcolor: Color.fromARGB(77, 7, 21, 27),
                iconName: Icons.search_rounded,
                onTapver: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DonorsPage()));
                },
              ),
            ],
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height / 20) * 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Recent Activities",
                  style: TextStyle(
                    color: Color.fromARGB(222, 37, 18, 246),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              MaterialButton(
                elevation: 8,
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Color.fromARGB(222, 78, 62, 252),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => recent_avt_screen()));
                },
                highlightColor: Colors.white,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MyWidget(
                maintopic: 'Vistited to Gym',
                subtopic: 'subtopic',
                imagelist: 'assets/images/gym_image.jpg',
              ),
              MyWidget(
                maintopic: 'Vistited to Resturant',
                subtopic: 'subtopic',
                imagelist: 'assets/images/res_image.jpg',
              ),
              MyWidget(
                maintopic: 'Consult a Doctor',
                subtopic: 'subtopic',
                imagelist: 'assets/images/hos_image.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
