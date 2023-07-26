import 'package:flutter/material.dart';

class Four extends StatelessWidget {
  const Four({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Column to hold the image and content below it
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage('assets/image/Profile.jpg'),
                width: widthScreen,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  width: 430,
                  child: Wrap(
                    children: [
                      Container(
                        width: 350,
                        child: Text(
                          'Paragon (Attractive discount on long stays)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            'ตำบลบางกุ้ง, สุราษฎร์ธานี, Thailand',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 360,
                child: Divider(
                  thickness: 1.0,
                  color: Colors.grey,
                ),
              ),
              //efefefe
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  child: Wrap(
                    children: [
                      Container(
                        width: 340,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Entire apartment',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.location_city,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 300,
                          child: Text(
                            '2 guests . 1 bedroom . 1 bed . 1bath',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 360,
                height: 80,
                child: Divider(
                  thickness: 1.0,
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '฿659',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' / night',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.pink,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text('Reserve'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Icon overlayed on the image
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.all(5), // Add padding for the border
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.arrow_back,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
          ///////
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(2), // Add padding for the border
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                          width: 2, color: Colors.white), // White border
                    ),
                    child: Icon(
                      Icons.ios_share,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.all(2), // Add padding for the border
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                          width: 2, color: Colors.white), // White border
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
