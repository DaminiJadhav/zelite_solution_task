import 'package:flutter/material.dart';
import 'package:zelite_solution_task/model/api_response.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zelite_solution_task/screen/bookmark_screen.dart';

class HomeDetailScreen extends StatefulWidget {
  var posts ;
  ApiResponse apiResponse;
  List<dynamic> bookmarksList=[];


  HomeDetailScreen({Key? key,required this.apiResponse,required this.bookmarksList}) : super(key: key);

  @override
  _HomeDetailScreenState createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Detail"),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>
                        BookMarkScreen(bookmarksList: widget.bookmarksList))
                );
              },
              icon: Icon( Icons.bookmark )
          ),


        ],
      ),
      body: _userdetail(),
    );
  }

  _userdetail(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(widget.apiResponse.parsely!.meta!.image!.url!,height: 100,width: 100,),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.apiResponse.id!.toString(),style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                          Text(widget.apiResponse.parsely!.meta!.author![0].name!,style: TextStyle(fontSize: 20),),
                          Text(widget.apiResponse.status!,style: TextStyle(fontSize: 20),),
                          Text(widget.apiResponse.title!.rendered.toString(),style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    )
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 10.0,bottom: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.date_range,color:  Colors.blue,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Created Date : "+widget.apiResponse.parsely!.meta!.dateCreated!.day.toString()+"-"+widget.apiResponse.parsely!.meta!.dateCreated!.month.toString()+"-"+widget.apiResponse.parsely!.meta!.dateCreated!.year.toString()+" | "+widget.apiResponse.parsely!.meta!.dateCreated!.hour.toString()+":"+widget.apiResponse.parsely!.meta!.dateCreated!.minute.toString(),style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone,color:  Colors.blue,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Date Published : "+widget.apiResponse.parsely!.meta!.datePublished!.day.toString()+"-"+widget.apiResponse.parsely!.meta!.datePublished!.month.toString()+"-"+widget.apiResponse.parsely!.meta!.datePublished!.year.toString(),style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.perm_contact_cal_outlined,color:  Colors.blue,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Creator :"+widget.apiResponse.parsely!.meta!.creator![0],style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.public_sharp,color:  Colors.blue,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Publisher :"+widget.apiResponse.parsely!.meta!.publisher!.name!,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                      )
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                _launchUrl(Uri.parse(widget.apiResponse.link.toString()));
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(widget.apiResponse.link.toString(),style: TextStyle(decoration:TextDecoration.underline,fontSize: 20,color: Colors.blue),),
              ),
            ),
            Text(widget.apiResponse.seoTitle!,style: TextStyle(fontSize: 20),),
            Text(widget.apiResponse.seoDescription.toString(),style: TextStyle(fontSize: 20),),
            Text(widget.apiResponse.title!.rendered.toString(),style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
