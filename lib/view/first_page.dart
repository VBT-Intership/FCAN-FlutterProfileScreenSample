import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            buildPaddingBackAndMenuIcon(),
            buildCenterProfilImage(),
            buildColumnProfileText(),
            buildColumnCards(),
            buildPadidngAboutDoctorText(),
            buildPaddingWorkingTimeText(),
            buildPaddingCommunicationText(),
            SizedBox(
              height: 10,
            ),
            buildPaddingMessaging(),
            SizedBox(
              height: 5,
            ),
            buildPaddingAudioCall(),
            SizedBox(
              height: 5,
            ),
            buildPaddingVideoCall(),
            SizedBox(
              height: 25,
            ),
            buildCenterButton()
          ],
        ),
      ),
    );
  }
}

Padding buildPaddingBackAndMenuIcon() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Row(
      children: <Widget>[
        Icon(Icons.arrow_back),
        SizedBox(
          width: 328,
        ),
        Icon(Icons.more_vert)
      ],
    ),
  );
}

Center buildCenterProfilImage() {
  return Center(
    child: CircleAvatar(
      radius: 50,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage("asset/profil.jpg"),
      ),
    ),
  );
}

Column buildColumnProfileText() {
  return Column(
    children: <Widget>[
      SizedBox(
        height: 20,
      ),
      Text(
        "Dr. Emily Gwen",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        "Viralogist",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey),
      ),
    ],
  );
}

Column buildColumnCards() {
  return Column(
    children: <Widget>[
      SizedBox(
        height: 10,
      ),
      Row(
        children: <Widget>[
          SizedBox(
            width: 60,
          ),
          Container(
            height: 120,
            width: 90,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 30,
                    color: Colors.green.shade100,
                    child: Icon(
                      Icons.people,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "1000+",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    "Patients",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 120,
            width: 90,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 30,
                    color: Colors.pink.shade100,
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("10 Yrs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  Text(
                    "Experience",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 120,
            width: 90,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 30,
                    color: Colors.orange.shade100,
                    child: Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("4.5",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  Text(
                    "Ratings",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 40,
      )
    ],
  );
}

Padding buildPadidngAboutDoctorText() {
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 50, top: 0, bottom: 0),
    child: Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "About Doctor",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "Dr. Emily Gwen is a top specialist at London Bridge Hospital at London. She has achieved several awards and recognition for is contribution and service in his own field. He is available for private consultation.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    ),
  );
}

Padding buildPaddingWorkingTimeText() {
  return Padding(
    padding: const EdgeInsets.only(left: 0, right: 140, top: 0, bottom: 0),
    child: Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Working time",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "Mon - Sat (08:30 AM - 09:00 PM)",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ],
    ),
  );
}

Padding buildPaddingCommunicationText() {
  return Padding(
    padding: const EdgeInsets.only(left: 0, right: 180, top: 0, bottom: 0),
    child: Column(
      children: <Widget>[
        Text(
          "Communication",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ],
    ),
  );
}

Padding buildPaddingMessaging() {
  return Padding(
    padding: const EdgeInsets.only(left: 55, right: 0),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.message,
              color: Colors.pink,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Messaging",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 125),
          child: Text(
            "Chat me up, share photos.",
            style: TextStyle(fontSize: 13),
          ),
        )
      ],
    ),
  );
}

Padding buildPaddingAudioCall() {
  return Padding(
    padding: const EdgeInsets.only(left: 55, right: 0),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.call,
              color: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Audio Call",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 139),
          child: Text(
            "Call your doctor directly.",
            style: TextStyle(fontSize: 13),
          ),
        )
      ],
    ),
  );
}

Padding buildPaddingVideoCall() {
  return Padding(
    padding: const EdgeInsets.only(left: 55, right: 0),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.video_call,
              color: Colors.orange,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Video Call",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 155),
          child: Text(
            "See your doctor live.",
            style: TextStyle(fontSize: 13),
          ),
        )
      ],
    ),
  );
}

Center buildCenterButton() {
  return Center(
    child: Container(
      width: 260,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        disabledColor: Color(0xff00ccb2),
        onPressed: null,
        child: Text(
          "Book Appointment",
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.greenAccent,
      ),
    ),
  );
}
