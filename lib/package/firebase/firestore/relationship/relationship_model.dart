// ignore_for_file: public_member_api_docs, invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'relationship_model.freezed.dart';
part 'relationship_model.g.dart';

enum RelationshipStatus {
  requestedByFirst,
  requestedByLast,
  friends,
  canceled,
  blockedByFirst,
  blockedByLast,
}

@freezed
class RelationshipModel with _$RelationshipModel {
  factory RelationshipModel({
    String? id,
    String? ref, // TODO : remove ?
    DateTime? createdAt, // date of friendship start
    DateTime? updatedAt,
    List<String>? userIds,
    RelationshipStatus? status,
  }) = _RelationshipModel;

  /// Required for the override getter
  const RelationshipModel._();

  factory RelationshipModel.fromJson(Map<String, dynamic> json) =>
      _$RelationshipModelFromJson(json);

  factory RelationshipModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return RelationshipModel.fromJson(doc.data() ?? {})
        .copyWith(id: doc.id, ref: doc.reference.path);
  }

  Map<String, dynamic> toFirestore() {
    return toJson()
      ..removeWhere((key, value) {
        return key == 'id' || key == 'ref' || value == null;
      });
  }

  String? get blocker {
    if (userIds == null || userIds!.isEmpty) return null;
    if (status == RelationshipStatus.blockedByFirst) {
      return userIds!.first;
    } else if (status == RelationshipStatus.blockedByLast) {
      return userIds!.last;
    } else {
      return null;
    }
  }

  String? get requester {
    if (userIds == null || userIds!.isEmpty) return null;
    if (status == RelationshipStatus.requestedByFirst) {
      return userIds!.first;
    } else if (status == RelationshipStatus.requestedByLast) {
      return userIds!.last;
    } else {
      return null;
    }
  }

  bool isBlockedBy(String userId) {
    if (userIds == null || userIds!.isEmpty) return false;
    return status == RelationshipStatus.blockedByFirst &&
            userId == userIds!.first ||
        status == RelationshipStatus.blockedByLast && userId == userIds!.last;
  }

  bool isRequestedBy(String userId) {
    if (userIds == null || userIds!.isEmpty) return false;
    return status == RelationshipStatus.requestedByFirst &&
            userId == userIds!.first ||
        status == RelationshipStatus.requestedByLast && userId == userIds!.last;
  }

  String? otherUser(String user1) {
    if (userIds == null || userIds!.isEmpty) return null;
    if (user1 == userIds!.first) {
      return userIds!.last;
    } else if (user1 == userIds!.last) {
      return userIds!.first;
    } else {
      return null;
    }
  }
}
