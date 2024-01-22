import 'package:flutter/material.dart';
import 'package:learn_flutter/Theme/buttonCircleStyle.dart';

class MyAppWidget extends StatefulWidget {
  const MyAppWidget({super.key});

  @override
  State<MyAppWidget> createState() => _MyAppWidgetState();
}

class _MyAppWidgetState extends State<MyAppWidget> {
  int countClick = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 84),
            topElements(),
            SizedBox(height: 56),
            ContainerForCircleWidget(),
            SizedBox(height: 60),
            bottomButtonCod()
          ],
        ),
      ),
    );
  }
  
  Widget bottomButtonCod(){
    final textStyleForButton = TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
    return  Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              createButton(1, Text('1', style: textStyleForButton,)),
              SizedBox(width: 24),
              createButton(2, Text('2', style: textStyleForButton)),
              SizedBox(width: 24),
              createButton(3, Text('3', style: textStyleForButton)),
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              createButton(4, Text('4', style: textStyleForButton)),
              SizedBox(width: 24),
              createButton(5, Text('5', style: textStyleForButton)),
              SizedBox(width: 24),
              createButton(6, Text('6', style: textStyleForButton)),
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              createButton(7, Text('7', style: textStyleForButton)),
              SizedBox(width: 24),
              createButton(8, Text('8', style: textStyleForButton)),
              SizedBox(width: 24),
              createButton(9, Text('9', style: textStyleForButton)),
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 80),
              SizedBox(width: 24),
              createButton(11, Text('0', style: textStyleForButton)),
              SizedBox(width: 24),
              createButton(12, Icon(Icons.backspace_outlined)),
            ],
          ),
        ],
      ),
    );
  }
  Widget createButton(int index, Widget elementButton){

    return Container(
      height: 80,
      width: 80,
      child: ElevatedButton(
        style: ButtonCircleStyle.style,
        onPressed: () {
          if (index <= 11 && countClick < 4){
            countClick++;
          }
          else if (index == 12 && countClick > 0) {
            countClick--;
          }
          setState(() {});
        },
        child: elementButton,
      ),
    );
  }
  Widget ContainerForCircleWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        countClick >= 1 ? CircleContainerWidget( Color(0xFF196EEE)) : CircleContainerWidget(Color(0xFFF5F5F9),),
        countClick >= 2 ? CircleContainerWidget( Color(0xFF196EEE)) : CircleContainerWidget(Color(0xFFF5F5F9),),
        countClick >= 3 ? CircleContainerWidget(Color(0xFF196EEE)) : CircleContainerWidget(Color(0xFFF5F5F9),),
        countClick >= 4 ? CircleContainerWidget(Color(0xFF196EEE)) : CircleContainerWidget(Color(0xFFF5F5F9),)
      ],
    );
  }
  Widget CircleContainerWidget(Color color){
    return Container(
      margin: EdgeInsets.only(left: 12),
      width: 16,
      height: 16,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(
            width: 1,
            color: Color(0xFF196EEE),
          )
        ),
      ),
    );
  }
  
  Widget topElements(){
    return  Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const
              Text('Пропустить', style: TextStyle(fontSize: 15),)),
              SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Создайте пароль', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
              ),)
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Для защиты ваших персональных данных', style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF939396),
                  fontWeight: FontWeight.w400
              ),)
            ],
          ),
        ],
      ),
    );
  }
}
