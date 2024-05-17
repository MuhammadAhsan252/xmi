require 'shale'

require_relative 'action_sequence'

class Transitioneffect < Shale::Mapper
  attribute :action_sequence, ActionSequence, collection: true

  xml do
    root 'Transition.effect'
    namespace 'omg.org/UML1.3', 'UML'

    map_element 'ActionSequence', to: :action_sequence
  end
end
