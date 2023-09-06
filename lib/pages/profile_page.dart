import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'change_password_page.dart';
import 'edit_contact_details.dart';
import 'general_ui_item.dart';
import 'my_adverts_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> options = [
    "Contact Details",
    "Change Password",
    // "Manage my account",
    // "Frequently Asked Questions",
    // "Rate Us",
    "My Adverts",
    "About Shopper",
    "Log out",
  ];
  @override
  Widget build(BuildContext context) {
    return body2();
  }

  Widget body2() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(64),
                          // shape: CircularNotchedRectangle(),
                          image: DecorationImage(
                              image: AssetImage(
                                  "https://images.unsplash.com/photo-1532007271951-c487760934ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  verticalSpace(height: 16),
                  Text(
                    "Mr Nyombi Cedric",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: List.generate(
                  options.length,
                  (index) => InkWell(
                    onTap: () {
                      switch (index) {
                        case 0:
                          pushRoute(context, EditContactDetails());
                          break;
                        case 1:
                          pushRoute(context, ChangePasswordPage());
                          break;
                        case 2:
                          pushRoute(context, MyAdvertsPage());
                          break;
                        default:
                      }
                    },
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  options[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Icon(
                                CupertinoIcons.forward,
                                color: Colors.greenAccent,
                              ),
                              horizontalSpace(),
                            ],
                          ),
                        ),
                        Container(
                          height: .5,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget body1() {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              verticalSpace(height: MediaQuery.of(context).size.height * .15),
              Image.network(
                "https://images.unsplash.com/photo-1532007271951-c487760934ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80",
                height: 120,
              ),
              verticalSpace(height: MediaQuery.of(context).size.height * .15),
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 8, 32, 8),
                child: ElevatedButton(
                  // color: Colors.red,
                  onPressed: () {},
                  child: Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Image.network(
                        "assets/google.png",
                        height: 24,
                      ),
                      horizontalSpace(),
                      Text(
                        "Log in with Google",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 8, 32, 8),
                child: ElevatedButton(
                  // color: Colors.blue[900],
                  onPressed: () {},
                  child: Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Image.network(
                        "assets/facebook.png",
                        height: 24,
                      ),
                      horizontalSpace(),
                      Text(
                        "Log in with Google",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 8, 32, 8),
                child: ElevatedButton(
                  // color: Colors.white,
                  onPressed: () {},
                  child: Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Image.network(
                        "assets/google.png",
                        height: 24,
                      ),
                      horizontalSpace(),
                      Text(
                        "Log in with Google",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(height: 16),
              Center(
                child: Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ),
              verticalSpace(height: 16),
              Center(
                child: Text(
                  "By continuing you agree to thhe Policy and Rules",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/img7.jpeg",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
