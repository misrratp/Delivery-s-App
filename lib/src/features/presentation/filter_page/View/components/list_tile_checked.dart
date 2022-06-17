import 'package:flutter/material.dart';

//Colors
import 'package:deliver_app_yt/src/colors/colors.dart';

//Commons Widgets
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';

class ListTileCheck extends StatefulWidget {
  String texto;
  bool isActive;
  Function()? func;

  ListTileCheck(
      {Key? key, required this.texto, required this.isActive, this.func})
      : super(key: key);

  @override
  State<ListTileCheck> createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
            context: context,
            texto: widget.texto,
            isActive: widget.isActive,
            func: widget.func)
      ],
    );
  }
}

Widget listTiles(
    {BuildContext? context, texto: String, Function()? func, isActive: bool}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context!).dividerColor))),
    child: ListTile(
        onTap: func,
        title: headerText(
            texto: texto,
            color: isActive ? orange : Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 17),
        trailing: isActive
            ? Icon(
                Icons.check,
                color: isActive ? orange : gris,
              )
            : Text('')),
  );
}
