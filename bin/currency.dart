import 'dart:io';

void main() {
  const int usdToKhrRate = 4100;

  stdout.write('Enter amount in USD: ');
  final double? amount = double.tryParse(stdin.readLineSync() ?? '');
  if (amount == null) {
    print('Invalid amount');
    return;
  }

  if (!amount.isFinite) {
    print('Invalid amount');
    return;
  }

  if (amount <= 0) {
    print('Amount must be greater than 0');
    return;
  }

  final int khrAmount = (usdToKhrRate * amount).round();
  print('\$${amount.toStringAsFixed(2)} = $khrAmount KHR');
}
