# frozen_string_literal: true

require_relative 'posicion_talento'
require_relative 'requisitos_talento'

module OptimaBuild
  class Talento
    attr_reader :id

    def initialize(id:, nombre:, rango_maximo:, posicion:, requisitos:)

      raise ArgumentError, 'El talento debe tener un nombre' if nombre.nil? || nombre.empty?

      raise ArgumentError, 'El rango máximo debe ser mayor que cero' if rango_maximo <= 0

      @id = id
      @nombre = nombre
      @rango_maximo = rango_maximo
      @posicion = posicion
      @requisitos = requisitos
    end

    def admite_rango?(rango)
      rango <= @rango_maximo
    end
  end
end
