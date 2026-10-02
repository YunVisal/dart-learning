import 'dart:io';

void main() {
  stdout.write('Enter deposit amount: ');

  final amount = double.tryParse(stdin.readLineSync() ?? '');
  if (amount == null) {
    stdout.write('Invalid amount\n');
    return;
  }

  if (!amount.isFinite) {
    stdout.write('Invalid amount\n');
    return;
  }

  if (amount <= 0) {
    stdout.write('Amount must be greater than 0\n');
    return;
  }

  stdout.write('Deposited: \$${amount.toStringAsFixed(2)}\n');
}
