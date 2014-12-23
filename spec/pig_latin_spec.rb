require "spec_helper"

describe 'Translator' do
	it 'translates words that start with a single consonant' do
		expect(Translator.pig_latin('hello')).to eq 'ellohay'
	end	

	it 'translates words that start with a vowel' do
		expect(Translator.pig_latin('apples')).to eq 'applesay'
	end	

	it 'translates all of the words in a phrase' do
		expect(Translator.pig_latin('hello apples')).to eq 'ellohay applesay'
	end	

	it 'translates all of the words in a sentence and retains the punctuation' do
		expect(Translator.pig_latin('hello...  apples?!')).to eq 'ellohay...  applesay?!'
	end

	it 'should translate a pararaph of text' do
		text = "Adding pages to your blog can be a great way to organize content - like About me or Advertise sections. To make managing pages easier, we redesigned the Pages tab in the Blogger dashboard to make it look and feel more like something you are already familiar with: managing posts." 
		translates = "Addingay agespay otay ouryay logbay ancay ebay aay reatgay ayway otay organizeay ontentcay - ikelay Aboutay emay oray Advertiseay ectionssay. oTay akemay anagingmay agespay easieray, eway edesignedray hetay agesPay abtay inay hetay loggerBay ashboardday otay akemay itay ooklay anday eelfay oremay ikelay omethingsay ouyay areay alreadyay amiliarfay ithway: anagingmay ostspay."

		expect(Translator.pig_latin(text)).to eq translates 
	end	
end
