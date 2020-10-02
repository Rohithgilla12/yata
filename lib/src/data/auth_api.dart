import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yatp/src/models/index.dart';

class AuthApi {
  AuthApi({
    @required FirebaseAuth firebaseAuth,
    @required FirebaseFirestore firebaseFirestore,
  })  : assert(firebaseAuth != null),
        assert(firebaseFirestore != null),
        _firebaseAuth = firebaseAuth,
        _firestore = firebaseFirestore,
        _userStream = BehaviorSubject<String>.seeded(null);

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  final BehaviorSubject<String> _userStream;

  Stream<AppUser> currentUser() {
    return MergeStream<String>(<Stream<String>>[
      _userStream,
      _firebaseAuth.authStateChanges().map((User event) => event?.uid),
    ]).asyncMap((String uid) => uid == null ? null : getUser(uid));
  }

  Future<AppUser> getUser(String uid) async {
    final DocumentSnapshot snapshot = await _firestore.doc('users/$uid').get();
    if (snapshot.exists) {
      return AppUser.fromJson(snapshot.data());
    } else {
      return AppUser(
        (AppUserBuilder b) => b
          ..isCreated = false
          ..uid = uid,
      );
    }
  }

  Future<AppUser> signIn({
    @required String email,
    @required String password,
  }) async {
    final UserCredential userCredential =
        await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return getUser(userCredential.user.uid);
  }

  Future<AppUser> signUpWithEmail({
    @required String email,
    @required String password,
    @required String firstName,
    @required String lastName,
  }) async {
    final UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final AppUser user = AppUser((AppUserBuilder b) {
      b
        ..uid = userCredential.user.uid
        ..isCreated = true
        ..email = email
        ..lastName = lastName
        ..firstName = firstName;
    });
    await setUserDetails(user);
    return user;
  }

  Future<void> setUserDetails(AppUser user) async {
    user = user.rebuild((AppUserBuilder b) => b.isCreated = true);
    await _firestore.doc('users/${user.uid}').set(user.json);
  }

  Future<void> logout() async => await _firebaseAuth.signOut();
}
