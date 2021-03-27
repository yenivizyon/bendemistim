import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/menu.png',
            width: 20.0,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/icons/search.png',
              color: Colors.black,
              width: 20.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/icons/user.png',
              //color: greyColor,
              width: 20.0,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 20.0 / 2,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(right: 1.0),
        child: Padding(
          padding: EdgeInsets.only(right: 1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://w0.pngwave.com/png/639/452/computer-icons-avatar-user-profile-people-icon-png-clip-art.png'),
                      radius: 30,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Kullanıcı Adı',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '@xyzv',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Column()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding:EdgeInsets.only(left: 10.0) ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10,
                          child: Text(
                            '10',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Yazı Sayısı')
                      ],
                    ),
                  ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10,
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Ödüller')
                    ],
                  ),
                      ),
                   Expanded(
                     flex: 2,
                     child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10,
                          child: Text(
                            '10',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sıralama')
                      ],
                  ),
                   ),
                  Expanded(
                    flex: 3,
                    child: Column(
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding:EdgeInsets.only(left: 10.0) ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                            child: Container(
                              padding: EdgeInsets.only(left:3.0, top:3.0,right:3.0,bottom:3.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(width: 1.0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text('1048',
                                  style: TextStyle(fontSize:14.0)
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.only(left:3.0, top:3.0,right:3.0,bottom:3.0),
                            margin: EdgeInsets.only(left:5.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(width: 1.0, color: Colors.black),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(
                              Icons.upload_rounded,
                              color: Colors.grey,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                    ),
                  ),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding:EdgeInsets.only(left: 10.0) ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text('Yazılarım',
                              style: TextStyle(fontSize: 16.0)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text('Oyladıklarım',
                              style: TextStyle(fontSize: 15.0)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 150.0,
                width: 400.0,
                color: Colors.transparent,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 1.0, color: Colors.black),
                ),
                ),
              ),
              Container(
                height: 150.0,
                width: 400.0,
                color: Colors.transparent,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 1.0, color: Colors.black),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
