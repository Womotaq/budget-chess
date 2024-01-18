// ignore_for_file: public_member_api_docs, invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crea_chess/package/game/speed.dart';
import 'package:crea_chess/package/game/time_control.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge_model.freezed.dart';
part 'challenge_model.g.dart';

enum ChallengeStatus { open, started, finished }

@freezed
class ChallengeModel with _$ChallengeModel {
  factory ChallengeModel({
    String? id,
    DateTime? createdAt,
    String? authorId,
    ChallengeStatus? status,
    @Default(180) int time, // in seconds
    @Default(2) int increment, // in seconds
    @Default(8) int boardWidth,
    @Default(8) int boardHeight,
    @Default(39) int budget,
    List<String>? userIds,
  }) = _ChallengeModel;

  /// Required for the override getter
  const ChallengeModel._();

  factory ChallengeModel.fromJson(Map<String, dynamic> json) =>
      _$ChallengeModelFromJson(json);

  factory ChallengeModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return ChallengeModel.fromJson(doc.data() ?? {}).copyWith(id: doc.id);
  }

  Map<String, dynamic> toFirestore() {
    return toJson()..removeWhere((key, value) => key == 'id' || value == null);
  }

  TimeControl get timeControl => TimeControl(time, increment);
  Speed get speed => timeControl.speed;
}
