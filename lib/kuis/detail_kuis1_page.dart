import 'package:flutter/material.dart';
import 'package:penyuluhan_narkoba_app/model/kuis_data.dart';

class DetailKuis1Page extends StatefulWidget {
  final String materi;
  final List<Question> questionList;
  const DetailKuis1Page({
    Key? key,
    required this.materi,
    required this.questionList,
  }) : super(key: key);

  @override
  State<DetailKuis1Page> createState() => _DetailKuis1Pagestate();
}

class _DetailKuis1Pagestate extends State<DetailKuis1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              widget.materi,
              style: const TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 16, right: 16, top: 10, left: 16),
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index1) {
                return Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(borderRadius: BorderRadius.circular(15)),
                      Text(
                        widget.questionList[index1].questionTitle,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index2) {
                            return Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(15)),
                                  Text(
                                    widget.questionList[index1].answer[index2],
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black87),
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: widget.questionList[index1].answer.length,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: widget.questionList.length,
            ),
          ),
        )));
  }
}
