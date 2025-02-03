import '../Bank Account Management System/utilities/my_mixins.dart';

class LibraryMember {
  String? _memberId, _name, _email;
  int? _phone;

  Map<int, ({String name, String email, int phone})> _memberEntries = {};

  addMember(int memId, String name, String email, int phone) {
    try {
      _memberEntries.containsKey(memId) || _memberEntries.containsValue(email) ? 
      throw "The Member with '$memId' or '$email' already exist in the Member's list" :
      _memberEntries[memId] = (email: email, name: name, phone: phone);
      
      Logger.log(_memberEntries.toString());
    } catch (e) {
      rethrow;
    }
  }
}

// memberId, name, email, phone