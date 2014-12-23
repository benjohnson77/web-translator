
class Translator
	def self.pig_latin(phrase)

		phrase.split(/\s/).map do |say|
		
			if !say.empty? 
				if say != '-'
					
					vowel = ['a','e','i','o','u','A','E','I','O','U'  ]
					letters , punct = say.match(/(\w+)(\W*)/).captures

					say = letters.chars

					if !vowel.include? say.take(1).join
						word = say.pop(say.length-1)
						firstletter = say.take(1)
					else 
						word = say
						firstletter = [] 	
					end	
					word.join + firstletter.join + 'ay' + punct
				else
					'-'
				end			
			end
		
		end.join(' ') 
	end
end


