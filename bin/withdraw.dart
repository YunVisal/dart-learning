import 'dart:io';

void main() {
  double balance = 100.00;
  print('Balance: \$${balance.toStringAsFixed(2)}');

  stdout.write('Enter withdrawal amount: ');
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

  if (amount > balance) {
    print('Insufficient funds');
    return;
  }

  balance -= amount;
  print('Withdrew: \$${amount.toStringAsFixed(2)}');
  print('New balance: \$${balance.toStringAsFixed(2)}');
}
