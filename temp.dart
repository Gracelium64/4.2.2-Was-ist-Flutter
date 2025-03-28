import 'functions_grace64.dart';

class Attacker {
  final String name;
  double pointsOfAttack;

  Attacker({required this.name, required this.pointsOfAttack});

  double attack(Attacker a) {
    pointsOfAttack -= (a.pointsOfAttack * 0.1);
    if (pointsOfAttack < 0) {
      pointsOfAttack = 0;
    }
    return pointsOfAttack;
    }

    @override
    String toString (){
      return '$pointsOfAttack';
    }
}

void main() {

  clearConsole();
  bunny();

  Attacker one = Attacker(name: 'one', pointsOfAttack: 5);
  Attacker two = Attacker(name: 'two', pointsOfAttack: 10);

  one.attack(two);
  two.attack(one);

  print(one);
  print(two);

  lineBreak();

}