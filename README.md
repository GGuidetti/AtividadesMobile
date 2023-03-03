# AtividadesMobile
#Parametros posicionais são aqueles que utilizamos comumente, e que ao chamar a função que os utiliza, devemos enviar os parametros na ordem em que foram definidos
int somarNumeros(int num1, int num2){
  return num1 + num2;
}

#Parametros opcionais são aqueles que na definição apresentam um valor default, e no caso da chamada sem o envio desses parametro, utilizará o valor default
int somarNumeros(int num1, [int num2=5]){
  return num1 + num2;
}
