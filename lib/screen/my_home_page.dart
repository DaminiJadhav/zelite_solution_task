import 'package:flutter/material.dart';
import 'package:zelite_solution_task/bloc/main_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zelite_solution_task/bloc/main_event.dart';
import 'package:zelite_solution_task/bloc/main_state.dart';
import 'package:zelite_solution_task/model/api_response.dart';
import 'package:zelite_solution_task/screen/bookmark_screen.dart';
import 'package:zelite_solution_task/screen/home_detail_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MainBloc _mainBloc;
  int _page = 1;
  final int _limit = 10;
  bool _isLoadMoreRunning = false;
  late List<ApiResponse> apiResponse=[];
  ScrollController _controller=new ScrollController();
  ScrollController scrollController=new ScrollController();
  List<dynamic> bookmarksList=[];
  List<bool> isbook=[];

  bool isbookmark=false;
  int position=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mainBloc = BlocProvider.of(context);
    scrollController.addListener(() {
      if(scrollController.position.maxScrollExtent==scrollController.offset){
        setState(() {
          _isLoadMoreRunning=true;
          print("Scroll ${_page}");
          _getapidata();
        });

      }
    });
    _getapidata();
  }

  _getapidata(){
    _mainBloc.add(ApiEvents(pageSize: _limit,page:_page ,context: "view"));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          actions: [
            IconButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>
                          BookMarkScreen(bookmarksList: bookmarksList))
                  );

                },
                icon: Icon(Icons.bookmark)
            ),
          ],
        ),
        body: _getdetail()
    );
  }


  _getdetail(){
    return BlocListener<MainBloc, MainState>(
      listener: (context,state){
        if (state is ApiLoadingState) {
          setState(() {
            _isLoadMoreRunning=true;

          });
        }else if (state is ApiLoadedState) {
          setState(() {
            _isLoadMoreRunning=false;
            apiResponse.addAll(state.apiResponse);
            isbook = List<bool>.filled(apiResponse.length, false);

            _page++;
          });
          // print("${state.apiResponse.status}");
        }else if (state is ApiErrorState) {
          setState(() {
            _isLoadMoreRunning=false;
          });
        }
      },
      child: SingleChildScrollView(
        controller: scrollController,
        child:/*results!.length==0 ? Container() :*/ Column(
          children: [
            ListView.builder(
              controller: _controller,
              shrinkWrap: true,
              itemCount: apiResponse.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>
                          HomeDetailScreen(apiResponse: apiResponse[index],bookmarksList: bookmarksList,))
                  );
                },
                child: Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(apiResponse[index].id.toString(),style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                            IconButton(
                                onPressed: (){
                                  setState(() {
                                    position=index;
                                    if(isbook[index]){
                                      bookmarksList.remove(apiResponse[index].parsely!.meta!.author![0].name!);
                                      // isbookmark=false;
                                      isbook[index]=false;

                                    }else{
                                      bookmarksList.add(apiResponse[index].parsely!.meta!.author![0].name!);
                                      // isbookmark=true;
                                      isbook[index]=true;

                                    }
                                  });

                                },
                                icon: Icon(isbook[index] ? Icons.bookmark : Icons.bookmark_border)
                            ),
                          ],
                        ),
                        Text(apiResponse[index].parsely!.meta!.author![0].name!,style: TextStyle(fontSize: 20),),
                        Text(apiResponse[index].status!.toString(),style: TextStyle(fontSize: 20),),
                        Text(apiResponse[index].title!.rendered!,style: TextStyle(fontSize: 20),),
                        Text(apiResponse[index].date!.toString(),style: TextStyle(fontSize: 20),),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (_isLoadMoreRunning == true)
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 40),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );

  }
}
