machine = {}

words = %W{ abc abd }

$next_state = 0
def new_state
  $next_state.tap { $next_state += 1 }
end

class Action < Struct.new(:new_state, :action)
  
  def inspect
    "[#{new_state}, #{action}]"
  end
  
end

INITIAL_STATE = new_state

for word in words
  state = INITIAL_STATE
  for c, i in word.chars.zip((0...word.size).to_a)
    if not machine.has_key? [state, c] then
      machine[[state, c]] = Action.new(new_state, :move)
    end
    if i == (word.size - 1) then
      machine[[state, c]] = Action.new(INITIAL_STATE, :return)
    else
      state = machine[[state, c]]
    end
  end
end
p machine