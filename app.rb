require 'json'

system('clear')

def consult(day = 'domingo')
  system('clear')

  arq = File.read('db.json')
  file = JSON.parse(arq)[day]

  puts "Tu tens #{file.length} atividades para #{day}.\n\n"

  count = 0

  while count < file.length
    puts puts "#{count + 1} - #{file[count]}"
    count += 1
  end
end

def register(day = 'domingo')
  system('clear')

  puts "\n\n\n\n"

  puts 'O que pretende fazer? '
  print 'R: '
  activity = gets.chomp.to_s

  arq = File.read('db.json')
  save = JSON.parse(arq)
  save[day].push(activity)

  file = File.open('db.json', 'w')
  file.puts('{')
  save.each do |key, value|
    if key == 'sabado'
      file.puts("\"#{key}\" : #{value}")
    else
      file.puts("\"#{key}\" : #{value},")
    end
  end
  file.puts('}')
  file.close

  puts 'Atividade Cadastrada com êxito :)'
end

def delete()

  arq = File.read('db.json')
  save = JSON.parse(arq)

  file = File.open('db.json', 'w')
  file.puts('{')
  save.each do |key, value|
    if key == 'sabado'
      file.puts("\"#{key}\" : #{%w{}}")
    else
      file.puts("\"#{key}\" : #{%w{}},")
    end
  end
  file.puts('}')
  file.close

  puts 'Banco de dados restaurado com êxito :>'
end

def wait
  print 'Click qualquer letra para continuar...'
  gets.chomp
  system('clear')
end

loop do
  puts '[1] - Consultar atividades'
  puts '[2] - Cadastrar atividade'
  puts '[3] - Limpar o banco de dados'
  puts '[4] - Limpar o terminal'
  puts '[5] - Sobre'
  puts '[6] - Sair'

  print "  \n>>  "

  value = gets.chomp.to_i

  if value == 1

    puts '-' * 10
    puts "\n\n\nQual é o dia da semana que pretende consultar? "

    puts "\n[1] - Domingo"
    puts '[2] - Segunda-feira'
    puts '[3] - Terça-feira'
    puts '[4] - Quarta-feira'
    puts '[5] - Quinta-feira'
    puts '[6] - Sexta-feira'
    puts '[7] - Sábado'

    print "  \n>>  "

    value = gets.chomp.to_i

    if value == 1
      consult('domingo')
      wait
    elsif value == 2
      consult('segunda')
      wait
    elsif value == 3
      consult('terca')
      wait
    elsif value == 4
      consult('quarta')
      wait
    elsif value == 5
      consult('quinta')
      wait
    elsif value == 6
      consult('sexta')
      wait
    elsif value == 7
      consult('sabado')
      wait
    else
      puts 'Opção Inválida!'
    end

  elsif value == 2

    puts "\n\n\nQual é o dia da semana que vai ocorrer?"

    puts '[1] - Domingo'
    puts '[2] - Segunda-feira'
    puts '[3] - Terça-feira'
    puts '[4] - Quarta-feira'
    puts '[5] - Quinta-feira'
    puts '[6] - Sexta-feira'
    puts '[7] - Sábado'

    print "  \n>>  "

    value = gets.chomp.to_i

    if value == 1
      register('domingo')
    elsif value == 2
      register('segunda')
    elsif value == 3
      register('terca')
    elsif value == 4
      register('quarta')
    elsif value == 5
      register('quinta')
    elsif value == 6
      register('sexta')
    elsif value == 7
      register('sabado')
    else
      puts 'Opção inválida!'
    end

  elsif value == 3
    print 'Tem certeza? [S, n] '
    value = gets.chomp.to_s

    if value === 's' || value === 'S' || value === ''
      delete()
    elsif value === 'n' || value === 'N'
      system('clear')
      puts 'Nenhuma alteração feita!'
    else
      system('clear')
      puts 'Ups! Nenhuma alteração feita!'
    end
  elsif value == 4
    system('clear')
  elsif value == 5
    puts '
    Nome do projeto: Agen
      última atualização: 05/04/2021 15:31
      Autor: Lietson dos santos
      '
    elsif value == 6
      puts "\n\n\n"
      puts 'Espero que tenha gostado do agen :>'
      exit
    else
      puts 'Opção inválida!'
    end

    puts "\n\n\n"
  end
