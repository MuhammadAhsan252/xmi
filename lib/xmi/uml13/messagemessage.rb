require 'shale'

require_relative 'message'

class Messagemessage < Shale::Mapper
  attribute :message, Message, collection: true

  xml do
    root 'Message.message'
    namespace 'omg.org/UML1.3', 'UML'

    map_element 'Message', to: :message
  end
end
