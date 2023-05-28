import 'package:flutter/material.dart';
import 'package:pokemon/constants/constants.dart';
import 'package:pokemon/constants/images.dart';
import 'package:pokemon/constants/ui_helper.dart';

class ProjectAppBar extends StatefulWidget {
  const ProjectAppBar({super.key});

  @override
  State<ProjectAppBar> createState() => _ProjectAppBarState();
}

class _ProjectAppBarState extends State<ProjectAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UI.titleHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UI.defaultPadding(),
            child: Align(alignment: Alignment.centerLeft, child: Text(Constants.title, style: Constants.titleStyle())),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ProjectImages.appbar,
          ),
        ],
      ),
    );
  }
}
