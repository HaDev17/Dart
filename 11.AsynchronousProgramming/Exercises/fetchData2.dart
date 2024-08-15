// Let install the http package
// visit https://pub.dev , it is like a package manager, you will find packages and how to install them, and a documentation for them
// for our package, print "dart pub add http" in the terminal to install it
// before that make sure you have "pubspec.yaml" file in your project
// if you don't have it, create it by running "dart pub get" in the terminal
// or you can create it manually and add this in it :
// name: my_app

// environment:
//   sdk: '^3.4.0'

// If you want more information about packages, go to the "13.Libraries&Packages" folder.

// let's import the http package now :

import 'package:http/http.dart' as http;

// we need it for our interface, for some fun functionalities
import 'dart:io';

// this package is used to convert the JSON data we will fetch to a Dart object
import 'dart:convert' as convert;

// we will fetch data about dogs from the internet
// we will use the "https://api.thedogapi.com/v1/breeds" API

// First of all if you want visit the API, you can open the link in your browser
// you will find a list of objects, each object represents a dog breed, with name, wieght, height, and other information presented in a JSON format
// and JSON is a format for storing and transporting data, it is easy to read and write

// we will create the Dog class to represent the data we will fetch

class Dog {
  int? _id;
  String? _name,
      _height,
      _weight,
      _life_span,
      _origin,
      _bred_for,
      _breed,
      _temperament,
      _reference_image_id;
  Dog(
      this._id,
      this._name,
      this._height,
      this._weight,
      this._life_span,
      this._origin,
      this._bred_for,
      this._breed,
      this._temperament,
      this._reference_image_id);

  String? get info {
    return """\n$_id. Dog's name is ${_name ?? 'unknown'} .
    It stands ${_height ?? 'unknown'} tall and weighs around ${_weight ?? 'unknown'}.
    This breed has an average life span of ${_life_span ?? 'unknown'}.
    The breed originated from ${_origin ?? 'unknown'} and was primarily bred for ${_bred_for ?? 'unknown'}.
    The breed is known as ${_breed ?? 'unknown'}. It is known for its ${_temperament ?? 'unknown'} temperament.
    You can view a reference image of this breed using the following image ID: ${_reference_image_id ?? 'unknown'}.""";
  }

  @override
  String toString() => "Hi, I'm $_name dog, my origin is $_origin";
}

// now we will create a function to fetch the data from the API

dynamic fetchingData(
    {required String host, required String path, queryParamert = ''}) async {
  var url = Uri.http(host, path, {"q": queryParamert});
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    return jsonResponse;
  } else {
    return "Failed to fetch data";
  }
}

void main() async {
  print("Welcome to My Dog App");
  print("This simple program, for fetching data about dogs from the internet");
  print("Let's start fetching data");
  print("Fetching data from the API ...");
  List<Dog> result = [];
  try {
    var data =
        await fetchingData(host: "api.thedogapi.com", path: "/v1/breeds");
    for (var element in data) {
      Dog dog = Dog(
          element["id"],
          element["name"],
          element["height"]['metric'],
          element["weight"]['metric'],
          element["life_span"],
          element["origin"],
          element["bred_for"],
          element["breed_group"],
          element["temperament"],
          element["reference_image_id"]);
      result.add(dog);
    }
    print("Data fetched successfully");
  } catch (e) {
    print(e);
  }

  while (true) {
    programInterface();
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 10) return;
    choices(choice, result);
  }
}

void programInterface() {
  print("Choose what you want to do :");
  print("1- Show all dogs data");
  print("2- fillter dogs by name");
  print("3- fillter dogs by origin");
  print("4- fillter dogs by breed");
  print("5- fillter dogs by temperament");
  print("6- fillter dogs by life span");
  print("7- fillter dogs by weight");
  print("8- fillter dogs by height");
  print("9- fillter dogs by bred for");
  print("10- exit");
}

void choices(int choice, dynamic result) {
  switch (choice) {
    case 1:
      fetchAll(result);
      break;
    case 2:
      print("Enter the dog name : ");
      String name = stdin.readLineSync()!;
      byName(result, name);
      break;
    case 3:
      print("Enter the dog origin : ");
      String origin = stdin.readLineSync()!;
      byOrigin(result, origin);
      break;
    case 4:
      print("Enter the dog breed : ");
      String breed = stdin.readLineSync()!;
      byBreed(result, breed);
    case 5:
      print("Enter the dog temperament : ");
      String temperament = stdin.readLineSync()!;
      byTemperament(result, temperament);
      break;
    case 6:
      print("Enter the dog life span : ");
      int lifeSpan = int.parse(stdin.readLineSync()!);
      byLifeSpan(result, lifeSpan);
      break;
    case 7:
      print("Enter the dog weight : ");
      int weight = int.parse(stdin.readLineSync()!);
      byWeight(result, weight);
      break;
    case 8:
      print("Enter the dog height : ");
      int height = int.parse(stdin.readLineSync()!);
      byHeight(result, height);
      break;
    case 9:
      print("Enter the dog bred for : ");
      String bredFor = stdin.readLineSync()!;
      byBredFor(result, bredFor);
      break;
    default:
      print("Invalid choice");
  }
}

void fetchAll(result) {
  for (var dog in result) {
    print(dog.info);
  }
}

void byName(result, String name) {
  for (int i = 0; i < result.length; i++) {
    if (fetchByString(result[i]._name, name)) {
      print(result[i].info);
    }
  }
}

void byOrigin(result, String origin) {
  for (int i = 0; i < result.length; i++) {
    if (fetchByString(result[i]._origin, origin)) {
      print(result[i].info);
    }
  }
}

void byBreed(result, String breed) {
  for (int i = 0; i < result.length; i++) {
    if (fetchByString(result[i]._breed, breed)) {
      print(result[i].info);
    }
  }
}

void byTemperament(result, String temperament) {
  for (int i = 0; i < result.length; i++) {
    if (fetchByString(result[i]._temperament, temperament)) {
      print(result[i].info);
    }
  }
}

void byLifeSpan(result, int lifeSpan) {
  for (int i = 0; i < result.length; i++) {
    if (fetchByInt(result[i]._life_span, lifeSpan)) {
      print(result[i].info);
    }
  }
}

void byWeight(result, int weight) {
  for (int i = 0; i < result.length; i++) {
    if (fetchByInt(result[i]._weight, weight)) {
      print(result[i].info);
    }
  }
}

void byHeight(result, int height) {
  for (int i = 0; i < result.length; i++) {
    if (fetchByInt(result[i]._height, height)) {
      print(result[i].info);
    }
  }
}

void byBredFor(result, String bredFor) {
  for (int i = 0; i < result.length; i++) {
    if (fetchByString(result[i]._bredFor, bredFor)) {
      print(result[i].info);
    }
  }
}

bool fetchByString(property, String value) {
  if (property == null) return false;
  if (property
      .split(' ')
      .join('')
      .replaceAll(',', ' ')
      .toLowerCase()
      .contains(value.toLowerCase())) return true;
  return false;
}

bool fetchByInt(property, int value) {
  if (property == null) return false;
  try {
    int max = int.parse(property.split(' ')[2]);
    int min = int.parse(property.split(' ')[0]);
    if (value >= min && value <= max) return true;
    return false;
  } on FormatException {
    return false;
  } on RangeError {
    return false;
  }
}
