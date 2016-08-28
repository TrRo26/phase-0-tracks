# Virus Predictor

# I worked on this challenge with: Jason Wong
# We spent 2.5 hours on this challenge (1 w/ our guide, Daniel D. and 1.5 together afterwards)

# EXPLANATION OF require_relative
#   require_relative links another .rb file from a local directory, relative to the directory of the file you are adding it to (usually code you have writen).
#   This allows you to access and use data kept in a seperate file. This keeps things orderly and your code clean.
#   The 'require' statement is used to access and link files outside of your local drive (usually written or compiled by other people).

require_relative 'state_data'

class VirusPredictor

# This initialize method is assigning input (from state_data.rb) to instance variables for each new instance
# of the 'VirusPredictor' class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# This method is simply combining two other two (private) methods below so that their functionality is accessable
# outside of the class.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# this statement is limiting the access to all the methods listed below it so that they cannot be accessed 
# from outside the class (hence the two methods below being combined in a non-private method above (virus_effects) that CAN
# be called from outside the class).
 private

=begin
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
=end

# This method is assigning the correct density & multiplier index for each instance of @population_density.
  def predicted_deaths
    # predicted deaths is solely based on population density
    density = [200, 150, 100, 50, 0]
    multiplyer = [0.4, 0.3, 0.2, 0.1, 0.05]
    density.length.times do |x|
      @population_density >= density[x]
      @number_of_deaths = (@population * multiplyer[x]).floor
    end
     print "#{@state} will lose #{@number_of_deaths} people in this outbreak"
  end

=begin
def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and it will spread across the state in #{speed} months.\n\n"
  end
=end

# This method is assigning the correct speed and density values to each instance of @population_density.
  def speed_of_spread #in months
    speed = 0.5
    density = 200
    until @population_density >= density
      speed += 0.5
      density -= 50
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE

 # initialize VirusPredictor for each state
  STATE_DATA.each do |x, y|
    x = VirusPredictor.new(x, y[:population_density], y[:population])
    x.virus_effects
  end

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # One uses strings (keys) and hash rockets (assigning values) and the nested hash uses symbols (defined as key with symbol at the end 'word:')
  # They essesntially do the same thing but there are some various limitations, such as you can assign an integer as a key
  # with a hash rocket but not with a symbol
# What does require_relative do? How is it different from require?
  # See top of file - question was asked and answered there.
# What are some ways to iterate through a hash?
  # Using the each method, you can iterate through a hash selecting only the key or value or both
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # Mainly just that they were repetative. The same 3 were used.
# What concept did you most solidify in this challenge?
  # Refactoring. It was very helpful as it is easier than writing code from scratch but still allows
  # for creativity and problem solving.






