import 'package:flutter/material.dart';
import 'package:untitled3/screens/HomeScreen.dart';

class Write extends StatelessWidget {
  const Write({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text(
            '오늘의 할 일이 무엇인가요',
        textAlign: TextAlign.center,
        ),
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            '취소',

          ),
        ),

        actions: [
          TextButton(onPressed: () {
            final todoTextField =
                context.findAncestorWidgetOfExactType<TextFormField>();

            if (todoTextField?.controller?.text?.isEmpty ?? true) {
              showDialog(
                  context: context,
                  builder: (context)=>AlertDialog(
                    title: Text('잠깐!!'),
                    content: Text('할 일을 입력해 주세요!'),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context),
                          child: Text('작성하기'),
                      ),
                    ],
                  ),
              );
            }
          }, child: Text(
            '완료',
          ))
        ],
      ),

      body:
      Container(

        child:
        Padding(
          padding: EdgeInsets.all(50),

          child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: '할 일'),
                ),
                SizedBox(height: 16,),
                TextFormField(
                  decoration: InputDecoration(labelText: '날짜'),
                  readOnly: true,
                  onTap: () {

                  },
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        flex: 1,
                        child: TextFormField(
                      decoration: InputDecoration(labelText: '시작 시간'),
                          readOnly: true,
                          onTap: () {

                          },
                    ),
                    ),
                    SizedBox(width: 8,),
                    Flexible(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(labelText: '종료 시간'),
                        readOnly: true,
                        onTap: () {

                        },
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 16,),
                TextFormField(
                  decoration: InputDecoration(labelText: '메모'),
                  maxLines: 3,
                )
              ],
            )
        ),
      ),

    );
  }
}
