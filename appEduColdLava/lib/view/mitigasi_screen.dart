import 'package:flutter/material.dart';
import 'package:appEduColdLava/detail_screen/detail_screen_mitigasi.dart';
import '../models/mitigasi.dart';

var _THEME_COLOUR_ = const Color(0xff0A3D62);

class MitigasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _THEME_COLOUR_,
        title: Text('EduColdLava'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Mitigasi mitigasi = mitigasiList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreenMitigasi(mitigasi: mitigasi);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(mitigasi.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            mitigasi.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: mitigasiList.length,
      ),
    );
  }
}
