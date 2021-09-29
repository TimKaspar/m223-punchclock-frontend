
class Entry{
  int id;
  DateTime checkIn;
  DateTime checkOut;

  Entry(this.id, this.checkIn, this.checkOut);

  Map<String, dynamic> toJson(){
    return{
      'id' : id,
      'checkIn' : checkIn,
      'checkOut' : checkOut
    };
  }

  Entry fromJson(Map<String, dynamic> json){
    int id = json['id'] ?? "";
    DateTime checkIn = json['checkIn'] ?? "";
    DateTime checkOut = json['checkOut'] ?? "";

        return Entry(id, checkIn, checkOut);
  }
}