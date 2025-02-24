import 'package:flutter/material.dart';

import '../../../config/styles.dart';


class BottomSheetModel {
  final Widget presentation;
  Text? description;
  final String title;

  BottomSheetModel({
    required this.presentation,
    required this.title,
    this.description,
  });
}

class ButtonOptions{
  final String text;
  final void Function() onPressed;

  const ButtonOptions({required this.text, required this.onPressed});


}

extension Present on BottomSheetModel {
  Future<void> present(BuildContext context) async {
    return showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        isDismissible: true,
        elevation: 4,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                16, 16, 16, MediaQuery.of(context).viewInsets.bottom + 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.sticky_note_2_outlined,
                      color: AppColors.purple,
                    ),
                    const SizedBox(width: 16),
                    Text(title,
                        style: const TextStyle(
                          fontFamily: FontFamilies.cabinet,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ))
                  ],
                ),
                const SizedBox(height: 16),
                Flexible(child: SingleChildScrollView(child: presentation)),
              ],
            ),
          );
        });
  }
}