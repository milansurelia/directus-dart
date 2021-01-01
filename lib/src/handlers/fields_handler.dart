// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:directus/src/data_classes/items/directus_field.dart';
import 'package:directus/src/data_classes/items/directus_file.dart';
import 'package:directus/src/handlers/items_handler.dart';

class FieldsHandler extends ItemsHandler<DirectusField> {
  FieldsHandler({required Dio client})
      : super(
          'directus_fields',
          client: client,
          converter: FileConverter(),
        );
}
