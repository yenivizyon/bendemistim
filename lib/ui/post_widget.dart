import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostWidget extends StatelessWidget {
  PostWidget({
    Key key,
    @required this.imageUrl,
    @required this.entries,
    @required this.author,
    @required this.volume,
    @required this.index,
  }) : super(key: key);

  final List imageUrl;
  final List<String> entries;
  final List<String> author;
  final List volume;
  final int index;

  final formatMoney1 = new NumberFormat("#,###", "en_US");
  final formatMoney2 = new NumberFormat("#,##0.00", "en_US");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector( //Tıklama özelliği kazandırır
        onTap: () => {print("tapped")},
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.green[700], width: 2.0),
          ),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(10.0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl[index]),
                ),
                title: Text(
                  entries[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  author[index],
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Volume',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Text(
                            '\$${formatMoney1.format(volume[index])}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Yes',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Text(
                            '\$${formatMoney2.format(0.03)}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue[900],
                              //backgroundColor: Colors.black12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'No',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Text(
                            '\$${formatMoney2.format(0.97)}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
