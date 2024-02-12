import 'module_model.dart';

class CourseData {
  final int id;
  final String title;
  final String introduction;
  final String image;
  final double rate;
  final int numRaters;
  final String offeredBy;
  final String aboutCourse;
  final List<String> skillsYoullGain;
  final List<Module> modules;

  CourseData({
    required this.id,
    required this.title,
    required this.introduction,
    required this.image,
    required this.rate,
    required this.numRaters,
    required this.offeredBy,
    required this.aboutCourse,
    required this.skillsYoullGain,
    required this.modules,
  });

  factory CourseData.fromJson(Map<String, dynamic> json) {
    return CourseData(
      id: json['id'],
      title: json['title'],
      introduction: json['introduction'],
      image: json['image'],
      rate: json['rate'],
      numRaters: json['numRaters'],
      offeredBy: json['offeredBy'],
      aboutCourse: json['aboutCourse'],
      skillsYoullGain: List<String>.from(json['skillsYoullGain']),
      modules: List<Module>.from(json['modules'].map((x) => Module.fromJson(x))),
    );
  }
  //to json
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'introduction': introduction,
    'image': image,
    'rate': rate,
    'numRaters': numRaters,
    'offeredBy': offeredBy,
    'aboutCourse': aboutCourse,
    'skillsYoullGain': List<dynamic>.from(skillsYoullGain.map((x) => x)),
    'modules': List<dynamic>.from(modules.map((x) => x.toJson())),
  };

  //copy with
  CourseData copyWith({
    int? id,
    String? title,
    String? introduction,
    String? image,
    double? rate,
    int? numRaters,
    String? offeredBy,
    String? aboutCourse,
    List<String>? skillsYoullGain,
    List<Module>? modules,
  }) {
    return CourseData(
      id: id ?? this.id,
      title: title ?? this.title,
      introduction: introduction ?? this.introduction,
      image: image ?? this.image,
      rate: rate ?? this.rate,
      numRaters: numRaters ?? this.numRaters,
      offeredBy: offeredBy ?? this.offeredBy,
      aboutCourse: aboutCourse ?? this.aboutCourse,
      skillsYoullGain: skillsYoullGain ?? this.skillsYoullGain,
      modules: modules ?? this.modules,
    );
  }
}