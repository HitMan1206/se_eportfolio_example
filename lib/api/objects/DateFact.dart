class DateFact{
  final String text;
  final int year;
  final String type;

  DateFact({this.text, this.year, this.type});

  factory DateFact.fromJson(Map<String, dynamic> json){
    return DateFact(
      text: json['text'],
      year: json['year'],
      type: json['type']
    );
  }

}