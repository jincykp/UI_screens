import 'package:designs/three.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 3;
    List<Widget> heading = [
      Text(
        "Marketing\nDesigns",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "Online\nPayments",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "Discount\nCoupons",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "My\nCoustomers",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "Store QR\nCode",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "Extra\nCharges",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "Order\nForm",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ];
    List<Widget> img = [
      Image.asset(
        "assets/marketing.jpg",
        width: 50,
        height: 50,
      ),
      Image.asset(
        'assets/payment.jpg.jpeg',
        width: 50,
        height: 50,
      ),
      Image.asset(
        'assets/discount.jpg',
        width: 50,
        height: 50,
      ),
      Image.asset(
        'assets/customer.jpg',
        width: 50,
        height: 50,
      ),
      Image.asset(
        'assets/qr.jpg',
        width: 50,
        height: 50,
      ),
      Image.asset(
        'assets/extra.jpg',
        width: 50,
        height: 50,
      ),
      Image.asset(
        'assets/order.jpg',
        width: 50,
        height: 50,
      )
    ];
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Manage Store",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenThree()));
              },
              icon: Icon(Icons.chevron_right_outlined))
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.15),
              itemCount: 7,
              itemBuilder: (BuildContext, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 237, 237),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        img[index],
                        SizedBox(height: 10),
                        heading[index],
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromARGB(255, 241, 237, 237),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel,
              ),
              label: "Orders"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
              ),
              label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.stacked_bar_chart,
              ),
              label: "Manage"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
