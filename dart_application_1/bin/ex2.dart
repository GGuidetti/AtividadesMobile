import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

//Meu projeto seria um aplicativo para realizar compras/reservas de ingressos em salas de cinema
//LIMPAR Ingresso EM CARTAZ
class Ingresso {
  late int id;
  late double preco;
}
class Filme {
  late int id;
  late String nome;
}

class Adicionais {
  late String nome;
  late double preco;
}

List<Filme> filmesEmCartaz = [];
List<Ingresso> carrinho = [];
List<String> cuponsValidos = ['GUIDERA', 'HELIO'];

int quantidadeMinimaSala = 0;
void main(List<String> arguments) {
}


//Função sem retorno e sem parâmetros--------------------------------------------------------------------------------------------------
//-- Limpando o carrinho do usuário, tirando todos os ingressos que nele estavam
void limparCarrinho(){
  carrinho = [];
  }
//-- Normalmente os cinemas tem dias específicos da semana em que os preços caem pela metade
//neste caso o usuário teria 50% de desconto nos itens de seu carrinho
void aplicarDescontoSemanalMetadeDoPreco(){
  carrinho.forEach((Ingresso ingresso) => ingresso.preco = ingresso.preco * 2);
  }


  
//Função sem retorno e com parâmetros--------------------------------------------------------------------------------------------------
//-- Removendo um filme específico de cartaz
void removerFilmeEmCartaz(int filmeId){
  filmesEmCartaz.removeWhere((filme) => filme.id == filmeId);
  }
//-- Colocando um filme específico na lista de filmes em cartaz
void colocarFilmeEmCartaz(Filme filme){
  filmesEmCartaz.add(filme);
  }



//Função com retorno e sem parâmetro--------------------------------------------------------------------------------------------------
//-- Verifica e retorna os filmes que estão em cartaz
List<Filme> verificarFilmesEmCartaz(){
  return filmesEmCartaz;
  }
//-- Verifica e retorna QUANTOS filmes estão em cartaz
int contarFilmesEmCartaz(){
  return filmesEmCartaz.length;
  }



//Função com retorno e com parâmetro--------------------------------------------------------------------------------------------------
//-- Adiciona o Filme selecionado no carrinho e retorna o valor total
double addFilmeNoCarrinhoRetornandoValorTotal(Ingresso ingressoP){
  double total = 0;
  carrinho.add(ingressoP);
  carrinho.forEach((Ingresso ingresso) => total += ingresso.preco);
  return total;
  }
//-- Remove o Filme selecionado no carrinho e retorna o valor total
double removeFilmeNoCarrinhoRetornandoValorTotal(Ingresso ingressoP){
  double total = 0;
  carrinho.removeWhere((ingresso) => ingresso.id == ingressoP.id);
  carrinho.forEach((Ingresso ingresso) => total += ingresso.preco);
  return total;
  }



//Função com parametros opcionais------------------------------------------------------------------------------------------------------
//-- Se receber cupom de desconto e este existir, aplica o desconto. Este parametro é opcional
double finalizarCompraCalculaTotal(Ingresso ingressoP, [String? cupom]){
  double total = 0;
  total = ingressoP.preco;
  if(cuponsValidos.contains(cupom)){
    total = total - total * 0.05;
  }
  return total;
  }

//-- Retorna o valor final da compra. O Parametro adicionais é opcional
double finalizarCompra(List<Ingresso> carrinho, [List<Adicionais>? adicionais]){
  double total = 0;
  double totalAd = 0;
  carrinho.forEach((Ingresso ingresso) => total += ingresso.preco);
  if(adicionais != null){
    adicionais.forEach((Adicionais adicional) => totalAd += adicional.preco);
  }
  return total+totalAd;
  }
  



//Função com parametros nomeados ------------------------------------------------------------------------------------------------------
//-- Seta o preço no ingresso utilizando um parametro nomeado
void setandoPrecoNoIngresso(Ingresso ingressoP, {required double preco}){
  ingressoP.preco = preco;
  }

//-- Adiciona um cupom de desconto ao sistema
void addCupomGeral({required String nome}){
  cuponsValidos.add(nome);
  }
  


