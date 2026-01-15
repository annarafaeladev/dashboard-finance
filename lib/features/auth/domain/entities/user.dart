class User {
  final String id;
  final String name;
  final String email;
  final String? photo;
  final String accessToken;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.photo,
    required this.accessToken,
  });
}
