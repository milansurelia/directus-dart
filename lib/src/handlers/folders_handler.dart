import 'package:dio/dio.dart';
import 'package:directus/src/handlers/items_handler.dart';

class FoldersHandler extends ItemsHandler {
  FoldersHandler({required Dio client}) : super('directus_folders', client: client);
}
