import 'package:directus/src/utils/items_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'directus_permission.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DirectusPermission {
  int? id;
  String? role;
  String? collection;
  String? action;
  Map? permissions;
  Map? validation;
  Map? presets;
  String? fields;
  int? limit;

  DirectusPermission({
    this.id,
    this.role,
    this.collection,
    this.action,
    this.permissions,
    this.validation,
    this.presets,
    this.fields,
    this.limit,
  });

  /// Used for code generation
  factory DirectusPermission.fromJson(Map<String, dynamic> json) =>
      _$DirectusPermissionFromJson(json);

  /// Used for code generation
  Map<String, dynamic> toJson() => _$DirectusPermissionToJson(this);
}

class PermissionConverter implements ItemsConverter<DirectusPermission> {
  @override
  Map<String, dynamic> toJson(data) {
    return data.toJson();
  }

  @override
  DirectusPermission fromJson(Map<String, dynamic> data) {
    return DirectusPermission.fromJson(data);
  }
}
