# frozen_string_literal: true

module OptimaBuild
  class Talento
    def initialize(
      nombre:,
      rango_maximo:,
      fila:,
      columna:,
      puntos_rama: 0,
      talento_requerido: nil,
      rango_requerido: nil
    )
      @nombre = nombre
      @rango_maximo = rango_maximo
      @fila = fila
      @columna = columna
      @puntos_rama = puntos_rama
      @talento_requerido = talento_requerido
      @rango_requerido = rango_requerido
    end
  end
end
