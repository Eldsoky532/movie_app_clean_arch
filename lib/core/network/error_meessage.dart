import 'package:equatable/equatable.dart';

class ErorrMessage extends Equatable
{

  final int statuscode;
  final String statusMessage;
  bool success;

  ErorrMessage({required this.statuscode,required this.statusMessage,required this.success});


  factory ErorrMessage.fromJson(Map<String , dynamic> json){
    return ErorrMessage(
        statuscode: json['status_code'],
        statusMessage: json['status_message'],
        success: json['success']
    );
  }

  @override
  List<Object> get props =>[statuscode,statusMessage,success];


}