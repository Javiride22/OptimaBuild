# frozen_string_literal: true

module OptimaBuild
  class Personaje
    ROLES_VALIDOS = %i[tanque sanador dps].freeze

    attr_reader :clase
    attr_accessor :nivel, :rol_objetivo, :progreso_talentos
  end
end
