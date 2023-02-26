import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {
   calularSalarioPrint();
   print(calularSalarioComRetorno());
   calularSalarioComParametroPrint(2000.0, 150.0);
   print(calularSalarioComParametroRetorno(3000.0, 150.0));
}
//Função sem retorno e sem parâmetros
void calularSalarioPrint(){
  double salario = 2000.0;
  double desconto = 150.0;

  print('O valor do salário após o desconto é de ${salario - desconto}');
  
  }

//Função com retorno e sem parâmetros
double calularSalarioComRetorno(){
  double salario = 3000.0;
  double desconto = 150.0;

  return (salario - desconto);
  }

//Função sem retorno e com parâmetros
void calularSalarioComParametroPrint(double salario, double desconto){
 print('O valor do salário após o desconto é de ${salario - desconto}');
  }

//Função sem retorno e com parâmetros
double calularSalarioComParametroRetorno(double salario, double desconto){
  return (salario - desconto);
  }