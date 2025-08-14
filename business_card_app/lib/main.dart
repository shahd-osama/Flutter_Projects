import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({Key? key }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 199, 226, 236),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center(
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(999),
            //     child: Image(
            //       image: AssetImage('images/img.PNG'),
            //       width: 500,
            //       height: 500,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            CircleAvatar(
              radius: 160,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('images/img.PNG'),
              ),
            ),
            Text(
              "Shahd Øsama",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'DancingScript',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 255, 255, 255),
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            // Card(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   margin: EdgeInsets.symmetric(horizontal: 16.0),
            //   color: Color.fromARGB(255, 231, 235, 239),
            //   child: ListTile(
            //     leading: Icon(
            //       Icons.location_on,
            //       color: Color.fromARGB(255, 70, 125, 176),
            //       size: 30,
            //     ),
            //     title: Padding(
            //       padding: const EdgeInsets.only(left: 59),
            //       child: Text(
            //         "Port Said, Egypt",
            //         style: TextStyle(
            //           fontSize: 20,
            //           color: Color.fromARGB(255, 70, 125, 176),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              // padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 235, 239),
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 60,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 70, 125, 176),
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Text(
                        "(+20)1280120079",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 70, 125, 176),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),

              // padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 235, 239),
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 60,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 70, 125, 176),
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Text(
                        "shahd.osama161@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 70, 125, 176),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//margin  -> بتعمل مسافه حوالين ال container 
// padding -> بتعمل مسافه جوا ال container  -> حوالين ال child 

//ممكن بدل ال row -> ممكن نستخدم ال listTile

// const -> بتحسن السرعه والاداء
