class YearFact{
  final String date;
  final String text;
  final int year;
  final String type;


  YearFact({this.date, this.text, this.year, this.type});

  factory YearFact.fromJson(Map<String, dynamic> json){
    return YearFact(
        date: json['date'],
        text: json['text'],
        year: json['number'],
        type: json['type']
    );
  }

}