"""
Se n for par, divida-o por 2, se n for ímpar, multiplique-o por 3 e ao final some 1.

f(n) = { n / 2 se n é par, 3n + 1 se n é ímpar }
"""

print("Sequência de Collatz")
print("----------------------------------------------------")

var total = [Int]()

func collatz(_ n: Int) -> Int {
    if n == 1 {
        total.append(1)
        print("Sequência: \(total)")
        print("Comprimento da sequência: \(total.count)")
        return 1
    }
    
    total.append(n)
    if n % 2 == 0 {
        return n * collatz(n / 2)
    } else {
        return n * collatz((n * 3) + 1)
    }
}

