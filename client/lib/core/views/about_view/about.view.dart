import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_navbar.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    var data = "KARİYER VE ÖĞRENİM HAYATINIZ İÇİN WTECH PLATFORM";
    var data2 =
        "Fırsat eşitliği sağlayan meraklı, araştırmacı, üretken, cesareti ve özgüveni yüksek teknolojistlerin yetişmesine imkan sunar.";
    return Scaffold(
      appBar: CustomAppbar(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("assets/images/deneme.jpg", fit: BoxFit.cover),
          ),
          Text(data),
          const SizedBox(
            height: 5,
            width: 5,
          ),
          Text(data2),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.menu_book),
                  Text('28'),
                  CustomText(
                    'Eğitim Programı',
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.person_outline_rounded),
                  Text('500'),
                  CustomText(
                    'Wtecher Öğrenci',
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.school),
                  Text('200'),
                  CustomText(
                    'Wtecher Mezun',
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.people_outline_sharp),
                  Text('5000+'),
                  CustomText(
                    'Platform Üyesi',
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                  ),
                  SizedBox(
                      height: context.dependOnInheritedWidgetOfExactType(),
                      child: Container(
                        color: Colors.amber,
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
            width: 5,
          ),
          CustomText(
            'Bizi Özel Yapan Nedir?',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            width: 5,
          ),
          Row(
            children: [
              Card(
                  child: Container(
                      color: Colors.grey,
                      height: 100,
                      width: 100,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('Biz Kimiz?'),
                          ]))),
              SizedBox(
                height: 40,
                width: 40,
              ),
              Card(
                  child: Container(
                      color: Colors.grey,
                      height: 100,
                      width: 100,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('Neler Yapıyoruz?'),
                          ]))),
              SizedBox(
                height: 40,
                width: 40,
              ),
              Card(
                  child: Container(
                      color: Colors.grey,
                      height: 100,
                      width: 100,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('Hedeflerimiz'),
                          ]))),
            ],
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
