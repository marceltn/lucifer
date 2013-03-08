#coding:utf-8

=begin
	Programa Lucifer

=end

class Lucifer
	def initialize

		# Frases para saudação
		greetings = ['Faça logo sua pergunta',
				'O que quer saber?']

		# Frases padrões para serem escritas automaticamente quando for jogar
		questions = ['Olá grande senhor do subsolo, eu gostaria de saber ',
			'Mestre dos mestres, o senhor poderia me falar ']

		letsPlay
	end

	# Saudação do jogo.
	def letsPlay
		# ramdom para escrever uma das saudações do greetings

		# iremos escrever a resposta, mas ao invés de aparecer o mesmo na tela, irá aparecer uma das perguntas.
		question = gets.chomp;
	end
end

lucifer = Lucifer.new
