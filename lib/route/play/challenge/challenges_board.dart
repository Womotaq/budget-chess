import 'package:crea_chess/package/firebase/firestore/challenge/challenge_crud.dart';
import 'package:crea_chess/package/firebase/firestore/challenge/challenge_model.dart';
import 'package:crea_chess/package/game/speed.dart';
import 'package:crea_chess/package/game/time_control.dart';
import 'package:crea_chess/route/play/challenge/challenge_sorter_cubit.dart';
import 'package:crea_chess/route/play/challenge/challenge_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChallengesBoard extends StatelessWidget {
  const ChallengesBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<ChallengeSorterCubit, Speed?>(
        builder: (context, speed) {
          return StreamBuilder<Iterable<ChallengeModel>>(
            stream: challengeCRUD.streamAll(),
            builder: (context, snapshot) {
              var challenges = snapshot.data?.toList();
              if (challenges == null) return const CircularProgressIndicator();
              if (speed != null) {
                challenges = challenges.where((c) => c.speed == speed).toList();
              }
              challenges.sort(
                (a, b) => (a.time ?? TimeControl.defaultTime)
                    .compareTo(b.time ?? TimeControl.defaultTime),
              );
              return Column(
                children: challenges.map(ChallengeTile.new).toList(),
              );
            },
          );
        },
      ),
    );
  }
}
