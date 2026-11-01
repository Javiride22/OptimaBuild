# frozen_string_literal: true

module OptimaBuild
  class RamaEspecializacion
    attr_reader :id

    def initialize(id:, nombre:, talentos:)
      raise ArgumentError, 'La rama debe tener un nombre' if nombre.empty?

      talentos.each do |id, talento|
        raise ArgumentError, 'La clave debe coincidir con el identificador del talento' unless id == talento.id
      end

      @id = id
      @nombre = nombre
      @talentos = talentos
    end

    def talento(talento_id)
      @talentos[talento_id]
    end

    def ids_talentos
      @talentos.keys
    end
  end
end
