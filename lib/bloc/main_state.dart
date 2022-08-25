import 'package:zelite_solution_task/model/api_response.dart';

class MainState{
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

class MainInitialState extends MainState{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class ApiLoadingState extends MainState{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class ApiLoadedState extends MainState{
  List<ApiResponse> apiResponse;
  ApiLoadedState({required this.apiResponse});

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class ApiErrorState extends MainState{
  String msg;
  ApiErrorState({required this.msg});

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}