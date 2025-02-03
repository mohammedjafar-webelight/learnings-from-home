import '../Bank Account Management System/utilities/my_mixins.dart';
import 'library_member.dart';

class LibraryAdmin {
  String? _title, _author, _memberId, _name, _email;
  int? _isbn, _phone, _copyCount;

  Map<int, ({String title, String author, int copyCount})> _bookEntries = {};

  // methods
  addBook(int isbn, String title, String author, int copyCount) {
    try {
      _bookEntries.keys.contains(isbn) ? 
      throw "The book '$title' already exist in the Library" :
      _bookEntries[isbn] = (title: title, author: author, copyCount: copyCount);
      
      Logger.log(_bookEntries.toString());
    } catch (e) {
      rethrow;
    }
  }
  issueBook(int isbn, int memId, LibraryMember libMember) {
    var isBookExist = _bookEntries.containsKey(isbn);
  }

  // Setters
  // set setIsbn(String isbn) {
  //   try {
  // int isbnNo = isbn.validateIsbn(isbn);
  // isbnNo > 0 ? this._isbn = isbnNo : throw "Provided ISBN number is invalid. Try again.";
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  // set setTitle(String title) {
  //   try {
  //     RegExp(r'^[a-zA-Z0-9]+$').hasMatch(title) ? this._title = title : throw "Only 'letters' and 'numbers' are allowed in Title.";
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  // set setAuthor(String author) {
  //   try {
  //     RegExp(r'^[a-zA-Z]+$').hasMatch(author) ? this._author = author : throw "Only 'letters' are allowed in Author name.";
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  // set copyCount(String copyCount) {
  //   try {
  //     copyCount.isNotEmpty && int.tryParse(copyCount) != null ? this._copyCount = int.tryParse(copyCount) : throw "Not a valid Number. Try providing a correct Number greater then 0";
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}