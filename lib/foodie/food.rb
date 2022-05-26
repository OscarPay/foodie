# frozen_string_literal: true

require "active_support/inflector"
require "active_support/core_ext/class/attribute"

module Foodie
  class Food
    class_attribute :important_id

    def self.portray(food)
      if food.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end

    def self.pluralize(word)
      word.pluralize
    end
  end
end
