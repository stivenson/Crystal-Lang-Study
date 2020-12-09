require "big/big_int"

factorial = uninitialized BigInt -> BigInt

factorial = ->(n: BigInt) {
    if n.zero?
        BigInt.new(1)
    else
        n * factorial.call(n - 1)
    end
}

puts "Ingrese un número: "
num = gets.try(&.to_i) || 0

begin
    result = factorial.call(BigInt.new(num))
    puts "Factorial de #{num}: #{result.to_big_i}"
rescue OverflowError
    puts "Número no soportado"
end
