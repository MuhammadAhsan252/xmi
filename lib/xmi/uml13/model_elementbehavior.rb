require 'shale'

require_relative 'state_machine'

class ModelElementbehavior < Shale::Mapper
  attribute :state_machine, StateMachine, collection: true

  xml do
    root 'ModelElement.behavior'
    namespace 'omg.org/UML1.3', 'UML'

    map_element 'StateMachine', to: :state_machine
  end
end
