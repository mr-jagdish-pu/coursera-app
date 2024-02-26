abstract class FutureResponse{

}
class SuccessFutureResponse<T> extends FutureResponse{
  final T data;
  SuccessFutureResponse(this.data);
}
class ErrorFutureResponse extends FutureResponse{
  final String message;
  ErrorFutureResponse(this.message);
}