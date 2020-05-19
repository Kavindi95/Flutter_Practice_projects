import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apps',
      home: NewReview(),
    );
  }
}

class NewReview extends StatefulWidget {
  @override
  _NewReviewState createState() => _NewReviewState();
}

class _NewReviewState extends State<NewReview> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text('Add New Review')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(

                  child: OutlineButton(
                    borderSide: BorderSide(
                        style: BorderStyle.none, color: Colors.black),
                    disabledBorderColor: Colors.black,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Reviews   ',
                            style: TextStyle(
                                color: Colors.greenAccent, fontSize: 14, height: 1.2),
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Reviews()),
                      );
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  )),
              SizedBox(height: 3),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Divider(color: Colors.grey, thickness: 0.4),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'New review',
                  style:
                  TextStyle(color: Colors.black, fontSize: 20, height: 1.2),
                ),
              ),
              SizedBox(height: 20),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: List.generate(5, (index) {
                            return IconButton(
                              onPressed: null
                            );
                          }),
                        ),
                        SizedBox(width: 5),
                      ])),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.grey.withOpacity(0.01),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      autofocus: false,
                      maxLines: 12,
                      decoration: InputDecoration.collapsed(
                          hintText: "Comments"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 12, right: 12),
                width: 50,
                height: 50,
                child: RaisedButton(
                  color: Colors.greenAccent,
                  onPressed: null,
                  child: const Text('Continue',
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Reviews')),
      body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text('Reviews', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 5),
              SizedBox(height: 3),
              Divider(color: Colors.grey, thickness: 0.4)
            ],
          )),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('reviews').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return LinearProgressIndicator();
          return _buildList(context, snapshot.data.documents);
        });
  }
  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 10.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {

    return Column(
    );
  }
}