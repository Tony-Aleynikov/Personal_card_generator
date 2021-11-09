puts "Вы должны ввести данные для заполнения визитной карточки"

data = []

data << get_name << get_discription << get_phone << get_email


begin
  puts "Введите фамилию, имя и отчество:"
  name = STDIN.gets.chomp
end until name =~ /\A(?=\A.{,100}\z) *[a-zа-яё]+ +[a-zа-яё]+ +[a-zа-яё]+ *\z/i
  #  regexp не позволяет строке быть длиннее 100 символов и при этом позволяет 
  #  вводить лишние пробелы

name = name.scan(/[a-zа-яё]+/).map(&:capitalize).join(" ")
  #  строка очищается от лишних пробелов, форматируется регистр

