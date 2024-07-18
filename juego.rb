# juego.rb

# Validar el argumento del usuario
jugadas_validas = ["piedra", "papel", "tijera"]

if ARGV.empty?
  # Pedir al usuario que ingrese una jugada si no se proporciona un argumento
  puts "Elige tu jugada (piedra, papel, tijera):"
  jugada_usuario = gets.chomp.downcase
else
  # Usar el primer argumento como jugada
  jugada_usuario = ARGV[0].downcase
end

unless jugadas_validas.include?(jugada_usuario)
  puts "Argumento invalido: Debe ser piedra, papel o tijera."
  exit
end

# Generar jugada del computador con mayor probabilidad de ganar
opciones = ["piedra", "papel", "tijera"]
# Mapa de jugadas ganadoras
jugadas_ganadoras = {
  "piedra" => "papel",
  "papel" => "tijera",
  "tijera" => "piedra"
}

# Probabilidades: 50% de ganar, 25% de empatar, 25% de perder
probabilidades = [jugadas_ganadoras[jugada_usuario], jugada_usuario, opciones.reject { |j| j == jugada_usuario || j == jugadas_ganadoras[jugada_usuario] }.first]
jugada_computador = probabilidades.sample

# Mostrar la jugada del computador
puts "Computador juega #{jugada_computador}."

# Determinar el resultado
if jugada_usuario == jugada_computador
  puts "Empataste."
elsif (jugada_usuario == "piedra" && jugada_computador == "tijera") ||
      (jugada_usuario == "papel" && jugada_computador == "piedra") ||
      (jugada_usuario == "tijera" && jugada_computador == "papel")
  puts "Ganaste."
else
  puts "Perdiste."
end
