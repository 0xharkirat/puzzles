class Square {
  int x;
  int y;
  final int id;
  bool isEmpty;

  Square(this.x, this.y, {required this.id, this.isEmpty = false});

  // to String
  @override
  String toString() {
    return 'Square(x: $x, y: $y, id: $id)';
  }

  //CopyWith
  Square copyWith({
    int? x,
    int? y,
    int? id,
    
    bool? isEmpty,
  }) {
    return Square(
      x ?? this.x,
      y ?? this.y,
      id: id ?? this.id,
      isEmpty: isEmpty ?? this.isEmpty,

    );
  }

  // to Map
  Map<String, dynamic> toJson() {
    return {
      'x': x,
      'y': y,
      'id': id,
      'isEmpty': isEmpty,
    };
  }

  // to Square
  factory Square.fromJson(Map<String, dynamic> map) {
    return Square(
      map['x'],
      map['y'],
      id: map['id'],
      isEmpty: map['isEmpty'],
    );
  }
}
