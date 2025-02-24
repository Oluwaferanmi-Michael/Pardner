import 'package:flutter/material.dart';

import '../../config/styles.dart';

class DateSelectCard extends StatelessWidget {
  const DateSelectCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              // border: Border.all(
              //     width: 2,
              //     color: AppColors.black,
              //     strokeAlign: BorderSide.strokeAlignOutside),
              borderRadius: BorderRadius.circular(16),
              color: AppColors.lightOrange),
          child: Column(
            spacing: 20,
            children: [
              Text(
                'Day',
                style: TextStyle(
                  fontFamily: FontFamilies.satoshi,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              Text(
                '12th',
                style: TextStyle(
                  fontFamily: FontFamilies.satoshi,
                  fontSize: 12,
                  color: AppColors.black,
                ),
              )
            ],
          ),
        ));
  }
}

class AddDateCard extends StatelessWidget {
  const AddDateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              // border: Border.all(
              //     width: 2,
              //     color: AppColors.black,
              //     strokeAlign: BorderSide.strokeAlignOutside),
              borderRadius: BorderRadius.circular(16),
              color: AppColors.lightPurple),
          child: Column(
            spacing: 20,
            children: [
              Icon(Icons.add),
              Text(
                'add study date',
                softWrap: true,
                maxLines: 2,
                
                style: TextStyle(
                  fontFamily: FontFamilies.satoshi,
                  fontSize: 12,
                  color: AppColors.black,
                ),
              )
            ],
          ),
        ));
  }
}
