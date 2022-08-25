class MainEvent{

}

class ApiEvents extends MainEvent{
  int pageSize ;
  int page ;
  String context;
  ApiEvents({required this.pageSize,required this.page,required this.context});
}
