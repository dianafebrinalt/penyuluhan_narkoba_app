class KuisData {
  String materi;
  List<Question> questionList;

  KuisData({
    required this.materi,
    required this.questionList,
  });
}

class Question {
  String questionTitle;
  List<String> answer;

  Question({
    required this.questionTitle,
    required this.answer,
  });
}

var kuisDataList = [
  KuisData(materi: 'kuis 1', questionList: [
    Question(
        questionTitle:
            '1. Singkatan dari narkotika, psikotropika, dan obat-obatan terlarang adalah....',
        answer: [
          'a. Narkotika',
          'b. Nappza',
          'c. NPOB',
          'd. Narkoba',
          'e. Zat Adikti'
        ]),
    Question(
        questionTitle: '2. Narkotika merupakan zat yang berasal dari.....',
        answer: [
          'a. Farmasi',
          'b. BPOM',
          'c. Tanaman dan Non Tanaman',
          'd. Alami dan Non Alami',
          'e. Toko Obat',
        ]),
    Question(
      questionTitle: '3. Efek yang diberikan jika menggunakan Narkotika.....',
      answer: [
        'a. Nyeri Kepala',
        'b. Candu, Menurunnya rasa nyeri dan hilang kesadaran',
        'c. Suka melakukan hal-hal tidak wajar',
        'd. Luka menjadi sembuh',
        'e. Masa depan menjadi tidak terarah'
      ],
    )
  ]),
  KuisData(materi: 'kuis 2', questionList: [
    Question(
        questionTitle:
            '1. Dibawah ini yang merupakan jenis dari Narkoba ialah....',
        answer: [
          'a. Narkotika, Psikotropika, dan Zat Adiktif',
          'b. Ganja dan Obat-obat terlarang',
          'c. Sintetis dan Semi Sintetis',
          'd. Legal dan Illegal',
          'e. Semua Benar'
        ]),
    Question(
      questionTitle: '2. Contoh dari Zat Adiktif ialah.....',
      answer: [
        'a. Kokain dan Heroin',
        'b. Opium dan Ganja',
        'c. LSD dan Ekstasi',
        'd. MDMA dan STP',
        'e. Alkohol dan Benzodiazepin'
      ],
    ),
    Question(
      questionTitle: '3. Morfin dan Ganja termasuk kedalam contoh dari.....',
      answer: [
        'a. Zat Adiktif',
        'b. Narkotika',
        'c. Obat terlarang',
        'd. Sintetis',
        'e. Psikotropika'
      ],
    ),
  ])
];
