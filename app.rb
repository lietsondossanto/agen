system('clear')

DAYS_OF_THE_WEEK = ["Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"]

def consult(day)

    regexp_day = Regexp.new("^#{day}\-")

    arq = File.readlines("db/agen.txt")
    arq.delete_if {|a| !a.match(regexp_day) }

    puts "\n"
    puts "-" * 10
    puts "Tu tens #{arq.size} atividades para #{DAYS_OF_THE_WEEK[day-1]}.\n\n"

    count = 0

    while count < arq.size do
        puts "#{count} - #{arq[count].gsub(regexp_day,"")}"
        count += 1
    end

    puts "-" * 10
end

def register(day)
    system("clear")
            
            puts "\n\n\n\n"

            puts "O que pretende fazer? "
            print "R: "
            atividade = gets.chomp.to_s
            
            # a = File.readlines("db/id.txt") /* lê o conteudo do arquivo id*/
            atividade_db = File.new("db/agen.txt", "a+")
            # id_db = File.new("db/id.txt", "r+") /* Abre o arquivo id para leitura e escrita */

            # id = a[0].to_i + 1 /* Calcular o id */

            # id_db.puts(id) /* Escreve no arquivo id o valor da variavel id*/
            # atividade_db.puts({id: id,atividade: atividade}) /* Armazenas em um arquivo o um objecto com o id e a atividade*/ 
            
            atividade_db.puts("#{day}-" + atividade)

            # id_db.close /* Fecha a arquivo id */
            atividade_db.close

            puts "Atividade Cadastrada com êxito :)"
end

def list_options_days_week
    DAYS_OF_THE_WEEK.each_with_index do |week,index|
        puts "[#{index+1}] - #{week}"
    end
end

loop do

    puts "[1] - Consultar atividades"
    puts "[2] - Cadastrar atividade"
    puts "[3] - Limpar o banco de dados"
    puts "[4] - Limpar o terminal"
    puts "[5] - Sobre"
    puts "[6] - Sair"

    print "  \n>>  "
    opcao = gets.chomp.to_i

    if opcao == 1

        puts "-" * 10
        puts "\n\n\nQual é o dia da semana que pretende consultar?\n"

        list_options_days_week

        print "  \n>>  "
        opcao = gets.chomp.to_i

        if opcao >= 1 && opcao <= 7
            consult(opcao)
        else
            puts "Opção Inválida!"
        end
        
    elsif opcao == 2
        
        puts "\n\n\nQual é o dia da semana que vai ocorrer?\n"

        list_options_days_week

        print "  \n>>  "
        opcao = gets.chomp.to_i

        if opcao >= 1 && opcao <= 7
            register(opcao)
        else 
            puts "Opção inválida!"
        end
    
    elsif opcao == 3

        day = File.new("db/agen.txt", "w")
        day.puts("")
        day.close

        puts "Banco de dados eliminado com êxito :>!"

    elsif opcao == 4
        system("clear")
    elsif opcao == 5
        puts """
        Nome do projeto: Agen
        última atualização: 05/04/2021 15:31
        Autor: Lietson dos santos
        """
    elsif opcao == 6
        puts "\n\n\n"
        puts "Espero que tenha gostado do agen :>"
        exit
    else 
        puts "Opção inválida!"
    end

    puts "\n\n\n"
end