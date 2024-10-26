import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:penyuluhan_narkoba_app/materi/detail_materi_page.dart';
import 'package:penyuluhan_narkoba_app/model/materi_data.dart';

class MateriPage extends StatefulWidget {
  const MateriPage({Key? key}) : super(key: key);

  @override
  State<MateriPage> createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
          appBar: AppBar(
              foregroundColor: Colors.white,
              title: const Text(
                "Materi",
                style: TextStyle(fontFamily: 'Avenir', fontSize: 24, fontWeight: FontWeight.w800, color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.orange.shade700),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
                child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: materiDataList.length,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailMateriPage(
                              title: materiDataList[index].title,
                              subtitle: materiDataList[index].subtitle,
                            )));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange.shade700),
                      color: Colors.orange.shade700,
                    ),
                    child: Text(
                      materiDataList[index].title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Avenir', fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
            )),
            // );
            // }),
          ));
    });
  }
}
