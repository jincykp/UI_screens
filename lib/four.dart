import 'package:designs/five.dart';
import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Dukaan Premium"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  Positioned(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 20, end: 20),
                      child: Container(
                        height: 150,
                        width: 330,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Adjust the border radius as needed
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                8.0), // Match the border radius to the Card
                            child: Image.asset(
                              'assets/dukaan.jpg', // Replace with the path to your image asset
                              fit: BoxFit
                                  .fill, // Ensure the image covers the entire Card
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Features",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ClipOval(
                        child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.wordpress_outlined,
                              color: Colors.blue,
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Custom domain name',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Get your own custom domain and build\nyour brand on the internet',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      ClipOval(
                        child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.trending_up,
                              color: Colors.blue,
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Verified seller badge',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Get green verified badge under your\nstore name and build trust',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ClipOval(
                        child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.laptop,
                              color: Colors.blue,
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dukaan for PC',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Access all the exclusive premium\nfeatures on Dukaan for PC',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ClipOval(
                        child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.wordpress_outlined,
                              color: Colors.blue,
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Priority support',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Get your questions resolved with our\npriority customer support',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.grey,
                    thickness: 2.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "What is Dukaan Premium?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Container(
                    height: 150,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/add.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2.0,
                  ),
                  Text(
                    "Frequently asked questions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Row(
                    children: [
                      Text(
                        "What types of business can use Dukaan\nPremium?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.remove),
                    ],
                  ),
                  Text(
                      "Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online-Dukaan is the perfect platform for you."),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "What is your refund policy?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.add),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Will there be an automatic charge after the\npaid trial?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.add),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "What payment methods do you offer?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.add),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  Row(
                    children: [
                      Text("What happens when my free trial ends?",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Spacer(),
                      Icon(Icons.add),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "What are the terms for the custom domain?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.add),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 15),
                  Divider(
                    color: Colors.grey,
                    thickness: 2.0,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Need help? Get in touch",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                        decoration:
                            BoxDecoration(border: Border.all(width: .6)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat,
                              size: 25,
                            ),
                            Text("Live Chat")
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 150,
                        decoration:
                            BoxDecoration(border: Border.all(width: .6)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phone,
                              size: 25,
                            ),
                            Text("Phone Call")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Select Domain",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenFive()));
                        },
                        child: Text("Get Premium"),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)))),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            fixedSize: MaterialStateProperty.all(
                              Size(200, 50),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
