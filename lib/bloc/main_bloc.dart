import 'package:zelite_solution_task/bloc/main_event.dart';
import 'package:zelite_solution_task/bloc/main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zelite_solution_task/service/web_service.dart';

class MainBloc extends Bloc<MainEvent,MainState> {
  MainBloc({required this.webService}) : super(MainInitialState()) {
    on<ApiEvents>((event, emit) async{
      await _getMonks(emit,event);
    });
  }
  WebService webService;


  Future<void> _getMonks(var apiResponse,ApiEvents event) async {
    emit(ApiLoadingState());
    try {
      var apiResponse = await webService.getapiResponse(event.pageSize,event.page,event.context);
      emit(ApiLoadedState(apiResponse: apiResponse));
    } catch (e) {
      emit (ApiErrorState(msg: (e.toString())));
    }
  }
 /* @override
  Stream<MainState> mapEventToState(MainEvent event) async* {
    try{
      if (event is ApiEvents) {
        try {
          yield ApiLoadingState();
          var apiResponse = await webService.getapiResponse(
              event.pageSize, event.page,event.context);
          yield ApiLoadedState(apiResponse: apiResponse);
        } catch (e) {
          print(e.toString());
          yield ApiErrorState(msg: e.toString());
        }
      }
    }catch (e) {
      print(e.toString());
      yield ApiErrorState(msg: e.toString());
    }
  }*/
}