# AtividadesMobile
#Parametros posicionais são aqueles que utilizamos comumente, e que ao chamar a função que os utiliza, devemos enviar os parametros na ordem em que foram definidos
int somarNumeros(int num1, int num2){
  return num1 + num2;
}

#Parametros opcionais são aqueles que na definição apresentam um valor default, e no caso da chamada sem o envio desses parametro, utilizará o valor default
int somarNumeros(int num1, [int num2=5]){
  return num1 + num2;
}

#Parametros nomeados são aqueles que ao serem chamados precisam estar acompanhados do nome do parametro
void addCupomGeral({required String nome}){
  cuponsValidos.add(nome);
 }
 
 addCupomGeral(nome: "jorge");
 

#Function parameter é a função mais comumente utilizada, que recebe um nome e para ser rodada esse nome deve ser chamado no código passando os parâmetros se necessário.
#Diferente das AF(Anonymous Functions) e AR(Arrow Functions) elas podem ser chamadas diversas vezes no código escrevendo a implementação somente uma única vez.
double multiplicar(double num1, double num2)
  return num1 * num2;
}
Exemplo de chamada:
multiplicar(5,15)## Nesse caso a função retorna o valor 75 do tipo double;

#anonymous function é uma função que não tem nome e não pode ser chamada diretamente, ela pode ser utilizada, por exemplo em funções que usam outras funções como parametro

(int num1, int num2){
  return num1 + num2;
}

uso:

int multiplicarSoma(
  (int num1, int num2){
  return num1 + num2;
});

#Arrow function são um tipo de sintaxe utilizada para escrever funções de forma mais condensada, basicamente uma anonima mais resumida
int somarNumeros(int num1, int num2) => return num1 + num2;
