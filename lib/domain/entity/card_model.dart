class CardModel {
  final int id;
  final String row;
  final int seqNum;
  final String text;

  CardModel(
      {required this.id,
      required this.row,
      required this.seqNum,
      required this.text});

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      id: json['id'] as int,
      row: json['row'] as String,
      seqNum: json['seq_num'] as int,
      text: json['text'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['row'] = this.row;
    data['seq_num'] = this.seqNum;
    data['text'] = this.text;
    return data;
  }
}
