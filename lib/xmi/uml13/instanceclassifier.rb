require 'shale'

require_relative 'classifier'

class Instanceclassifier < Shale::Mapper
  attribute :classifier, Classifier, collection: true

  xml do
    root 'Instance.classifier'
    namespace 'omg.org/UML1.3', 'UML'

    map_element 'Classifier', to: :classifier
  end
end
