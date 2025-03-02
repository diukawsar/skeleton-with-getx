part of '../_others.dart';

//=========================================================
// Generic Response Class Helper To Handle Response
// In More Generic Way!
//=========================================================
sealed class ApiResponse{}
class Success extends ApiResponse{
  Map<String, dynamic> data;
  int statusCode;

  Success(this.data, this.statusCode);
}
class Error extends ApiResponse{
  ApiError error;
  int statusCode;

  Error(this.error, this.statusCode);
}