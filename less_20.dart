import 'dart:io';

void main() {
  print('Курс доллара на сегодня:\n');
  print('Доллар: 87 сом');
  print('Евро: 110 сом');
  print('Российский рубль: 0.9 сом');
  print('Тенге: 0.212321 сом\n');

  print('1) Хотите обменять другую валюту на сом?');
  print('2) Хотите обменять сом на другую валюту?\n');

  stdout.write('Выберите вариант (1 или 2): ');
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print('\nВыберите валюту:');
    print('USD');
    print('EUR');
    print('RUB');
    print('KZT\n');

    stdout.write('Ввод: ');
    String currency = stdin.readLineSync()!;

    stdout.write('\nСколько $currency хотите купить? ');
    double amount = double.parse(stdin.readLineSync()!);

    double exchangeRate;
    if (currency == 'USD') {
      exchangeRate = 87;
    } else if (currency == 'EUR') {
      exchangeRate = 110;
    } else if (currency == 'RUB') {
      exchangeRate = 0.9;
    } else if (currency == 'KZT') {
      exchangeRate = 0.212321;
    } else {
      print('\nНекорректная валюта.');
      return;
    }

    double som = amount * exchangeRate;
    print('Обмен: $som сом на $amount $currency');
  } else if (choice == 2) {
    print('\nВыберите валюту:');
    print('USD');
    print('EUR');
    print('RUB');
    print('KZT\n');

    stdout.write('Ввод: ');
    String currency = stdin.readLineSync()!;

    stdout.write('\nСколько сом хотите обменять? ');
    double amount = double.parse(stdin.readLineSync()!);

    double exchangeRate;
    if (currency == 'USD') {
      exchangeRate = 1 / 87;
    } else if (currency == 'EUR') {
      exchangeRate = 1 / 110;
    } else if (currency == 'RUB') {
      exchangeRate = 1 / 0.9;
    } else if (currency == 'KZT') {
      exchangeRate = 1 / 0.212321;
    } else {
      print('\nНекорректная валюта.');
      return;
    }

    double convertedAmount = amount * exchangeRate;
    print('Обмен: $amount сом на $convertedAmount $currency');
  } else {
    print('\nНекорректный выбор. Пожалуйста, выберите 1 или 2.');
  }
}
