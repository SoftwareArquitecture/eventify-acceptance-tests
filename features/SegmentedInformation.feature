# Language: es
Feature: Información Segmentada por Rol

  Como visitante de la landing page,
  Quiero ver información específica para mi rol (organizador o anfitrión),
  Para entender rápidamente los beneficios que me ofrece la plataforma.

  Scenario: Visualizar beneficios para el rol de Anfitrión
    Given un visitante está en la sección de "Beneficios" de la landing page
    When selecciona la pestaña o filtro de "Anfitrión"
    Then se deben mostrar al menos 3 beneficios clave específicos para los anfitriones

  Scenario: Visualizar funcionalidades para el rol de Organizador
    Given un visitante está en la sección de "Funcionalidades"
    When selecciona la pestaña o filtro de "Organizador"
    Then debe visualizar al menos 5 funcionalidades relevantes para los organizadores
