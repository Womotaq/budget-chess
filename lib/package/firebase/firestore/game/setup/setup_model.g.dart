// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetupModelImpl _$$SetupModelImplFromJson(Map<String, dynamic> json) =>
    _$SetupModelImpl(
      halfFen: json['halfFen'] as String,
      betterWithSide:
          $enumDecodeNullable(_$SideEnumMap, json['betterWithSide']),
    );

Map<String, dynamic> _$$SetupModelImplToJson(_$SetupModelImpl instance) =>
    <String, dynamic>{
      'halfFen': instance.halfFen,
      'betterWithSide': _$SideEnumMap[instance.betterWithSide],
    };

const _$SideEnumMap = {
  Side.white: 'white',
  Side.black: 'black',
};