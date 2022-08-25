import 'package:flutter/material.dart';


class BookMarkScreen extends StatefulWidget {
  List<dynamic> bookmarksList=[];

   BookMarkScreen({Key? key,required this.bookmarksList}) : super(key: key);

  @override
  _BookMarkScreenState createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  ScrollController _controller=new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookmark"),
      ),
      body: bookmarklist(),
    );
  }

  bookmarklist(){
    return SingleChildScrollView(
      child:  ListView.builder(
        controller: _controller,
        shrinkWrap: true,
        itemCount: widget.bookmarksList.length,
        itemBuilder: (context, index) => Card(
          margin: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.bookmarksList[index].toString(),style: TextStyle(fontSize: 20),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
