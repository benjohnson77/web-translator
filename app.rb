# app.rb
set :haml, :format => :html5

get "/" do
 	haml :index, :locals => {:phrase => "", :translated_phrase => "", :language => ""}
end

post "/translate" do
	translated_phrase = Translator.pig_latin(params[:phrase])
	haml :index, :locals => {:phrase => params[:phrase], :translated_phrase => translated_phrase, :language => params[:language]}
end							