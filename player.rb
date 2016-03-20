class Player

  attr_accessor :objectblood, :manna, :name, :status, :target


  def initialize
    @objectblood = 100
    @manna = 40
  end

  def get_name
    @name
  end

  def get_manna
    @manna
  end

  def get_objectblood
    @objectblood
  end

  def set_name name
    @name = name
  end


  def get_target
    @target
  end

  team = Array.new



  puts "# ============================== #
				# Welcome to the Battle Arena #
				# ------------------------------------------------- ---- #
				# Description: #
				# 1 type new to create a character #
				# 2. type start to begin the fight #
				# ------------------------------------------------- ---- #
				# Current Player: #{team.length}#
				# - #
				# * Max player 3 #
				# ------------------------------------------------- ---- #
				"
  puts "please type ^^ new ^^ for the first time"
  status = gets
  status = status.chomp

  if status.eql?"new"

    while team.length < 3


      puts "Put Player names #{team.length+1}"

      player  = Player.new
      player.name = gets
      team << player

    end
    puts "# ============================== #
				# Welcome to the Battle Arena #
				# ------------------------------------------------- ---- #
				# Description: #
				# 1 type new to create a character #
				# 2. type start to begin the fight #
				# ------------------------------------------------- ---- #
				# Current Player: #{team.length}#
				# - #{team[0].get_name}: manna = #{team[0].get_manna}, blood = #{team[0].get_objectblood}
				# - #{team[1].get_name}: manna = #{team[1].get_manna}, blood = #{team[1].get_objectblood}
				# - #{team[2].get_name}: manna = #{team[2].get_manna}, blood = #{team[2].get_objectblood}
				# * Max player 3 #
				# ------------------------------------------------- ---- #
				"
  end

  puts "Lets start the Game!, type ^^start^^"
  status = gets
  status = status.chomp

  if status.eql?"start"
    while team[0].get_objectblood > 0 && team[1].get_objectblood > 0 && team[2].get_objectblood > 0


      puts "# ============================== #
			# Welcome to the Battle Arena #
			# ------------------------------------------------- ---- #
			Battle Start:
			who will attack:" 
      name = gets
      if (name.eql?team[0].get_name) || (name.eql?team[1].get_name) || (name.eql?team[2].get_name)

        puts "
			who attacked   :" 
        target = gets

        if target.eql?team[0].get_name
          team[0].objectblood -= 20
        elsif target.eql?team[1].get_name
          team[1].objectblood -= 20
        elsif target.eql?team[2].get_name
          team[2].objectblood -= 20
        else
          puts "**********************Target unknown, please input correctly******************************"
        end

      else
        puts "**********************Attacker unknown, please input correctly******************************"
      end
      puts"Description:
			#{team[0].get_name}: manna = #{team[0].get_manna}, blood = #{team[0].get_objectblood}
			#{team[1].get_name}: manna = #{team[1].get_manna}, blood = #{team[1].get_objectblood}
			#{team[2].get_name}: manna = #{team[2].get_manna}, blood = #{team[2].get_objectblood}"
    end

    puts"Game Over"
  end



end
