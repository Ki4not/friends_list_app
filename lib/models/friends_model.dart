import 'package:equatable/equatable.dart';

class Friend extends Equatable {
  final String firstName;
  final String lastName;
  final String birthDate;
  final int age;
  final String gender;
  final String imagePath;

  const Friend({
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.age,
    required this.gender,
    required this.imagePath,
  });

  @override
  List<Object> get props => [
        firstName,
        lastName,
        birthDate,
        gender,
        imagePath,
      ];

  static List<Friend> friends = [
    const Friend(
        firstName: 'Paul',
        lastName: 'Gutierrez',
        birthDate: '12/15/2001',
        age: 22,
        gender: 'Male',
        imagePath: 'assets/images/paul_image.jpg'),
    const Friend(
        firstName: 'Johnbert',
        lastName: 'Decinan',
        birthDate: '02/05/2003',
        age: 21,
        gender: 'Male',
        imagePath: 'assets/images/bert_image.jpg'),
    const Friend(
        firstName: 'Zildjan',
        lastName: 'Luvindino',
        birthDate: '02/18/2003',
        age: 21,
        gender: 'Male',
        imagePath: 'assets/images/zild_image.jpg'),
    const Friend(
        firstName: 'Jolexian',
        lastName: 'Guba',
        birthDate: '06/08/2002',
        age: 21,
        gender: 'Male',
        imagePath: 'assets/images/jolex_image.jpg'),
    const Friend(
        firstName: 'Jose',
        lastName: 'Alfante',
        birthDate: '02/07/2003',
        age: 21,
        gender: 'Male',
        imagePath: 'assets/images/rey_image.png'),
    const Friend(
        firstName: 'Jim',
        lastName: 'Laroco',
        birthDate: '04/22/2002',
        age: 21,
        gender: 'Male',
        imagePath: 'assets/images/jim_image.jpg'),
    const Friend(
        firstName: 'Gianni',
        lastName: 'Cabahug',
        birthDate: '10/11/2002',
        age: 21,
        gender: 'Male',
        imagePath: 'assets/images/gianni_image.jpg'),
    const Friend(
        firstName: 'Jamaikha',
        lastName: 'Mitucua',
        birthDate: '11/13/2002',
        age: 21,
        gender: 'Female',
        imagePath: 'assets/images/jam_image.jpg'),
    const Friend(
        firstName: 'Liam',
        lastName: 'Booc',
        birthDate: '07/12/2002',
        age: 21,
        gender: 'Male',
        imagePath: 'assets/images/liam_image.jpg'),
    const Friend(
        firstName: 'Khyle',
        lastName: 'Rafols',
        birthDate: '10/25/2002',
        age: 21,
        gender: 'Male',
        imagePath: 'assets/images/khyle_image.png'),
  ];
}
