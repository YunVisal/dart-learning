void main() {
  const String accountNumber = '001-234-567';
  String? nickname;

  print('Account: ${nickname ?? accountNumber}');
  print('Nickname length: ${nickname?.length ?? 0}');
}
