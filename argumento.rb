# mi_script.rb

# Verifica que el número de argumentos sea el correcto
if ARGV.length != 2
  puts "Uso: ruby mi_script.rb argumento1 argumento2"
  exit
end

# Asigna los argumentos a variables
argumento1 = ARGV[0]
argumento2 = ARGV[1]

# Muestra los argumentos
puts "El primer argumento es: #{argumento1}"
puts "El segundo argumento es: #{argumento2}"
