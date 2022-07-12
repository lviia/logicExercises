import Foundation

func arredonda(valor: Double, casasdecimais: Int)-> Double{
    let formato = String(casasdecimais)+"f"
    return Double(String(format: "%."+formato, valor))!
}

// MARK: - Problema A
"""
* Faça um programa que leia três valores e apresente o maior dos três valores lidos
seguido da mensagem “eh o maior”.

* Entrada
A entrada contém três valores inteiros.

* Saída
Imprima o maior dos três valores seguido por um espaço e a mensagem "eh o maior".
"""

func problemaA(_ a: Int, _ b: Int, _ c: Int) {
    let arrayProblema = [a, b, c]
    print(arrayProblema)
    print("O \(arrayProblema.sorted()[2]) é o maior!!")
}

func problemaA2(_ a: Int, _ b: Int, _ c: Int) {
    let arrayProblema = [a, b, c]
    var maior = 0
    
    for i in arrayProblema {
        if i > maior {
            maior = i
        }
    }
    print(maior)
}
// MARK: - Problema B
"""
* Leia os quatro valores correspondentes aos eixos x e y de dois pontos quaisquer no
plano, p1(x1,y1) e p2(x2,y2) e calcule a distância entre eles, mostrando 4 casas decimais
após a vírgula, segundo a fórmula:

Distancia = √(x2 - x1)² + (y2 - y1)²

* Entrada
A entrada consiste em 4 valores reais. A coordenada do primeiro ponto: x1 y1 e a
coordenada do segundo ponto: x2 y2.

* Saída
Calcule e imprima o valor da distância segundo a fórmula fornecida, com 4 casas após o
ponto decimal.
"""

func problemaB(x1: Double, y1: Double, x2: Double, y2: Double) {
    let x = x2 - x1
    let y = y2 - y1
    
    let potenciaX = x * x
    let potenciaY = y * y
    
    let soma = potenciaX + potenciaY
    let raiz = sqrt(soma)
    print(arredonda(valor: raiz, casasdecimais: 4))
}

// MARK: - Problema C
"""
* Leia dois valores inteiros M e N indefinidamente. A cada leitura, calcule e escreva a soma
dos fatoriais de cada um dos valores lidos.

* Entrada
O arquivo de entrada contém vários casos de teste. Cada caso contém dois números
inteiros M (0 ≤ M ≤ 10) e N (0 ≤ N ≤ 10).

* Saída
Para cada entrada, seu programa deve imprimir uma única linha, contendo um número
que é a soma de ambos os fatoriais (de M e N).
"""

func problemaC(_ m: Int, _ n: Int) {
    if m >= 0 && m <= 10 && n >= 0 && n <= 10 {
        var fatorialM = 1
        var fatorialN = 1
        var iDM = m
        var iDN = n
        while iDM > 1 {
            fatorialM *= iDM
            iDM -= 1
        }
        while iDN > 1 {
            fatorialN *= iDN
            iDN -= 1
        }
        print("A soma dos fatoriais \(m) e \(n) é: \(fatorialM + fatorialN)")
    } else {
        print("Insira um valor válido!!")
    }
}

// MARK: - Problema D
"""
* A antiga raça de Gulamatu é muito avançada no seu esquema de cálculo dos anos. Eles
entendem o que é ano bissexto (ele deve ser múltiplo de 400 ou múltiplo de 4 e não de
100). E têm também alguns anos que ocorrem alguns festivais. Um deles é o festival
Huluculu (acontece em anos bissextos e divisíveis por 15) e o festival Bulukulu (acontece
em anos bissextos e divisíveis por 55). Dado um ano você terá de indicar quais
propriedades este ano tem. Se o ano não é ano bissexto e nem ano de festival imprima a
linha “Ano Comum”. Se o ano for apenas ano bissexto, imprima a linha “Ano Bissexto”. Se
o ano for bissexto e ocorre o festival Huluculu, imprima a linha “Ano Bissexto ->
Huluculu”. Se o ano for bissexto e ocorre o festival Bulukulu, imprima a linha “Ano
Bissexto -> Bulukulu”.

* Entrada
A entrada conterá um valor inteiro contendo um ano que nunca será menor do que 2000
(para evitar regras anteriores diferentes para anos bissextos), mas pode ter mais do que
1.000 dígitos.

* Saída
Para cada entrada, imprima as diferentes propriedades dos anos de acordo com a
descrição anterior e os exemplos fornecidos abaixo.
"""

func problemaD(ano: Int) {
    let anoBissexto = ano % 400 == 0 || ano % 4 == 0 && ano % 100 != 0
    let anoHuluculu = ano % 15 == 0
    let anoBulukulu = ano % 55 == 0
    if ano >= 2000 {
        if anoBissexto && !anoHuluculu && !anoBulukulu {
            print(" >> Ano Bissexto")
        }
        if anoBissexto && anoHuluculu && !anoBulukulu{
            print(" >> Ano Bissexto -> Huluculu")
        }
        if anoBissexto && anoBulukulu && !anoHuluculu {
            print(" >> Ano Bissexto -> Bulukulu")
        }
        if !anoBissexto && !anoBulukulu && !anoHuluculu {
            print(" >> Ano Comum")
        }
    } else {
        print("Insira um ano válido!")
    }
}

func problemaD2(ano: Int) -> String {
    let anoBissexto = ano % 400 == 0 || ano % 4 == 0 && ano % 100 != 0
    let anoHuluculu = ano % 15 == 0
    let anoBulukulu = ano % 55 == 0
    
    switch(anoBissexto, anoHuluculu, anoBulukulu, ano >= 2000) {
    case(true, false, false, true):
        return " >> Ano Bissexto"
    case(true, true, false, true):
        return " >> Ano Bissexto -> Huluculu"
    case(true, false, true, true):
        return " >> Ano Bissexto -> Bulukulu"
    case(false, false, false, true):
        return ">> Ano Comum"
    default:
        return "Insira um valor válido"
    }
}

// MARK: - Problema E
"""
* A fórmula para calcular a área de uma circunferência é: area = π . raio². Considerando para este
problema que π = 3.14159. Efetue o cálculo da área, elevando o valor de raio ao quadrado e
multiplicando por π.

* Entrada
A entrada contém um valor de ponto flutuante, no caso, a variável raio.

* Saída
Apresentar a mensagem "A=" seguido pelo valor da variável area, conforme exemplo
abaixo, com 2 casas após o ponto decimal.
"""

func problemaE(_ x: Double) {
    let pi = 3.14159
    let area = pi * (x * x)
    print("A = \(arredonda(valor: area, casasdecimais: 2))")
}

// MARK: - Problema F
"""
* Escreva um programa que leia o número de um funcionário, seu número de horas
trabalhadas, o valor que recebe por hora e calcula o salário desse funcionário. A seguir,
mostre o número e o salário do funcionário, com duas casas decimais.

* Entrada
O arquivo de entrada contém 2 números inteiros e 1 número real, representando o
número, quantidade de horas trabalhadas e o valor que o funcionário recebe por hora
trabalhada, respectivamente.

* Saída
Imprima o número e o salário do funcionário, conforme exemplo fornecido, com um
espaço em branco antes e depois da igualdade e cada informação em uma linha. No caso
do salário, também deve haver um espaço em branco após o U$.
"""

func problemaF(numeroFuncionario: Int, horasTrabalhadas: Int, valorHora: Double) {
    let salario = Double(horasTrabalhadas) * valorHora
    print("NUMBER = \(numeroFuncionario)")
    print("SALARY = U$ \(salario)")
}


// MARK: - Problema G
"""
* Joaozinho quer calcular e mostrar a quantidade de litros de combustível gastos em uma
viagem, ao utilizar um automóvel que faz 12 KM/L. Para isso, ele gostaria que você o
auxiliasse através de um simples programa. Para efetuar o cálculo, deve-se fornecer o
tempo gasto na viagem (em horas) e a velocidade média durante a mesma (em km/h).
Assim, pode-se obter distância percorrida e, em seguida, calcular quantos litros seriam
necessários. Mostre o valor com 3 casas decimais após o ponto.

* Entrada
O arquivo de entrada contém dois inteiros. O primeiro é o tempo gasto na viagem (em
horas) e o segundo é a velocidade média durante a mesma (em km/h).

* Saída
Imprima a quantidade de litros necessária para realizar a viagem, com três dígitos após o
ponto decimal.
"""

func problemaG(tempoV: Int, velocidadeM: Int) {
    let distancia = Double(tempoV) * Double(velocidadeM)
    let gastoLitro = distancia / 12
    print("Quantidade de Litros >> \(arredonda(valor: gastoLitro, casasdecimais: 3))")
}

// MARK: - Problema H
"""
* Leia 2 valores inteiros (A e B). Após, o programa deve mostrar uma mensagem "eh
multiplo" ou "nao eh multiplo", indicando se a soma dos dígitos de A é múltiplo de B.

* Entrada
A entrada contém dois valores inteiros onde 0<A<10000 e 0<B<10.

* Saída
A saída deve conter uma das mensagens conforme descrito acima. Deixe uma linha no
final.
"""

func problemaH(a: Int, b: Int) {
    let c = a / 100
    let d = a % 100 / 10
    let u = a % 10
    if a > 0 && a < 10000 && b > 0 && b < 10 {
        let soma = c + d + u
        if soma % b == 0 {
            print("É múltiplo")
        } else {
            print("Não é múltiplo")
        }
    } else {
        print("Insira um valor válido!")
    }
}

func problemaH2(a: Int, b: Int) -> String {
    let c = a / 100
    let d = a % 100 / 10
    let u = a % 10
    let soma = c + d + u
    let numeroValido =  a > 0 && a < 10000 && b > 0 && b < 10
    let ehMultiplo = soma % b == 0
    switch(numeroValido, ehMultiplo) {
    case(true, true):
        return "É múltiplo"
    case(true, false):
        return "Não é múltiplo"
    default:
        return "Insira um valor válido"
    }
}

// MARK: - Problema I
"""
* Este programa deve ler uma variável inteira X. Para o valor lido, imprima a sequência de 1
até X, com um espaço entre cada número e seu sucessor.

* Entrada
O arquivo de entrada contém um números inteiro.

* Saída
Para cada número de entrada deve ser impressa uma linha de 1 até X, conforme o
exemplo abaixo.
"""

func problemaI(x: Int) {
    var lista = [Int]()
    for i in (1...x) {
        lista.append(i)
    }
    print(lista)
}

// MARK: - Problema J
"""
* Leia 2 valores inteiros e armazene-os nas variáveis A e B. Efetue a soma
de A e B atribuindo o seu resultado na variável X. Imprima X conforme exemplo
apresentado abaixo.

* Entrada
A entrada contém 2 valores inteiros.

* Saída
Imprima a variável X conforme exemplo abaixo.
"""

func problemaJ(a: Int, b: Int) {
    let x = a + b
    print("X = \(x)")
}

