import 'dart:developer';

extension StringExtensions on String {
  int validateIsbn() {
    int? isbnNo;
    isbnNo = int.tryParse(this) != null && this.length == 5 ? int.tryParse(this)! : 0;
    return isbnNo;
  }

  bool validateTitle() {
    if(RegExp(r'^[a-zA-Z0-9\s]+$').hasMatch(this)) {
      return true;
    }
    throw "Only 'letters' and 'numbers' are allowed in Title.";
  }

  bool validateAuthorOrName() {
    try {
      if(RegExp(r'^[a-zA-Z\s]+$').hasMatch(this)) {
        return true;
      }
      throw "Only 'letters' are allowed in Author/Member name.";
    } catch (e) {
      rethrow;
    }
  }

  int validateMemberId() {
    int? memId;
    memId = int.tryParse(this) != null && this.length == 3 ? int.tryParse(this)! : 0;
    return memId;
  }

  (bool, int) validatePhone() {
    try {
      if(RegExp(r'^[0-9]+$').hasMatch(this) && this.length == 10) {
        return (true, int.tryParse(this)!);
      }
      throw "Only 'numbers' are allowed in 'Phone Number' and length must be 10.";
    } catch (e) {
      rethrow;
    }
  }

  (bool, String) validateEmail() {
    try {
      if (this.endsWith("@gmail.com") || this.endsWith(".co.in") || this.endsWith(".com") && !RegExp(r'@\.').hasMatch(this)) {
        return (true, this);
      } else {
        throw "Email you provided is an invalid Email Id.";
      }
    } catch (e) {
      rethrow;
    }
  }
}

