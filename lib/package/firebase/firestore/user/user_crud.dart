import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crea_chess/package/firebase/firestore/crud/collection_crud.dart';
import 'package:crea_chess/package/firebase/firestore/user/user_cubit.dart';
import 'package:crea_chess/package/firebase/firestore/user/user_model.dart';

class _UserCRUD extends CollectionCRUD<UserModel> {
  _UserCRUD()
      : super(
          collectionName: 'user',
          toFirestore: (
            UserModel data,
            SetOptions? _,
          ) =>
              data.toFirestore(),
          fromFirestore: (
            DocumentSnapshot<Map<String, dynamic>> snapshot,
            SnapshotOptions? _,
          ) =>
              UserModel.fromFirestore(snapshot),
        );

  final userCubit = UserCubit();

  @override
  Future<void> create({required UserModel data, String? documentId}) {
    return super.create(
      documentId: documentId,
      data: data.copyWith(
        createdAt: DateTime.now(),
        usernameLowercase: data.username?.toLowerCase(),
      ),
    );
  }

  Stream<UserModel?> streamUsername(String username) {
    return streamFiltered(
      filter: (collection) => collection.where(
        'usernameLowercase',
        isEqualTo: username.toLowerCase(),
      ),
    ).asyncMap((list) => list.firstOrNull);
  }

  Future<bool> usernameIsTaken(String username) async {
    final users = await readFiltered(
      filter: (collection) => collection.where(
        'usernameLowercase',
        isEqualTo: username.toLowerCase(),
      ),
    );
    return users.isNotEmpty;
  }
}

final userCRUD = _UserCRUD();
