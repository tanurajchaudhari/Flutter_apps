//login Exceptions
class UserNotFoundAuthException implements Exception{}

class WrongPasswordAuthException implements Exception{}

//register Exception 

class WeakPasswordAuthException implements Exception{}

class EmailAlreadyInUseAuthException implements Exception{}

class InvalidEmailAuthException implements Exception{}

//generic exception

class GenericAuthException implements Exception{}

class UserNotLoggedInAuthException implements Exception{}