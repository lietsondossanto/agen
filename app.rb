system('clear')

loop do

    puts "[1] - Consultar Actividades"
    puts "[2] - Cadastrar uma actividade"
    puts "[3] - Eliminar o banco de dados"
    puts "[4] - Sobre"
    puts "[5] - Limpar o terminal"
    puts "[6] - Sair"

    print "Opcao: "
    opcao = gets.chomp.to_i

    if opcao == 1

        puts "-" * 10
        puts "\n\n\nQual dia da semana pretende consultar? "

        puts "\n[1] - Domingo"
        puts "[2] - Segunda-feira"
        puts "[3] - Terça-feira"
        puts "[4] - Quarta-feira"
        puts "[5] - Quinta-feira"
        puts "[6] - Sexta-feira"
        puts "[7] - Sábado"

        print "Opcao: "
        opcao = gets.chomp.to_i

        if opcao == 1
            arq = File.readlines("db/domingo.txt")
            
            puts "\n"
            puts "-" * 10
            puts "Tu tens #{arq.size - 1} actividades para domingo.\n\n"

            count = 0

            while count < arq.size do
                puts "#{count} - #{arq[count]}"
                count += 1
            end

            puts "-" * 10

        elsif opcao == 2
            arq = File.readlines("db/segunda.txt")
            
            puts "\n"
            puts "-" * 10
            puts "Tu tens #{arq.size} actividades para Segunda-Feira.\n\n"

            count = 0

            while count < arq.size do
                puts "#{count} - #{arq[count]}"
                count += 1
            end

            puts "-" * 10
    
        elsif opcao == 3
            arq = File.readlines("db/terca.txt")
            
            puts "\n"
            puts "-" * 10
            puts "Tu tens #{arq.size - 1} actividades para Terça-Feira.\n\n"

            count = 0

            while count < arq.size do
                puts "#{count} - #{arq[count]}"
                count += 1
            end

            puts "-" * 10

        elsif opcao == 4
            arq = File.readlines("db/quarta.txt")
            
            puts "\n"
            puts "-" * 10
            puts "Tu tens #{arq.size - 1} actividades para Quarta-Feira.\n\n"

            count = 0

            while count < arq.size do
                puts "#{count} - #{arq[count]}"
                count += 1
            end

            puts "-" * 10

        elsif opcao == 5
            arq = File.readlines("db/quinta.txt")
            
            puts "\n"
            puts "-" * 10
            puts "Tu tens #{arq.size - 1} actividades para Quinta-feira.\n\n"

            count = 0

            while count < arq.size do
                puts "#{count} - #{arq[count]}"
                count += 1
            end

            puts "-" * 10

        elsif opcao == 6
            arq = File.readlines("db/sexta.txt")
            
            puts "\n"
            puts "-" * 10
            puts "Tu tens #{arq.size - 1} actividades para Sexta-Feira.\n\n"

            count = 0

            while count < arq.size do
                puts "#{count} - #{arq[count]}"
                count += 1
            end

            puts "-" * 10

        elsif opcao == 7
            arq = File.readlines("db/sabado.txt")
            
            puts "\n"
            puts "-" * 10
            puts "Tu tens #{arq.size - 1} actividades para Sábado.\n\n"

            count = 0

            while count < arq.size do
                puts "#{count} - #{arq[count]}"
                count += 1
            end

            puts "-" * 10

        else
            puts "Opção Inválida!"
        end
        
    elsif opcao == 2
        
        puts "\n\n\nQual é o dia da semana que vai ocorrer a actividade?"

        puts "[1] - Domingo"
        puts "[2] - Segunda-feira"
        puts "[3] - Terça-feira"
        puts "[4] - Quarta-feira"
        puts "[5] - Quinta-feira"
        puts "[6] - Sexta-feira"
        puts "[7] - Sábado"

        print "Opcao: "
        opcao = gets.chomp.to_i

        if opcao == 1
            system("clear")
            
            puts "\n\n\n\n"

            puts "O que pretendes fazer no Domingo? "
            print "R: "
            atividade = gets.chomp.to_s
            
            # a = File.readlines("db/id.txt") /* lê o conteudo do arquivo id*/
            atividade_db = File.new("db/domingo.txt", "a+")
            # id_db = File.new("db/id.txt", "r+") /* Abre o arquivo id para leitura e escrita */

            # id = a[0].to_i + 1 /* Calcular o id */

            # id_db.puts(id) /* Escreve no arquivo id o valor da variavel id*/
            # atividade_db.puts({id: id,atividade: atividade}) /* Armazenas em um arquivo o um objecto com o id e a activida*/ 
            
            atividade_db.puts(atividade)

            # id_db.close /* Fecha a arquivo id */
            atividade_db.close

            puts "Actividade Cadastrada com êxito :)"

        elsif opcao == 2
            system("clear")
            
            puts "\n\n\n\n"

            puts "O que pretendes fazer na Segunda-Feira? "
            print "R: "
            atividade = gets.chomp.to_s
            
            # a = File.readlines("db/id.txt") /* lê o conteudo do arquivo id*/
            atividade_db = File.new("db/segunda.txt", "a+")
            # id_db = File.new("db/id.txt", "r+") /* Abre o arquivo id para leitura e escrita */

            # id = a[0].to_i + 1 /* Calcular o id */

            # id_db.puts(id) /* Escreve no arquivo id o valor da variavel id*/
            # atividade_db.puts({id: id,atividade: atividade}) /* Armazenas em um arquivo o um objecto com o id e a activida*/ 
            
            atividade_db.puts(atividade)

            # id_db.close /* Fecha a arquivo id */
            atividade_db.close

            puts "Actividade Cadastrada com êxito :)"

        elsif opcao == 3
            system("clear")
            
            puts "\n\n\n\n"

            puts "O que pretendes fazer na Terça-Feira? "
            print "R: "
            atividade = gets.chomp.to_s
            
            # a = File.readlines("db/id.txt") /* lê o conteudo do arquivo id*/
            atividade_db = File.new("db/terca.txt", "a+")
            # id_db = File.new("db/id.txt", "r+") /* Abre o arquivo id para leitura e escrita */

            # id = a[0].to_i + 1 /* Calcular o id */

            # id_db.puts(id) /* Escreve no arquivo id o valor da variavel id*/
            # atividade_db.puts({id: id,atividade: atividade}) /* Armazenas em um arquivo o um objecto com o id e a activida*/ 
            
            atividade_db.puts(atividade)

            # id_db.close /* Fecha a arquivo id */
            atividade_db.close

            puts "Actividade Cadastrada com êxito :)"

        elsif opcao == 4
            system("clear")
            
            puts "\n\n\n\n"

            puts "O que pretendes fazer na Quarta-feira? "
            print "R: "
            atividade = gets.chomp.to_s
            
            # a = File.readlines("db/id.txt") /* lê o conteudo do arquivo id*/
            atividade_db = File.new("db/quarta.txt", "a+")
            # id_db = File.new("db/id.txt", "r+") /* Abre o arquivo id para leitura e escrita */

            # id = a[0].to_i + 1 /* Calcular o id */

            # id_db.puts(id) /* Escreve no arquivo id o valor da variavel id*/
            # atividade_db.puts({id: id,atividade: atividade}) /* Armazenas em um arquivo o um objecto com o id e a activida*/ 
            
            atividade_db.puts(atividade)

            # id_db.close /* Fecha a arquivo id */
            atividade_db.close

            puts "Actividade Cadastrada com êxito :)"

        elsif opcao == 5
            system("clear")
            
            puts "\n\n\n\n"

            puts "O que pretendes fazer na Quinta-Feira? "
            print "R: "
            atividade = gets.chomp.to_s
            
            # a = File.readlines("db/id.txt") /* lê o conteudo do arquivo id*/
            atividade_db = File.new("db/quinta.txt", "a+")
            # id_db = File.new("db/id.txt", "r+") /* Abre o arquivo id para leitura e escrita */

            # id = a[0].to_i + 1 /* Calcular o id */

            # id_db.puts(id) /* Escreve no arquivo id o valor da variavel id*/
            # atividade_db.puts({id: id,atividade: atividade}) /* Armazenas em um arquivo o um objecto com o id e a activida*/ 
            
            atividade_db.puts(atividade)

            # id_db.close /* Fecha a arquivo id */
            atividade_db.close

            puts "Actividade Cadastrada com êxito :)"
            
        elsif opcao == 6
            system("clear")
            
            puts "\n\n\n\n"

            puts "O que pretendes fazer na Sexta-feira? "
            print "R: "
            atividade = gets.chomp.to_s
            
            # a = File.readlines("db/id.txt") /* lê o conteudo do arquivo id*/
            atividade_db = File.new("db/sexta.txt", "a+")
            # id_db = File.new("db/id.txt", "r+") /* Abre o arquivo id para leitura e escrita */

            # id = a[0].to_i + 1 /* Calcular o id */

            # id_db.puts(id) /* Escreve no arquivo id o valor da variavel id*/
            # atividade_db.puts({id: id,atividade: atividade}) /* Armazenas em um arquivo o um objecto com o id e a activida*/ 
            
            atividade_db.puts(atividade)

            # id_db.close /* Fecha a arquivo id */
            atividade_db.close
            
            puts "Actividade Cadastrada com êxito :)"
            
        elsif opcao == 7
            system("clear")
            
            puts "\n\n\n\n"

            puts "O que pretendes fazer no Sábado? "
            print "R: "
            atividade = gets.chomp.to_s
            
            # a = File.readlines("db/id.txt") /* lê o conteudo do arquivo id*/
            atividade_db = File.new("db/sabado.txt", "a+")
            # id_db = File.new("db/id.txt", "r+") /* Abre o arquivo id para leitura e escrita */

            # id = a[0].to_i + 1 /* Calcular o id */

            # id_db.puts(id) /* Escreve no arquivo id o valor da variavel id*/
            # atividade_db.puts({id: id,atividade: atividade}) /* Armazenas em um arquivo o um objecto com o id e a activida*/ 
            
            atividade_db.puts(atividade)

            # id_db.close /* Fecha a arquivo id */
            atividade_db.close
            
            puts "Actividade Cadastrada com êxito :)"
            
        else 
            puts "Opção inválida!"
        end
    
    elsif opcao == 3
        segunda = File.new("db/segunda.txt", "w")
        terca = File.new("db/terca.txt", "w")
        quarta = File.new("db/quarta.txt", "w")
        quinta = File.new("db/quinta.txt", "w")
        sexta = File.new("db/sexta.txt", "w")
        sabado = File.new("db/sabado.txt", "w")
        domingo = File.new("db/domingo.txt", "w")

        domingo.puts("")
        terca.puts("")
        quarta.puts("")
        quinta.puts("")
        sexta.puts("")
        sabado.puts("")

        domingo.close
        segunda.close
        terca.close
        quarta.close
        quinta.close
        sexta.close
        sabado.close

        puts "Banco de Dados Iliminado com êxito :>!"

    elsif opcao == 4
        puts """
        Nome do projecto: Agen
        Data de Criação: 21/03/2021 21:41
        Autor: Lietson dos santos
        """
    elsif opcao == 5
        system("clear")
    elsif opcao == 6
        puts "\n\n\n"
        puts "Espero que tenha gostado do agen :>"
        exit
    else 
        puts "Opção inválida!"
    end

    puts "\n\n\n"
end