class NumberFact{
  final String text;
  final int number;
  final String type;

  NumberFact({this.text, this.number, this.type});

  factory NumberFact.fromJson(Map<String, dynamic> json){
    return NumberFact(
        text: json['text'],
        number: json['number'],
        type: json['type']
    );
  }

}