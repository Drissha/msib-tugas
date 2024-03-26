void main() {
  // Data 1
  double weightMark1 = 78; // kg
  double heightMark1 = 1.69; // m
  double weightJohn1 = 92; // kg
  double heightJohn1 = 1.95; // m

  // Data 2
  double weightMark2 = 95; // kg
  double heightMark2 = 1.88; // m
  double weightJohn2 = 85; // kg
  double heightJohn2 = 1.76; // m

  // Hitung BMI
  double bmiMark1 = calculateBMI(weightMark1, heightMark1);
  double bmiJohn1 = calculateBMI(weightJohn1, heightJohn1);

  double bmiMark2 = calculateBMI(weightMark2, heightMark2);
  double bmiJohn2 = calculateBMI(weightJohn2, heightJohn2);

  // Tentukan apakah Mark memiliki BMI lebih tinggi dari John
  bool markHigherBMI1 = bmiMark1 > bmiJohn1;
  bool markHigherBMI2 = bmiMark2 > bmiJohn2;

  // Cetak hasil
  print('Data 1:');
  print('BMI Mark: $bmiMark1');
  print('BMI John: $bmiJohn1');
  print('Mark memiliki BMI lebih tinggi dari John: $markHigherBMI1');

  print('\nData 2:');
  print('BMI Mark: $bmiMark2');
  print('BMI John: $bmiJohn2');
  print('Mark memiliki BMI lebih tinggi dari John: $markHigherBMI2');
}

// Fungsi untuk menghitung BMI
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}
