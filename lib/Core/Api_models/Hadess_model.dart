class Hadess_model {
  Hadess_model({
    required this.hadithnumber,
    required this.arabicnumber,
    required this.text,
    required this.grades,
    required this.reference,
  });
  late final int hadithnumber;
  late final int arabicnumber;
  late final String text;
  late final List<Grades> grades;
  late final Reference reference;

  Hadess_model.fromJson(Map<dynamic, dynamic> json){
    hadithnumber = json['hadithnumber'];
    arabicnumber = json['arabicnumber'];
    text = json['text'];
    grades = List.from(json['grades']).map((e)=>Grades.fromJson(e)).toList();
    reference = Reference.fromJson(json['reference']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hadithnumber'] = hadithnumber;
    _data['arabicnumber'] = arabicnumber;
    _data['text'] = text;
    _data['grades'] = grades.map((e)=>e.toJson()).toList();
    _data['reference'] = reference.toJson();
    return _data;
  }
}

class Grades {
  Grades({
    required this.name,
    required this.grade,
  });
  late final String name;
  late final String grade;

  Grades.fromJson(Map<String, dynamic> json){
    name = json['name'];
    grade = json['grade'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['grade'] = grade;
    return _data;
  }
}

class Reference {
  Reference({
    required this.book,
    required this.hadith,
  });
  late final int book;
  late final int hadith;

  Reference.fromJson(Map<String, dynamic> json){
    book = json['book'];
    hadith = json['hadith'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['book'] = book;
    _data['hadith'] = hadith;
    return _data;
  }
}