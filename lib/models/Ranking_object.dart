class Ranking{
  String Position;
  String price;

  Ranking(
      {this.Position,this.price});

  factory Ranking.fromJson(Map<String, dynamic> json) {
    return new Ranking(
      Position: json['Position'],
      price: json['price'].toString(),
    );
  }
}

class Game{
  String Name;
  String Image;
  Game(
      {this.Name,this.Image});

  factory Game.fromJson(Map<String, dynamic> json) {
    return new Game(
      Name: json['Name'],
      Image: json['Image'].toString(),
    );
  }
}

class Pricedata{
  String Price;
  String Entry;
  Pricedata(
      {this.Price,this.Entry});

  factory Pricedata.fromJson(Map<String, dynamic> json) {
    return new Pricedata(
      Price: json['Price'],
      Entry: json['Entry'].toString(),
    );
  }
}