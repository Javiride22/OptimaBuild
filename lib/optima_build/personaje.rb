# frozen_string_literal: true

module OptimaBuild
  class Personaje
    ROLES_VALIDOS = %i[tanque sanador dps].freeze

    def initialize(id:, clase:, nivel:, rol_objetivo:, progreso_talentos: {})
      @id = id
      @clase = clase
      @nivel = nivel
      @rol_objetivo = rol_objetivo
      @progreso_talentos = progreso_talentos
    end
  end
end
