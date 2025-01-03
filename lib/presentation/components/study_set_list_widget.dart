import 'package:flutter/material.dart';

class StudySetListWidget extends StatelessWidget {
  const StudySetListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 2 - 42,
      child: Column(
        spacing: 8,
        children: [
          Row(
            children: [Text('Study set 1'), Spacer()],
          ),

          SizedBox(
            width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 2 - 42,
            child: PageView.builder(
              controller: PageController(initialPage: 1),
              itemCount: 2,
              itemBuilder: (context, pageIndex) {
                return SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 3,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    separatorBuilder: (context, index) => SizedBox(height: 16),
                    itemBuilder: (context, listIndex) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                        decoration: BoxDecoration(
                          color: Color(0xFFCEC1ED),
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                        children: [
                          // About the Session
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text('A Little Life'),
                            Text('2 Hours')
                            ],),
                  
                            // other details
                            Column()
                        ],
                      ),);
                  }),
                );
              }),
          )
        ],
      ),
    );
  }
}