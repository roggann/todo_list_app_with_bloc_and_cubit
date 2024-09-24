class Todo{
  final String name;
  final DateTime createdAt;


  const Todo({
    required this.name,
    required this.createdAt,
  });

  @override
  bool operator ==(Object other) => identical(this, other) || (other is Todo && runtimeType == other.runtimeType && name == other.name && createdAt == other.createdAt);

  @override
  int get hashCode => name.hashCode ^ createdAt.hashCode;

  @override
  String toString() {
    return 'Todo{' + ' name: $name,' + ' createdAt: $createdAt,' + '}';
  }

  Todo copyWith({
    String? name,
    DateTime? createdAt,
  }) {
    return Todo(
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'createdAt': this.createdAt,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      name: map['name'] as String,
      createdAt: map['createdAt'] as DateTime,
    );
  }

//</editor-fold>
}