import 'package:flutter/material.dart';

import '../../../core/constant/dimentions.dart';

class CustomAppBar extends StatelessWidget {
  final String titleAppBar;
  final void Function()? onPressedIcon;
  final void Function()? onPressedSearch;
  const CustomAppBar({Key? key, required this.titleAppBar, this.onPressedIcon, this.onPressedSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: IconButton(onPressed: onPressedSearch, icon: const Icon(Icons.search)),
                    hintText: titleAppBar,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Colors.grey[200]),
              )),
          const SizedBox(
            width: 10,
          ),
          Container(
            child: IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                size: Dimensions.fontSize25,
                color: Colors.grey[600],
              ),
              onPressed: onPressedIcon,
            ),
          )
        ],
      ),
    );
  }
}
