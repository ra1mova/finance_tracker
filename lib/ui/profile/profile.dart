import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text('PROFILE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'sans-serif-light',
                            color: Colors.black))),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Stack(fit: StackFit.loose, children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 140.0,
                            height: 140.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: ExactAssetImage('assets/images/as.png'),
                                fit: BoxFit.cover,
                              ),
                            )),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 90.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 25.0,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )),
                  ]),
                )
              ],
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Parsonal Information',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                _status ? _getEditIcon() : Container(),
                              ],
                            )
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Name',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                decoration: const InputDecoration(
                                  hintText: "Enter Your Name",
                                ),
                                enabled: !_status,
                                autofocus: !_status,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Email',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                decoration: const InputDecoration(
                                    hintText: "Enter Email"),
                                enabled: !_status,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Mobile',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                decoration: const InputDecoration(
                                    hintText: "Enter Mobile Number"),
                                enabled: !_status,
                              ),
                            ),
                          ],
                        )),
                    !_status ? _getActionButtons() : Container(),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: TextButton(
                style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Colors.green)),
                // textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(FocusNode());
                  });
                },
                child: Text("Save"),
                // shape: new RoundedRectangleBorder(
                //     borderRadius: new BorderRadius.circular(20.0)),
              )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                ),
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(FocusNode());
                  });
                },
                child: Text("Cancel"),
                // shape: new RoundedRectangleBorder(
                //     borderRadius: new BorderRadius.circular(20.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
