var str = "Hello, playground"
print(str)

// EXERCÍCIO 1.1
var notaAluno1 = 8.0
var notaAluno2 = 9.0
var notaAluno3 = 7.0
var media = (notaAluno1 + notaAluno2 + notaAluno3) / 3

print("Média: \(media)")

// EXERCÍCIO 1.2
var temperaturaCelsius = 32.0
var temperaturaFahrenheit = temperaturaCelsius * 9/5 + 32

print("Em fahrenheit a temperatura é \(temperaturaFahrenheit)")

// EXERCÍCIO 2.1
let idade = 12

switch idade {
  case 0...13: print("Criança")
  case 14..<18: print("Adolescente")
  default: print("Adulto")
}

// EXERCÍCIO 2.2
let possuiRG = true

idade >= 18 && possuiRG ? print("Pode entrar") : print("Não pode entrar")

// EXERCÍCIO 3.1
for numero in 0...10 {
  if numero % 2 == 0 {
    print(numero)
  }
}

// EXERCÍCIO 3.2


// EXERCÍCIO 4.1
print (verificaNumeroPrimo(1))

func verificaNumeroPrimo(_ numero: Int) -> Bool {
  if numero < 2 { return false }
  
  for num in 2..<numero {
    if numero % num == 0 { return false }
  }
  
  return true
}

// EXERCÍCIO 4.2
print("Cada pessoa deve pagar: R$ \(calculaValor(100, 2))")

func calculaValor(_ valorConta: Double, _ qtdePessoas: Int) -> Double {
  return (valorConta + (valorConta * 0.1)) / Double(qtdePessoas)
}

// EXERCÍCIO 5.1
verificaNome(nil)
verificaNome("Ana")

func verificaNome(_ nome: String?) {
  if let nome = nome {
    print(nome)
  } else {
    print("Nome não especificado")
  }
}

// EXERCÍCIO 6.1
let notas = [10, 9.5, 8, 10, 6.5, 7, 8]
print("A média do aluno é \(calculaMedia(notas))")

func calculaMedia(_ notas: [Double]) -> Double {
  var somaNotas = 0.0
  for nota in notas {
    somaNotas += nota
  }
  return somaNotas / Double(notas.count)
}

// EXERCÍCIO 6.2
var numeros: [Int] = []

for _ in 1...10 {
  numeros.append(Int.random(in: 0...100))
}

print(separaPareseImpares(numeros))

func separaPareseImpares(_ numeros: [Int]) -> (pares: Set<Int>, impares: Set<Int>) {
    var pares: Set<Int> = []
    var impares: Set<Int> = []

    for numero in numeros {
        if numero % 2 == 0 {
            pares.insert(numero)
        } else {
            impares.insert(numero)
        }
    }

    return (pares, impares)
}

// EXERCÍCIO 6.3
let estados: [String: String] = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo",
    "GO": "Goiás",
    "MA": "Maranhão",
    "MT": "Mato Grosso",
    "MS": "Mato Grosso do Sul",
    "MG": "Minas Gerais",
    "PA": "Pará",
    "PB": "Paraíba",
    "PR": "Paraná",
    "PE": "Pernambuco",
    "PI": "Piauí",
    "RJ": "Rio de Janeiro",
    "RN": "Rio Grande do Norte",
    "RS": "Rio Grande do Sul",
    "RO": "Rondônia",
    "RR": "Roraima",
    "SC": "Santa Catarina",
    "SP": "São Paulo",
    "SE": "Sergipe",
    "TO": "Tocantins"
]

exibeEstados(estados)

func exibeEstados(_ estados: [String: String]) {
  for nomeEstado in estados.values {
    if nomeEstado.count > 7 {
      print(nomeEstado)
    }
  }
}

// EXERCÍCIO 8.1
var calculadora = Calculadora(numero1: 10, numero2: 5)

print("Soma: \(calculadora.soma())")
print("Subtração: \(calculadora.subtrai())")
print("Divisão: \(calculadora.divide())")
print("Multiplicação: \(calculadora.multiplica())")

struct Calculadora {
  let numero1: Double
  let numero2: Double

  func soma() -> Double {
    return numero1 + numero2
  }

  func subtrai() -> Double {
    return numero1 - numero2
  }

  func divide() -> Double {
    return numero1 / numero2
  }

  func multiplica() -> Double {
    return numero1 * numero2
  }
}

// EXERCÍCIO 8.2
var restaurante = Restaurante(nome: "Restaurante da Ana", tipoComida: "Comida japonesa")

restaurante.recebePedidos()
restaurante.recebePedidos()

print("Valor total de pedidos é: R$ \(restaurante.calculaTotalPedidos())")

class Restaurante {
  var nome: String
  var tipoComida: String
  var numeroPedidos: Int = 0

  init(nome: String, tipoComida: String) {
    self.nome = nome
    self.tipoComida = tipoComida
  }

  func recebePedidos() {
    self.numeroPedidos += 1
  }

  func calculaTotalPedidos() -> Double {
    return Double(self.numeroPedidos) * 35.0
  }
}

// EXERCÍCIO 8.3
var retangulo = Retangulo(base: 12, altura: 6)

print("Área: \(retangulo.calculaArea())")
print("Perímetro: \(retangulo.calculaPerimetro())")

struct Retangulo {
  let base: Double
  let altura: Double

  func calculaArea() -> Double {
    return base * altura
  }

  func calculaPerimetro() -> Double {
    return 2 * (base + altura)
  }
}

// EXERCÍCIO 8.4
class Empregado {
  var nome: String
  var salario: Double

  init(nome: String, salario: Double){
    self.nome = nome
    self.salario = salario
  }

  func dadosEmpregado() {
    print("Nome: \(self.nome)")
    print("Salário: R$ \(self.salario)")
  }
}

class Gerente : Empregado {
  var departamento: String

  init(nome: String, salario: Double, departamento: String) {
    self.departamento = departamento
    super.init(nome: nome, salario: salario)
  }

  override func dadosEmpregado() {
    super.dadosEmpregado()
    print("Departamento: \(self.departamento)")
  }
}

var empregado = Empregado(nome: "Ana", salario: 1000.0)
empregado.dadosEmpregado()

var gerente = Gerente(nome: "João", salario: 2000.0, departamento: "Engenharia")
gerente.dadosEmpregado()

// EXERCÍCIO 8.5
class Vendedor : Empregado {
  override init(nome: String, salario: Double) {
    super.init(nome: nome, salario: salario)
  }

  override func dadosEmpregado() {
    super.dadosEmpregado()
  }

  func percentualComissao(numeroVendas: Int) {
    let comissao = Double(numeroVendas) * 50 * 0.1
    print("A comissão de \(self.nome) é de R$ \(comissao)")
  }
}

var vendedor = Vendedor(nome: "Maria", salario: 1500.0)
vendedor.dadosEmpregado()
vendedor.percentualComissao(numeroVendas: 10)