require 'thor'
require 'foodie/food'

module Foodie
  class CLI < Thor

    desc "portray ITEM", "Determines if a piece of food is gross or delicious"
    def portray(name)
      puts Foodie::Food.portray(name)
    end

    desc "pluralize", "Pluralizes a word"
    method_option :word, aliases: "-w"
    def pluralize
      puts Foodie::Food.pluralize(options[:word])
    end

  end
end