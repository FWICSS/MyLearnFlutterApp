import 'package:flutter/material.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Homepage Material",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue.shade50,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Homepage Material"),
            // leading: IconButton(
            //   icon: const Icon(Icons.arrow_back_ios),
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          body: Container(
              alignment: Alignment.center,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                    onPressed: () {}, child: const Text("Je suis un button")),
                ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Je suis un button", style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    // backgroundColor: Colors.red,
                    elevation: 10,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ])),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: const [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Drawer Header",
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(children: [
                      Icon(Icons.supervised_user_circle),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("User"),
                      ),
                    ])),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(children: [
                      Icon(Icons.surround_sound),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Sound"),
                      ),
                    ])),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ));
  }
}
