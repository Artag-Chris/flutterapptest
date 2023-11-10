import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetyesNoAnswer{

Future<Message> getAnswer() async{

final _dio= Dio();


  final response = await _dio.get("https://yesno.wtf/api");

  final yesnoModel=  YesNoModel.fromJsonMap(response.data);

return yesnoModel.toMessageEntity();
}

}