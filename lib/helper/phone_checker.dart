class PhoneChecker{
  static bool isNotValid(String phone)
  {
    return !RegExp(r"^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$").hasMatch(phone);
  }
}