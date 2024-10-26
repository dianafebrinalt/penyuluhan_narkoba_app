import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:penyuluhan_narkoba_app/model/komik_data.dart';

class KomikPage extends StatefulWidget {
  const KomikPage({Key? key}) : super(key: key);
  @override
  State<KomikPage> createState() => _KomikPageState();
}

class _KomikPageState extends State<KomikPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
          appBar: AppBar(
              foregroundColor: Colors.white,
              title: const Text(
                "Komik",
                style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w800, color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.red),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: datakomik.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    datakomik[index].title,
                    fit: BoxFit.cover,
                  );
                }),
          ));
    });
  }
}
