require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Enumerize < Administrate::Field::Base
      def to_s
        data.text unless data.nil?
      end

      def select_options
        resource.class.public_send(attribute.to_s).values.map {|w| [w.text, w]}
      end

      def selected
        data unless data.nil?
      end

      class Engine < ::Rails::Engine
      end
    end
  end
end
