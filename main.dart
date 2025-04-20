import 'MobilePhone.dart';

void main() {
  var defaultMobile = MobilePhone.Default();
  print(defaultMobile);     

  var samsungMobile = MobilePhone(brand: "Samsung", model: "S7", storage: 64, serialNumber: "1237458938219");
  print(samsungMobile);

  const cSamsungMobile = MobilePhone.constant(brand: "iPhone", model: "16 Pro Max", storage: 128, serialNumber: "123892138193812");
  print(cSamsungMobile);

  var copiedMobile = samsungMobile.copyWith(serialNumber: "9999999999999");
  print(copiedMobile);

  var copiedMobile2 = samsungMobile;
  print(copiedMobile2);
}