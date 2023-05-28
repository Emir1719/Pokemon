import 'package:flutter/material.dart';
import 'package:pokemon/widgets/appbar.dart';
import 'package:pokemon/widgets/pokemon_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OrientationBuilder(
          builder: (context, orientation) => Column(
            children: const [
              ProjectAppBar(),
              Expanded(child: PokemonList()),
            ],
          ),
        ),
      ),
    );
  }
}
