# frozen_string_literal: true

require_relative 'rama_especializacion'

module OptimaBuild
  class ArbolTalentos
    def initialize(ramas:)
      raise ArgumentError, 'Un árbol de talentos debe tener exactamente tres ramas' unless ramas.length == 3

      ramas.each do |rama_id, rama|
        raise ArgumentError, 'La clave debe coincidir con el identificador de la rama' unless rama_id == rama.id
      end

      ids_talentos = ramas.values.flat_map(&:ids_talentos)

      if ids_talentos.uniq.length != ids_talentos.length
        raise ArgumentError, 'Un identificador de talento no puede repetirse entre ramas'
      end

      @ramas = ramas
    end

    def talento(talento_id)
      @ramas.each_value do |rama|
        talento = rama.talento(talento_id)
        return talento unless talento.nil?
      end

      nil
    end
  end
end
