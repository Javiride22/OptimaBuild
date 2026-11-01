# frozen_string_literal: true

module OptimaBuild
  class Talento
    attr_reader :id

    def initialize(
      id:,
      nombre:,
      rango_maximo:,
      fila:,
      columna:,
      puntos_rama: 0,
      talento_requerido_id: nil,
      rango_requerido: nil
    )
      raise ArgumentError, 'El talento debe tener un nombre' if nombre.nil? || nombre.empty?

      raise ArgumentError, 'El rango máximo debe ser mayor que cero' if rango_maximo <= 0

      raise ArgumentError, 'La fila no puede ser negativa' if fila.negative?

      raise ArgumentError, 'La columna no puede ser negativa' if columna.negative?

      raise ArgumentError, 'Los puntos requeridos en la rama no pueden ser negativos' if puntos_rama.negative?

      if talento_requerido_id.nil? && !rango_requerido.nil?
        raise ArgumentError, 'No puede existir un rango requerido sin un talento requerido'
      end

      if !rango_requerido.nil? && rango_requerido <= 0
        raise ArgumentError, 'El rango requerido debe ser mayor que cero'
      end

      @id = id
      @nombre = nombre
      @rango_maximo = rango_maximo
      @fila = fila
      @columna = columna
      @puntos_rama = puntos_rama
      @talento_requerido_id = talento_requerido_id
      @rango_requerido = rango_requerido
    end

    def admite_rango?(rango)
      rango <= @rango_maximo
    end
  end
end
