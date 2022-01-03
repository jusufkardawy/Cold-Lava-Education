class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List sampleData = [
  {
    "id": 1,
    "question": "Gunung terdiri dari dua jenis yaitu gunung aktif dan gunung tidak aktif. Gunung aktif mengeluarkan material berupa …",
    "options": ['Lahar, air, abu vulkanik', 'Air, lava, abu vulkanik', 'Air, lava, pasir', 'Lahar, lava, abu vulkanik'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "1. Tempat penyimpanan air\n"
        "2. Sarana rekreasi alam\n"
        "3. Area perindustrian\n"
        "Manfaat gunung bagi manusia ditunjukan oleh nomor ….",
    "options": ['(1) , (3)', '(1) , (2)', '(2) , (3)', '(1) , (2) , (3)'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question":
    "Salah satu manfaat Dataran Rendah bagi manusia adalah ….",
    "options": ['Penghasil barang tambang', 'Tambak garam', 'Perkebunan kelapa', 'Area perindustrian'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "Wilayah daratan yang terbentuk dari endapan sungai disebut …",
    "options": ['Ngarai', 'Delta', 'Jurang', 'Lembah'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Dataran tinggi pada peta biasanya ditunjukan oleh warna …",
    "options": ['Kuning dan oranye', 'Biru dan oranye', 'Ungu dan oranye', 'Putih dan oranye'],
    "answer_index": 0,
  },
];
