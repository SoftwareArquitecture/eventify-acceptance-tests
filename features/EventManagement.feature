# Language: es
Feature: Gestión y Planificación de Eventos

  Como organizador,
  Quiero registrar y gestionar los detalles de un evento,
  Para tener un control centralizado de la planificación.

  Scenario: Registrar un nuevo evento con éxito
    Given un organizador ha iniciado sesión y accede a la opción "Nuevo Evento"
    When completa los campos obligatorios: título, fecha/hora, tipo y ubicación
    And hace clic en "Guardar"
    Then el sistema crea el evento en la base de datos en menos de 1 segundo
    And redirige al organizador al panel de control de ese evento

  Scenario: Crear y completar una tarea del evento
    Given un usuario está en el panel de un evento
    When agrega una nueva tarea con la descripción "Confirmar catering" y una fecha límite
    Then la tarea aparece en la lista con el estado "Pendiente"
    When marca la tarea como "Completada"
    Then el estado de la tarea cambia
    And el contador de tareas pendientes se actualiza instantáneamente
