import 'package:movie_app_clean_arch/core/network/error_meessage.dart';

class ServerException implements Exception
{
  final ErorrMessage erorrMessage;

  ServerException({required this.erorrMessage});
}