import 'package:flutter/material.dart';
// import 'package:online_hop/pages/general_ui_item.dart';

import 'general_ui_item.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  var tabIndex = 0;
  List<String> messagesFilter = ["All", "Archived", "Spam"];
  String? filterValue;
  @override
  void initState() {
    filterValue = messagesFilter[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: buildMessages(),
            ),
            buildAppBar(),
          ],
        ),
      ),
    );
  }

  Widget buildMessages() {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
              value: filterValue,
              items: List.generate(
                3,
                (index) => DropdownMenuItem(
                  value: messagesFilter[index],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      children: <Widget>[
                        Text(
                          messagesFilter[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onChanged: (index) {
                setState(() {
                  filterValue = index.toString();
                });
              }),
        ),
        Wrap(
          children: List.generate(
            15,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image.network(
                    "https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW50ZXJpb3IlMjBkZXNpZ258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                    height: 72,
                    width: 72,
                  ),
                  horizontalSpace(),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "jkvbijkglb hi bjkljk tttttty tyu treertyu yuiu uglgu  u uigigj gu iugu g9u; j i;ugy",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      verticalSpace(),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "jkvnjkhn .hnihnlkhb uib uiliuh;iou ;hoi",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Text(
                            "Jun 23",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildNotifications() {
    return ListView(
      children: List.generate(
        15,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Image.network(
                "https://images.unsplash.com/photo-1532007271951-c487760934ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80",
              ),
              horizontalSpace(),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "jkvbijkglb hi bjkljk tttttty tyu treertyu yuiu uglgu  u uigigj gu iugu g9u; j i;ugy",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  verticalSpace(),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "jkvnjkhn .hnihnlkhb uib uiliuh;iou ;hoi",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Text(
                        "Jun 23",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return Card(
      margin: EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          // direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabIndex = 0;
                  });
                },
                child: Text(
                  "Messages",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: tabIndex == 0 ? Colors.green : Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabIndex = 1;
                  });
                },
                child: Text(
                  "Notifications",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: tabIndex != 0 ? Colors.green : Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
