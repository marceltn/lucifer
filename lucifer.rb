#coding:utf-8

=begin
	Programa Lucifer

=end

class Lucifer
	def initialize
		perguntas = ['Esta e uma frase',
			'Ola, sou outra frase']


		greeting
	end

	def greeting
		puts "Faça logo a sua pergunta!"
	end

	question = gets.chomp;
end

lucifer = Lucifer.new
