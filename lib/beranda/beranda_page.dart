import 'package:flutter/material.dart';
import 'package:penyuluhan_narkoba_app/komik/komik_page.dart';
import 'package:penyuluhan_narkoba_app/kuis/kuis_page.dart';
import 'package:penyuluhan_narkoba_app/materi/materi_page.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 250, 243, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 45, bottom: 10),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: const Text("Aplikasi Penyuluhan\nBahaya Narkoba",
                    style: TextStyle(
                        fontFamily: 'Avenir', color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700)),
              ),
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  "assets/images/beranda-img.jpg",
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Hallo PKB",
                        style: TextStyle(
                            fontFamily: 'Avenir', color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MateriPage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange.shade700),
                          color: Colors.orange.shade700,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Materi",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Avenir', color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const KuisPage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.brown),
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Kuis",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Avenir', color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const KomikPage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Komik",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Avenir', color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow.shade800),
                          color: Colors.yellow.shade800,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Petunjuk",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Avenir', color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
