#Array where all info is held
@contacts = [

]

#Menu for option
def menu
  puts "Contact List - What Would You Like to do?"
  puts "1) Create a Contact"
  puts "2) View All Contacts"
  puts "3) Delete a Contact"
  puts "4) Edit a Contact"
  puts "5) Exit"
end
#defining a method for clicking the options
def user_selection
  menu
  choice = gets.to_i
  case choice
  when 1
    create_contact
  when 2
    view_contacts
  when 3
    delete_contact
  when 4
    edit_contact
  when 5
    puts "Adios Amigo!"
    exit
  else
    puts "Invalid Choice Try Again"
  end
end
#creating a contact
def create_contact
  puts "What is Your Contact's Name and Number?"
  @contacts << gets
end
#viewing a contact and my array
def view_contacts
  puts "These Are Your Contacts"
  puts @contacts
end
#deleting something out of array
def delete_contact
  puts "which Contact Would You Like to Remove?"
  @contacts.delete(gets)
  puts "Your Contact Has Been Removed"
end
#editing something in an array
def edit_contact
puts "Which Contact Would You Like to Edit?"
  @contacts.delete(gets)
  puts "What are the new details?"
  @contacts << gets
  puts "Your contact has been Edited"
  #edited_contacts = @contacts.map {|contact| }
end
#making it loop till exit
  while true
    user_selection
  end
