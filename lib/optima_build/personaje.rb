# frozen_string_literal: true

module OptimaBuild
  class ClasePersonaje
    attr_reader :id

    def initialize(id:, nombre:, arbol_talentos:)
      raise ArgumentError, 'La clase debe tener un nombre' if nombre.empty?

      @id = id
      @nombre = nombre
      @arbol_talentos = arbol_talentos
    end
  end
end
