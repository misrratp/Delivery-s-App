import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'AppError.dart';


abstract class _Exceptions{

static String socketExceptionMessage = " Tira tu modem chavo";
static String httpException = " No buscamos la pagina";
static String formatException = " Mala respuesta del formato";



}

abstract class ApiService{
 Future<Map<String,dynamic>> getDataFromPostRequest({ required Map<String,dynamic> bodyParameters, required String url, Map<String,String>? headers});
Future<Map<String,dynamic>> getDataFromPutRequest({ required Map<String,dynamic> bodyParameters, required String url, Map<String,String>? headers});
Future<Map<String,dynamic>> getDataFromGetRequest({ required String url, Map<String,String>? headers});
}

class DefaultApiService extends ApiService{

  @override
   Future<Map<String, dynamic>> getDataFromGetRequest({ required String url, Map<String, String>? headers}) async{
final _url = Uri.parse(url);
final response = await http.get(_url, headers: headers);

try{
if (response.statusCode.toString().contains('20')){
//llamada correctamente
var jsonData = jsonDecode(response.body);
return jsonData;
} else {
//tuvo un error
throw Failure.fromBody(body: response.body);
}
} on SocketException {
throw Failure.fromMessage(message: _Exceptions.socketExceptionMessage);

} on HttpException {
  throw Failure.fromMessage(message: _Exceptions.httpException);


} on FormatException {
throw Failure.fromMessage(message: _Exceptions.formatException);
}}


  @override
  Future<Map<String, dynamic>> getDataFromPostRequest({required Map<String, dynamic> bodyParameters, required String url, Map<String, String>? headers}) async {
final _url = Uri.parse(url);
final body =json.encode(bodyParameters);
final response = await http.post(_url, headers: headers, body: body);

try{
//todo revisar este if
if (response.statusCode.toString().contains('20')){
var jsonData = jsonDecode(response.body);
return jsonData;
} else {
throw Failure.fromBody(body: response.body);
}
} on SocketException {
throw Failure.fromMessage(message: _Exceptions.socketExceptionMessage);

} on HttpException {
  throw Failure.fromMessage(message: _Exceptions.httpException);


} on FormatException {
throw Failure.fromMessage(message: _Exceptions.formatException);
}}


  @override
  Future<Map<String, dynamic>> getDataFromPutRequest({required Map<String, dynamic> bodyParameters, required String url, Map<String, String>? headers}) async {
 final _url = Uri.parse(url);
final body =json.encode(bodyParameters);
final response = await http.post(_url, headers: headers, body: body);

try{
//todo revisar este if
if (response.statusCode.toString().contains('20')){
var jsonData = jsonDecode(response.body);
return jsonData;
} else { 
throw Failure.fromBody(body: response.body);
}
} on SocketException {
throw Failure.fromMessage(message: _Exceptions.socketExceptionMessage);

} on HttpException {
  throw Failure.fromMessage(message: _Exceptions.httpException);


} on FormatException {
throw Failure.fromMessage(message: _Exceptions.formatException);
}}}
