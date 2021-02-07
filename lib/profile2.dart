//import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fundit_application/details.dart';

import 'job.dart';
import 'liked.dart';

class ProfileMenu2 extends StatefulWidget {
  @override
  _ProfileMenu2State createState() => _ProfileMenu2State();
}

class _ProfileMenu2State extends State<ProfileMenu2> {
  FocusNode nameFocusNode;
  FocusNode phoneNumberFocusNode;
  FocusNode addressFocusNode;

  TextEditingController name = TextEditingController(text: 'Initial value');
  String value;
  bool nameEnabled = false;
  bool phoneNumberEnabled = false;
  bool addressEnabled = false;

  @override
  void initState() {
    super.initState();

    nameFocusNode = FocusNode();
    phoneNumberFocusNode = FocusNode();
    addressFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    nameFocusNode.dispose();
    phoneNumberFocusNode.dispose();
    addressFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.fromLTRB(18, 15, 8, 10),
              child: Text(
                'What are you investing',
                style: TextStyle(
                    fontFamily: 'Typewriter',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 170),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  color: Colors.grey[200],
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Details()),
                                  ),
                                  child: Text(
                                    '\$10 Investment',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.indigo[700]),
                                  ),
                                ),
                                Text('AfroTech',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black)),
                                Text('Notes',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[600])),
                                Text('Documents',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Receipts',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Updates from Founders',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Invested on 3/8/20',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.indigo[700]))
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      child: Image.network(
                        "https://www.thebusinesswomanmedia.com/wp-content/uploads/2015/06/AR_SuitWide_P.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),

            //2
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 170),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  color: Colors.grey[200],
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Details()),
                                  ),
                                  child: Text(
                                    '\$15 Investment',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.indigo[700]),
                                  ),
                                ),
                                Text('Sudu',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black)),
                                Text('Notes',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[600])),
                                Text('Documents',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Receipts',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Updates from Founders',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Invested on 2/1/19',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.indigo[700]))
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      child: Image.network(
                          "https://cdn.filepicker.io/api/file/sU02HTjMQzsEY2ukg4RH"),
                    ),
                  ),
                )
              ],
            ),

            //3
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 170),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  color: Colors.grey[200],
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Details()),
                                  ),
                                  child: Text(
                                    '\$20 Investment',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.indigo[700]),
                                  ),
                                ),
                                Text('Lisnr',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black)),
                                Text('Notes',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[600])),
                                Text('Documents',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Receipts',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Updates from Founders',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Invested on 3/8/20',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.indigo[700]))
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      child: Image.network(
                        "https://trikaayhomoeopathy.com/images/savegril/save_child.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),

            //4
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 170),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  color: Colors.grey[200],
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Details()),
                                  ),
                                  child: Text(
                                    '\$25 Investment',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.indigo[700]),
                                  ),
                                ),
                                Text('Streamlytics',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black)),
                                Text('Notes',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[600])),
                                Text('Documents',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Receipts',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Updates from Founders',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600])),
                                Text('Invested on 3/8/20',
                                    style: TextStyle(
                                        fontFamily: 'Typewriter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.indigo[700]))
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 180,
                      width: 170,
                      child: Image.network(
                        "https://media-exp1.licdn.com/dms/image/C4E0BAQGWIH3q2hWE5g/company-logo_200_200/0?e=2159024400&v=beta&t=d-4CevokYKWGnp7AYjiyzO7r4uOQQlMAtDiWx1QmXuY",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getJobCard(Job job) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Liked()),
        );
      },
      child: Stack(
        children: <Widget>[
          //  FlatButton(
          //   shape: new RoundedRectangleBorder(
          //       borderRadius: new BorderRadius.circular(30.0)),
          //   color: Colors.grey[200],
          //   onPressed: () {},
          //   child: Text('\$10 Investment'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 20, bottom: 30, top: 20),
            height: 180,
            width: 220,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: job.companyLogo,
                    ),
                    SizedBox(width: 5),
                    Text(
                      job.workTitle,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Text(job.workSubTitle,
                    style: GoogleFonts.montserrat(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
                Text(job.moneyRaised,
                    style: TextStyle(
                        fontFamily: 'Typewriter',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.indigo[700])),
                Text(job.investors,
                    style: TextStyle(
                        fontFamily: 'Typewriter',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.indigo[700])),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getRecentJobs() {
    List<Widget> recentJobCards = [];
    List<Job> jobs = findJobs();
    for (Job job in jobs) {
      recentJobCards.add(getJobCard(job));
    }
    return recentJobCards;
  }

  List<Job> findJobs() {
    List<Job> jobs = [];
    jobs.add(Job(
        workTitle: 'Change.org',
        workSubTitle: 'create campaigns to mobilize supporters',
        workType: 'Hardware',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 56,000 raised',
        investors: '50 investors',
        days: '15 days left'));
    jobs.add(Job(
        workTitle: 'Crowdpac',
        workSubTitle: 'Make it easy to understand the laws Congress',
        workType: 'Investment',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 92,000 raised',
        investors: '80 investors',
        days: '20 days left'));
    jobs.add(Job(
        workTitle: 'Vote.org',
        workSubTitle: 'Build technology aimed at increasing voter turnout',
        workType: 'Investment',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 1,00,000 raised',
        investors: '4000 investors',
        days: '22 days left'));

    jobs.add(Job(
        workTitle: 'Communication',
        workSubTitle: 'Offer free, 24/7 text-message counseling',
        workType: 'Investment',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 120,000 raised',
        investors: '5830 investors',
        days: '23 days left'));
    jobs.add(Job(
        workTitle: 'Pigeonly',
        workSubTitle: 'Create affordable communication products',
        workType: 'Investment',
        companyLogo: AssetImage("lib/images/person.png"),
        moneyRaised: '\$ 140,000 raised',
        investors: '3762 investors',
        days: '24 days left'));
    return jobs;
  }
}
