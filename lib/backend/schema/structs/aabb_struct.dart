// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AabbStruct extends BaseStruct {
  AabbStruct({
    String? estado,
  }) : _estado = estado;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? 'SECO';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  static AabbStruct fromMap(Map<String, dynamic> data) => AabbStruct(
        estado: data['estado'] as String?,
      );

  static AabbStruct? maybeFromMap(dynamic data) =>
      data is Map ? AabbStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'estado': _estado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
      }.withoutNulls;

  static AabbStruct fromSerializableMap(Map<String, dynamic> data) =>
      AabbStruct(
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AabbStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AabbStruct && estado == other.estado;
  }

  @override
  int get hashCode => const ListEquality().hash([estado]);
}

AabbStruct createAabbStruct({
  String? estado,
}) =>
    AabbStruct(
      estado: estado,
    );
