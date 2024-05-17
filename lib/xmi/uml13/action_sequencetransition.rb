require 'shale'

require_relative 'transition'

class ActionSequencetransition < Shale::Mapper
  attribute :transition, Transition, collection: true

  xml do
    root 'ActionSequence.transition'
    namespace 'omg.org/UML1.3', 'UML'

    map_element 'Transition', to: :transition
  end
end
