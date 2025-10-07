# Language: es
Feature: Búsqueda y Contratación de Organizadores

  Como anfitrión,
  Quiero poder buscar, filtrar y contratar organizadores a través de la plataforma,
  Para encontrar al profesional adecuado para mi evento.

  Scenario: Filtrar organizadores por especialidad y ubicación
    Given un anfitrión está en la página de búsqueda de organizadores
    When aplica el filtro de categoría "Bodas"
    And aplica el filtro de ubicación "Lima"
    Then la lista de resultados solo muestra organizadores que cumplen con ambos criterios

  Scenario: Solicitar una cotización a un organizador
    Given un anfitrión ha encontrado el perfil de un organizador que le interesa
    When hace clic en el botón "Solicitar Cotización"
    And completa el formulario con los detalles de su evento
    Then la solicitud se registra exitosamente
    And aparece en la bandeja de "Mis Cotizaciones" del anfitrión

  Scenario: Aceptar una cotización y contratar a un organizador
    Given un anfitrión ha recibido una cotización de un organizador
    When revisa la cotización y hace clic en "Contratar"
    Then el sistema confirma la contratación
    And el estado del evento se actualiza a "Activo"
