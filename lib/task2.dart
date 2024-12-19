import 'package:batch2ui/task1.dart';
import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(width: 5),
          Icon(
            Icons.shopping_bag,
            size: 30,
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              '#featured',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'products',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('#New arrivals',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        SizedBox(height: 10),
                        Text('Classis edition',
                            style:
                                TextStyle(color: Colors.white, fontSize: 22)),
                        SizedBox(height: 10),
                        Text(
                            'Classis edition Classis edition \nClassis edition Classis edition',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        SizedBox(height: 15),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'BUY NOW',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/ic_launcher.png')),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '#Trending',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            Text(
              '#products',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(
            //           height: 220,
            //           width: 150,
            //           decoration: BoxDecoration(
            //               color: Colors.blue,
            //               borderRadius: BorderRadius.circular(15)),
            //           child: Column(
            //             children: [
            //               SizedBox(height: 10),
            //               Padding(
            //                 padding: const EdgeInsets.only(right: 5),
            //                 child: Align(
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     height: 34,
            //                     width: 34,
            //                     decoration: BoxDecoration(
            //                         color: Colors.lightBlueAccent,
            //                         borderRadius: BorderRadius.circular(10)),
            //                     child: Icon(
            //                       Icons.favorite,
            //                       color: Colors.white,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(height: 30),
            //               ClipRRect(
            //                   borderRadius: BorderRadius.circular(10),
            //                   child: Image.asset(
            //                     'assets/ic_launcher.png',
            //                     height: 100,
            //                     fit: BoxFit.cover,
            //                   )),
            //             ],
            //           ),
            //         ),
            //         Text(
            //           '#strap',
            //           style: TextStyle(color: Colors.black, fontSize: 18),
            //         ),
            //         Text(
            //           'Navy shoes',
            //           style: TextStyle(
            //               color: Colors.blue,
            //               fontSize: 18,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ),
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(
            //           height: 220,
            //           width: 150,
            //           decoration: BoxDecoration(
            //               color: Colors.blue,
            //               borderRadius: BorderRadius.circular(15)),
            //           child: Column(
            //             children: [
            //               SizedBox(height: 10),
            //               Padding(
            //                 padding: const EdgeInsets.only(right: 5),
            //                 child: Align(
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     height: 34,
            //                     width: 34,
            //                     decoration: BoxDecoration(
            //                         color: Colors.lightBlueAccent,
            //                         borderRadius: BorderRadius.circular(10)),
            //                     child: Icon(
            //                       Icons.favorite,
            //                       color: Colors.white,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(height: 30),
            //               ClipRRect(
            //                   borderRadius: BorderRadius.circular(10),
            //                   child: Image.asset(
            //                     'assets/ic_launcher.png',
            //                     height: 100,
            //                     fit: BoxFit.cover,
            //                   )),
            //             ],
            //           ),
            //         ),
            //         Text(
            //           '#strap',
            //           style: TextStyle(color: Colors.black, fontSize: 18),
            //         ),
            //         Text(
            //           'Navy shoes',
            //           style: TextStyle(
            //               color: Colors.blue,
            //               fontSize: 18,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     )
            //   ],
            // )

            // TextButton(
            //   onPressed: () {
            //     print('this is button');
            //   },
            //   child: Text('hello'),
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            //   ),
            // )
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Task1(),
                    ));
              },
              child: Container(
                height: 40,
                width: 100,
                child: Center(child: Text('button')),
                decoration: BoxDecoration(color: Colors.amber),
              ),
            )
          ],
        ),
      ),
    );
  }
}
