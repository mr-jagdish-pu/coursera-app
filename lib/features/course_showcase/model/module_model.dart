class Module {
  final String name;
  final String timestamp;

  Module({required this.name, required this.timestamp});

  factory Module.fromJson(Map<String, dynamic> json) {
    return Module(
      name: json['name'],
      timestamp: json['timestamp'],
    );
  }
  //to json
  Map<String, dynamic> toJson() => {
    'name': name,
    'timestamp': timestamp,
  };

  //copy with
  Module copyWith({
    String? name,
    String? timestamp,
  }) {
    return Module(
      name: name ?? this.name,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
