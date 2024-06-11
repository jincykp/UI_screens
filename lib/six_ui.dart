import 'package:flutter/material.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {
  List<Map<String, dynamic>> products = [
    {
      'images': "assets/tt.jpeg",
      'title': "Couch Potato..",
      'price': '₹799',
    },
    {
      'images': 'assets/white_t.jpeg',
      'title': 'Kanchipuram silk',
      'price': '₹799',
    },
    {
      'images': 'assets/watch.jpeg',
      'title': 'Paithani',
      'price': '₹399',
    },
    {
      'images': 'assets/combo.jpeg',
      'title': 'Chanderi sari',
      'price': '₹699',
    },
    {
      'images': 'assets/tt.jpeg',
      'title': 'Baluchari sari',
      'price': '₹449',
    },
    {
      'images': 'assets/ts.jpeg',
      'title': 'Bandhani',
      'price': '₹599',
    },
    {
      'images': 'assets/tt.jpeg',
      'title': 'Patola sari',
      'price': '₹1299',
    },
    {
      'images': 'assets/combo.jpeg',
      'title': 'Pochampally saree',
      'price': '₹1199',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Catalogue")),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          actions: [Icon(Icons.search)],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: "Categories",
              )
            ],
            labelColor: Colors.white,
          ),
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (BuildContext, position) {
              final product = products[position];
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(product['images']),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(
                            product[
                                'title'], // Use the title from the product data
                            style: TextStyle(fontSize: 17),
                          ),
                          Spacer(),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text('1 piece'),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              product[
                                  'price'], // Use the price from the product data
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  'In stock',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.green),
                                ),
                                Spacer(),
                                Transform.scale(
                                  scale: 0.5,
                                  child: Switch(
                                      value: true,
                                      onChanged: null,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      activeColor:
                                          const Color.fromARGB(255, 8, 80, 138),
                                      inactiveThumbColor: Colors.blue,
                                      inactiveTrackColor: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      indent: 15,
                      endIndent: 15,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.share_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Share Product',
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
