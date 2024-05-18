# frozen_string_literal: true

require "shale"

module Xmi
  class Extension < Shale::Mapper
    attribute :id, Shale::Type::String
    attribute :label, Shale::Type::String
    attribute :uuid, Shale::Type::String
    attribute :href, Shale::Type::String
    attribute :idref, Shale::Type::String
    attribute :type, Shale::Type::String
    attribute :extender, Shale::Type::String
    attribute :extender_id, Shale::Type::String

    xml do
      root "Extension"
      namespace "http://www.omg.org/spec/XMI/20131001", "xmi"

      map_attribute "id", to: :id, prefix: "xmi", namespace: "http://www.omg.org/spec/XMI/20131001"
      map_attribute "label", to: :label, prefix: "xmi", namespace: "http://www.omg.org/spec/XMI/20131001"
      map_attribute "uuid", to: :uuid, prefix: "xmi", namespace: "http://www.omg.org/spec/XMI/20131001"
      map_attribute "href", to: :href
      map_attribute "idref", to: :idref, prefix: "xmi", namespace: "http://www.omg.org/spec/XMI/20131001"
      map_attribute "type", to: :type, prefix: "xmi", namespace: "http://www.omg.org/spec/XMI/20131001"
      map_attribute "extender", to: :extender
      map_attribute "extenderID", to: :extender_id
    end
  end
end
