# frozen_string_literal: true

# hash
# a chave ana possui o valor tal

agenda = {
  Ana: '6969-6969',
  Pedro: '7979-7979'
}

# looping

loop do
  puts ''
  puts '1- Adicionar'
  puts '2- Atualizar'
  puts '3- Exibir'
  puts '4- Excluir'
  puts '5- Sair'

  print 'Escolha uma opção: '
  escolha = gets.chomp

  puts ''

  case escolha
  when '1'
    print 'Insira o nome do contato: '
    nome = gets.chomp

    # checa se existe o nome
    # converte para simbolo
    if agenda[nome.to_sym].nil?
      print 'Insira o telefone: '
      telefone = gets.chomp
      agenda[nome.to_sym] = telefone
    else
      puts 'Este nome já existe!'
    end
  when '2'
    print 'Quem nome você deseja atualizar? '
    nome = gets.chomp

    # checa se existe o nome
    if agenda[nome.to_sym].nil?
      puts 'Este nome não existe!'
    else
      print 'Qual o telefone? '
      telefone = gets.chomp
      agenda[nome.to_sym] = telefone
    end

  when '3'

    # imprime os campos nome e telefone
    agenda.each do |nome, telefone|
      puts "Nome: #{nome} - Telefone: #{telefone}"
    end
  when '4'
    print 'Qual nome você gostaria de apagar? '
    nome = gets.chomp

    # checa se existe o nome
    if agenda[nome.to_sym].nil?
      puts 'Este nome não existe!'
      elseif
      agenda.delete(nome.to_sym)
      puts "#{nome} foi deletado."
    else
      puts 'Opção inválida!'
    end

  when '5'
    puts 'Saindo...'
    exit
  end
end
