#Cool input output

  # main menu
  # have a case statement for menu options
  # command line menu
  # ide menu
  # search menu

# def main_menu
#   puts "***************** My Cheatsheet for Ruby ******************"
#   puts "Select a Choice:"
#   puts "1: Command Line Cheatsheet"
#   puts "2: Sublime Cheatsheet"
#   puts "3: Search menu"
#   puts "4: Exit"
#   puts "Make your selection with #"
#   puts "***********************************************************"
#   @num = gets.to_i
# end


# def method_commandmenu

#   def method_command
#     case @num
#       when 1
#         puts "--:Command Line Cheatsheet:--
#         cd = change directory,
#         mv = move directory,
#         mkdir = make directory,
#         cd .. = back one directory,
#         cd ~ = basically home button,
#         less = page through a file,
#         cp = copy file,
#         pushd = push directory,
#         rmdir = remove directory,
#         ls = list directory,
#         pwd =  print working directory,
#         hostname = my computer's network name,
#         whoami = tell's you the user you are,
#         popd = pop directory,
#         cat = print the whole file,
#         xargs = excute arguments, find = find files,
#         grep = fine(d) things inside files,
#         man = read a manual page,
#         apropos = find what man page is appropriate,
#         env = look at your arguments,
#         echo = print some arguments,
#         export = export -- set a new enviorment variable,
#         exit = exit the shell,
#         sudo = DANGER! become super user root DANGER!
#         ____irb = takes you into ruby,
#         exit = allows you to get out,
#         ** = exponents,____"
#       when 2
#         puts "---Sublime Cheatsheet---:
#         command s = save,
#         option command s = save all,
#         command question mark = comment out, "
#       when 3
#         puts "Search"
#       when 4
#         puts "--Exit--
#         type cd ~"
#       else
#         puts "Not a command"
#     end
#   end
# end

  # case @num
  #   when 1
  #     method_com
  #   when 2
  #     sub_menu
  #   when 3
  #     method_com
  #   when 4
  #     method_exit
  #   else
  #     puts "Not a valid entry"
  #     main_menu
  #     method_nav
  # end



# search_man
# method_exit
# method_commandmenu
# method_command




def method_com
  puts "        1: Search
        2: Main Menu
        3: Exit"
        @silly = gets.to_i
  case @silly
    when 1
      search_man
    when 2
      method_nav
    when 3
      exit 0
  end
end

def sub_menu
  puts "---Sublime Cheatsheet---:

        command s = save,

        option command s = save all,

        command question mark = comment out,

        controll commmand arrows = move lines,

        command arrows = navigates to edge of lines
        (side to side), and top and bottom of page
        (up and down)

        option arrows = navigates to end of word or
        begining of word, it jumps over the word.

        --- Pick 1 or 2----
        1: Main Menu
        2: Exit
        3: Read something Silly"
        @cho = gets.to_i
  case @cho
    when 1
      @menu
    when 2
      exit 0
    when 3
      squid = {Name: 'Squidward', House: "Easter Island head", Shirt: "brown", Nose: "Too big, will never fit in"}
      squid.each do |key, value|
        puts "#{key} #{value}"
      end
  end
end



def method_exit
  exit 0
end

def search_man
  puts"************ Search ************"
  puts`man #{gets.strip}`
  method_com
end


m_com = -> { method_com }
s_menu = -> { sub_menu }
m_exit = -> { method_exit }

@menu = {
  main:
   { '--------WELCOME TO MY CHEATSHEET' => '-------',
     '1' => 'Command Line Cheatsheet---',
     '2' => 'Sublime Cheatsheet---',
     '3' => 'Search----',
     '4' => 'Quit---'
    },
  command_line:
    {'1' => m_com,
     '2' => s_menu,
     '3' => m_com,
     '4' => m_exit
    }
}

def method_nav
  @menu[:main].each do |key, value|
    puts "# #{key} --- takes you to #{value}"
  end
  @num = gets.strip
  main_menu_selection = @menu[:main][@num]

  command_line_menu_selection = @menu[:command_line][@num].call

  main_menu_selection

  command_line_menu_selection
end

method_nav







