import 'dart:io';
import 'my_extensions.dart';

int getIsbn() {
  stdout.write("Enter ISBN: ");
  String isbn = stdin.readLineSync()!;
  
  try {
    int isbnNo = isbn.validateIsbn();
    if(isbnNo > 0) {
      return isbnNo;
    } else {
      throw "Provided ISBN number is invalid. It should be a valid number with length 5";
    } 
  } catch(e) {
    rethrow;
  }
}

({bool isValid, String title, String author, int copyCount}) getNewBookInputs() {
  stdout.write("Enter Book Title: ");
  String title = stdin.readLineSync()!;
  stdout.write("Enter Author: ");
  String author = stdin.readLineSync()!;
  stdout.write("Enter Total Copies Available: ");
  int? copyCount = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (title.validateTitle() && author.validateAuthorOrName() && copyCount > 0) {
    return (isValid: true, title: title, author: author, copyCount: copyCount);
  } else {
    throw "Provided 'Title' or 'Author name' or 'copy count' is invalid.";
  }
}

int getMemberId() {
  stdout.write("Enter Member ID: ");
  String memId = stdin.readLineSync()!;
  
  try {
    int memberId = memId.validateMemberId();
    if(memberId > 0) {
      return memberId;
    } else {
      throw "Provided MemberId is invalid. It should be a valid number with length 3";
    } 
  } catch(e) {
    rethrow;
  }
}

({bool isValid, int phone, String name, String email}) getNewMemberInputs() {
  stdout.write("Enter Name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter Email: ");
  String email = stdin.readLineSync()!;
  stdout.write("Enter Phone: ");
  String? phone = stdin.readLineSync()!;

  var validPhone = phone.validatePhone();
  var validEmail = email.validateEmail();
  if (phone.validatePhone().$1 && name.validateAuthorOrName() && email.validateEmail().$1) {
    return (isValid: true, phone: validPhone.$2, name: name, email: validEmail.$2);
  } else {
    throw "Provided 'Title' or 'Author name' or 'copy count' is invalid.";
  }
}