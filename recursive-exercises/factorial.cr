factorial = uninitialized Int64 -> Int64

factorial = ->(n: Int64) {
    if n.zero?
        1.to_i64
    else
        n * factorial.call(n - 1)
    end
}

puts "Ingrese un número del 1 al 20: "
num = gets.try(&.to_i) || 0

begin
    result = factorial.call(num.to_i64)
    puts "Factorial de #{num}: #{result}"
rescue OverflowError
    puts "Número No soportado"
end
