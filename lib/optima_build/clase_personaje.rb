# frozen_string_literal: true

require_relative 'arbol_talentos'

module OptimaBuild
  class ClasePersonaje
    attr_reader :id

    def initialize(id:, nombre:, arbol_talentos:)
      

      raise ArgumentError, 'La clase debe tener un nombre' if nombre.empty?


      @id = id
      @nombre = nombre
      @arbol_talentos = arbol_talentos
    end

    def ==(other)
      other.is_a?(ClasePersonaje) && id == other.id
    end

    alias eql? ==

    def hash
      [self.class, id].hash
    end

    def talento(talento_id)
      @arbol_talentos.talento(talento_id)
    end
  end
end
