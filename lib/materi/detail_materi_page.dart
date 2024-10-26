import 'package:flutter/material.dart';

class DetailMateriPage extends StatefulWidget {
  final String title;
  final String subtitle;
  const DetailMateriPage({Key? key, required this.subtitle, required this.title}) : super(key: key);

  @override
  State<DetailMateriPage> createState() => _DetailMateriPageState();
}

class _DetailMateriPageState extends State<DetailMateriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.white,
          title: Text(
            widget.title,
            style:
                const TextStyle(fontFamily: 'Avenir', fontSize: 24, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange.shade700),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16, right: 16, top: 10, left: 16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Text(
                    widget.subtitle,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontFamily: 'Avenir', fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black87),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
