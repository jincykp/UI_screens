import 'package:designs/four.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  List<Map<String, dynamic>> products = [
    {
      'images': 'assets/ts.jpeg',
      'title': 'Order #1688068',
      'price': '₹799',
      'date': 'Jul 12, 02:08 PM',
      'deposit': '₹799 Deposited to 578000887666'
    },
    {
      'images': 'assets/tshirt.jpeg',
      'title': 'Order #1457741',
      'price': '₹799',
      'date': 'Apr 26, 07:47 AM',
      'deposit': '₹799 Deposited to 5780008'
    },
    {
      'images': 'assets/tt.jpeg',
      'title': 'Order #1685889',
      'price': '₹399',
      'date': 'Apr 11, 10:54 AM',
      'deposit': '₹399 Deposited to 5780008'
    },
    {
      'images': 'assets/watch.jpeg',
      'title': 'Order #4674389',
      'price': '₹699',
      'date': 'Apr 2, 11:29 AM',
      'deposit': '₹699 Deposited to 0097765'
    },
    {
      'images': 'assets/ts.jpeg',
      'title': 'Order #1688788',
      'price': '₹449',
      'date': 'Apr 26, 10:37 AM',
      'deposit': '₹449 Deposited to 877765'
    },
    {
      'images': 'assets/cup.jpeg',
      'title': 'Order #93747267',
      'price': '₹599',
      'date': 'Apr 26, 01:26 PM',
      'deposit': '₹599 Deposited to 667888'
    },
    {
      'images': 'assets/watch.jpeg',
      'title': 'Order #942726211',
      'price': '₹1299',
      'date': 'Apr 26, 09:54 AM',
      'deposit': '₹1299 Deposited to 109876'
    },
    {
      'images': 'assets/tt.jpeg',
      'title': 'Order #974372889',
      'price': '₹1199',
      'date': 'Apr 26, 12:47 PM',
      'deposit': '₹1199 Deposited to 20003'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(
          'Payments',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline_rounded))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(220, 244, 242, 242).withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes the shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transaction Limit',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'A free limit up to which you will receive\nthe online payments directly in your bank.'),
                  SizedBox(
                    height: 15,
                  ),
                  LinearProgressIndicator(
                    value: 0.3,
                  ),
                  Text('36,668 left out of 50,000'),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Increase limit'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text('Default Method'),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Online Payments',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.grey,
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Text('Payment Profile'),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      'Bank Account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              children: [
                Text('Payment Overview'),
                SizedBox(
                  width: 120,
                ),
                Text(
                  'Life Time',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  height: 90,
                  width: 175,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AMOUND ON HOLD',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.currency_rupee_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            '0',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                  height: 90,
                  width: 175,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AMOUND RECEIVED',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.currency_rupee_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            '13,332',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '  Transactions',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('On Hold',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 91, 90, 90))),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(0, 158, 158, 158))),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenFour()));
                    },
                    child: Text('Payouts(15)',
                        style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Refunds',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 91, 90, 90)),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(0, 158, 158, 158))))
              ],
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, position) {
                    final product = products[position];

                    return ListTile(
                      leading: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(product['images']),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      title: Text(product['title']),
                      subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product['date']),
                            Text(
                              product['deposit'],
                              style: TextStyle(fontSize: 10),
                            )
                          ]),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            product['price'],
                            style: TextStyle(
                                color: Color.fromARGB(255, 58, 140, 255)),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text('Successfull')
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, position) {
                    return Divider();
                  },
                  itemCount: products.length),
            )
          ],
        ),
      ),
    );
  }
}
