import 'package:flutter/material.dart';

import 'general_ui_item.dart';

class EditContactDetails extends StatefulWidget {
  @override
  _EditContactDetailsState createState() => _EditContactDetailsState();
}

class _EditContactDetailsState extends State<EditContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleSpacing: -8,
        // centerTitle: true,
        title: Text(
          "Contact Details",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                "Save",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: buildInputFieldsCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: ElevatedButton(
              // color: Colors.green,
              // textColor: Colors.white,
              onPressed: () {},
              child: Text(
                "Save Settings",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInputFieldsCard() {
    return Card(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Edit Contact Info",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: .7,
            color: Colors.grey,
          ),
          verticalSpace(),
          Container(
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                buildInputField("First Name"),
                verticalSpace(height: 16),
                buildInputField("Last Name"),
                verticalSpace(height: 16),
                buildInputField("E-mail"),
                verticalSpace(height: 16),
                buildInputField("Description"),
                verticalSpace(height: 16),
                buildInputField("Phone Number"),
                verticalSpace(height: 16),
                buildInputField("Address"),
                verticalSpace(height: 16),
                buildInputField("Region"),
                verticalSpace(height: 16),
                buildInputField("Address"),
                // buildInputField("Name"),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildInputField(String hint) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: hint,
        hintText: hint,
      ),
    );
  }
}
