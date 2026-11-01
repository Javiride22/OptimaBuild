# frozen_string_literal: true

module OptimaBuild
  class Personaje
    ROLES_VALIDOS = %i[tanque sanador dps].freeze

    attr_reader :id

    def initialize(id:, clase:, nivel:, rol_objetivo:, progreso_talentos: {})
      raise ArgumentError, 'El nivel debe estar entre 10 y 60' if nivel < 10 || nivel > 60

      raise ArgumentError, 'El rol indicado no es válido' unless ROLES_VALIDOS.include?(rol_objetivo)

      @id = id
      @clase = clase
      @nivel = nivel
      @rol_objetivo = rol_objetivo
      @progreso_talentos = progreso_talentos
    end
  end
end
