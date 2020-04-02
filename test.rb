require 'yaml'
MESSAGE = YAML.load_file('test_message.yml') 
# => {"en"=>{"welcome"=>"Welcome to Calculator! Enter your name:", "valid_name"=>"Make sure to enter a valid name."}, "es"=>{"welcome"=>"Bienvenido a la calculadora! Entre su nombre:", "valid_name"=>"Asegúrese de entrar un nombre válido."}}

LANGUAGE = 'en'

def messages(message, lang = 'en')
  MESSAGE[lang][message]
end

def prompt(string)
  message = messages(string, LANGUAGE)
  Kernel.puts("=> #{message}")
end

prompt('welcome')

def prompt_es(key)
  message = messages(key, 'es')
  puts "=> #{message}"
end

prompt_es('welcome')
