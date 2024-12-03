import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:penyuluhan_narkoba_app/kuis/detail_kuis1_page.dart';
import 'package:penyuluhan_narkoba_app/model/kuis_data.dart';

class KuisPage extends StatefulWidget {
  const KuisPage({Key? key}) : super(key: key);

  @override
  State<KuisPage> createState() => _KuisPageState();
}

class _KuisPageState extends State<KuisPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
          appBar: AppBar(
              foregroundColor: Colors.white,
              title: const Text(
                "Kuis",
                style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w800, color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.brown),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
                child: StaggeredGridView.countBuilder(
              crossAxisCount: 1,
              itemCount: kuisDataList.length,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailKuis1Page(
                              materi: kuisDataList[index].materi,
                              questionList: kuisDataList[index].questionList,
                            )));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown),
                      color: Colors.brown,
                      // borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "KUIS ${index + 1}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'SF-Pro-Rounded', color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
