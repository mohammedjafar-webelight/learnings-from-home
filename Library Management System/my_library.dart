import 'dart:io';

import '../Bank Account Management System/utilities/my_mixins.dart';
import 'library_admin.dart';
import 'library_member.dart';
import 'utilities/my_methods.dart';

void main() {
  int? choice;
  LibraryAdmin libAdmin = LibraryAdmin();
  LibraryMember libMember = LibraryMember();
  do {
    ["1. Add Book", "2. Register Member", "3. Issue Book", "4. Return Book", "5. Check Member Details", "6. Check Book Details", "7. Remove Member", "8. Remove Book", "9. Book Search by Title/Author"].forEach(print);
    try {
      stdout.write("Enter your choice: ");
      choice = int.tryParse(stdin.readLineSync()!) ?? 0;
      switch (choice) {
        case 1: // add book
          int isbn = getIsbn();
          ({bool isValid, String title, String author, int copyCount}) newBook = getNewBookInputs();
          newBook.isValid == true ? libAdmin.addBook(isbn, newBook.title, newBook.author, newBook.copyCount) : null;
          break;
        case 2:
          int memId = getMemberId();
          ({bool isValid, int phone, String name, String email}) newMember = getNewMemberInputs();
          newMember.isValid == true ? libMember.addMember(memId, newMember.name, newMember.email, newMember.phone) : null;
          break;
        case 3:
          int isbn = getIsbn();
          int memId = getMemberId();

          libAdmin.issueBook(isbn, memId, libMember);
          break;
        case 4:
          break;
        case 5:
          break;
        case 6:
          break;
        case 7:
          break;
        case 8:
          break;
          case 9:
          break;
        default:
          break;
      }
    } catch (e) {
      Logger.error(e.toString());
    }
  } while (choice != 8);
}