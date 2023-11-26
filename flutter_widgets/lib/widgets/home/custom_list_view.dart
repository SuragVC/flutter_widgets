import 'package:flutter/material.dart';
import 'package:flutter_widgets/constants/app_colors.dart';
import 'package:flutter_widgets/constants/app_text_styles.dart';
import 'package:flutter_widgets/models/common_schemas.dart';

class CustomListView extends StatefulWidget {
  final List<Screens> screenNames;
  final Function(Screens) onTapCallback;

  const CustomListView({
    Key? key,
    required this.screenNames,
    required this.onTapCallback,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  Screens? _selectedScreen;
  @override
  void initState() {
    _selectedScreen = widget.screenNames[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(
          color: AppColors.black,
        );
      },
      itemBuilder: (context, index) {
        Screens screen = widget.screenNames[index];
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedScreen = screen;
            });
            widget.onTapCallback(screen);
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: screen == _selectedScreen
                    ? AppColors.blueColor
                    : AppColors.transparent),
            child: ListTile(
              title: Text(
                screen.value,
                style: AppTextStyles.whiteTextStyle, // Set text color
              ),
              leading: screen.icon, // Replace with your icon logic
              tileColor: screen == _selectedScreen
                  ? AppColors.blueColor
                  : AppColors.transparent,
            ),
          ),
        );
      },
      itemCount: widget.screenNames.length,
    );
  }
}
