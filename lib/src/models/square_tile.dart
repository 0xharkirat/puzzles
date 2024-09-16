class SquareTile {
  final int value;

  final int currentPos;

  SquareTile({required this.currentPos, required this.value});

  SquareTile copyWith({int? value, int? currentPos}) {
    return SquareTile(
      value: value ?? this.value,
      currentPos: currentPos ?? this.currentPos,
    );
  }

  @override
  String toString() {
    return 'SquareTile{value: $value, currentPos: $currentPos}';
  }
}
