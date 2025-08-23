import 'package:mynotes/service/auth/auth_exception.dart';
import 'package:mynotes/service/auth/auth_provider.dart';
import 'package:mynotes/service/auth/auth_user.dart';
import 'package:test/test.dart';

void main() {
  group("Mock authentication", () {
    final provider = MockAuthProvider();
    test("Shuld not be initialize to begin with ", () {
      expect(provider.isInitialize, false);
    });
    test("Can not logOut if not Initialize", () {
      expect(
        provider.logOut(),
        throwsA(const TypeMatcher<NotInitializedException>()),
      );
    });
    test("Should be able to initialize ", () async {
      await provider.initialize();
      expect(provider.isInitialize, true);
    });
    test("User Should be null after initialization", () {
      expect(provider.currentUser, null);
    });
    test(
      "Should be able to initialize in less than 2 seconds ",
      () async {
        await provider.initialize();
        expect(provider.isInitialize, true);
      },
      timeout: const Timeout(Duration(seconds: 2)),
    );
     test("create user should delegate to login function", () async {
      final badEmailUser = provider.createUser(
        email: 'Foo@bar.com',
        password: "anypassword",
      );
        expect(
         badEmailUser,
        throwsA(const TypeMatcher<UserNotFoundAuthException>()),
      );
      final badPasswordUser = provider.createUser(
        email: "someone@bar.com",
        password: "foobar",
      );
        expect(
          badPasswordUser,
        throwsA(const TypeMatcher<WrongPasswordAuthException>()),
      );
      final user = await provider.createUser(
        email: "some",
        password: "tanu",
      );
      expect(provider.currentUser, user);
      expect(user.isEmailVerified, false);
    });
    
   /* test("create user should delegate to login function", () async {
      // Await the expectLater that checks future throwing
      await expectLater(
        provider.createUser(
          email: 'Foo@bar.com',
          password: "anypassword",
        ),
        throwsA(const TypeMatcher<UserNotFoundAuthException>()),
      );

      await expectLater(
        provider.createUser(
          email: "someone@bar.com",
          password: "foobar",
        ),
        throwsA(const TypeMatcher<WrongPasswordAuthException>()),
      );

      final user = await provider.createUser(
        email: "some",
        password: "tanu",
      );
      expect(provider.currentUser, user);
      expect(user.isEmailVerified, false);
    });
    */

    test("Logged in use should be able to get verified ", () {
      provider.sendEmailVerification();
      final user = provider.currentUser;
      expect(user, isNotNull);
      expect(user!.isEmailVerified, true);
    });
    test("should be able to logout and login again", () async {
      await provider.logOut();
      await provider.logIn(
        email: "email",
        password: "passsword",
      );
      final user = provider.currentUser;
      expect(user, isNotNull);
    });
  });
}

class NotInitializedException implements Exception {}

class MockAuthProvider implements AuthProvider {
  AuthUser? _user;
  var _isInitialize = false;
  bool get isInitialize => _isInitialize;

  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) async {
    if (!isInitialize) throw NotInitializedException();
    await Future.delayed(const Duration(seconds: 1));
    return logIn(
      email: email,
      password: password,
    );
  }

  @override
  AuthUser? get currentUser => _user;

  @override
  Future<void> initialize() async {
    await Future.delayed(const Duration(seconds: 1));
    _isInitialize = true;
  }

  @override
  Future<AuthUser> logIn({
    required String email,
    required String password,
  }) {
    if (!isInitialize) throw NotInitializedException();
    if (email == "Foo@bar.com") throw UserNotFoundAuthException();
    if (password == "foobar") throw WrongPasswordAuthException();
    const user = AuthUser(isEmailVerified: false, email: 'Foo@bar.com');
    _user = user;
    return Future.value(user);
  }

  @override
  Future<void> logOut() async {
    if (!isInitialize) throw NotInitializedException();
    if (_user == null) throw UserNotFoundAuthException();
    await Future.delayed(const Duration(seconds: 1));
    _user = null;
  }

  @override
  Future<void> sendEmailVerification() async {
    if (!isInitialize) throw NotInitializedException();
    final user = _user;
    if (user == null) throw UserNotFoundAuthException();
    const newUser = AuthUser(isEmailVerified: true, email: 'Foo@bar.com', );
    _user = newUser;
  }
}
