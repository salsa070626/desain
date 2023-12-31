import 'package:desain_salsa/home/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeNotifier(context),
    child: Consumer<HomeNotifier>(
      builder: ((context, value, child) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 163, 59),
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.grey[300] ?? Colors.transparent
                  )
                )
              ),
              padding: EdgeInsets.all(8),
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      "Beranda",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16,right: 16,top: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey[200] ?? Colors.transparent
                              )
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 16,
                                ),
                                Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Cari Disini ...",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                          ),
                          SizedBox(
                            width: 10,
                         ),
                         Container(
                          height: 40,
                          width: 40,
                          child: Stack(
                            children: [
                              Center(
                                child: Icon(
                                  Icons.shopify_outlined,
                                ),
                              )
                            ],
                          ),
                         )
                       ],
                    ),
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.symmetric(
                      vertical: 16
                    ),
                    child: Container(
                      height: 200,
                      margin: EdgeInsets.only(left: 16,right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                         color: Color.fromARGB(255, 255, 163, 59),                   ),
                    ),
                  ),
                ],

            )
            ),

          ],
        ),
      )))),
    );
    
  }
}