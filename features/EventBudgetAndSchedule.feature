# Language: es
Feature: Gestión de Presupuesto y Cronograma del Evento

  Como organizador o anfitrión,
  Quiero controlar el presupuesto y ver el cronograma de actividades,
  Para asegurar una correcta planificación financiera y logística.

  Scenario: Recibir alerta al superar el 90% del presupuesto
    Given un organizador ha definido un presupuesto de S/ 10000 para un evento
    And ha registrado gastos que suman S/ 8500
    When registra un nuevo gasto de S/ 600
    Then el gasto acumulado es de S/ 9100
    And el sistema muestra una alerta visual en el panel indicando que el presupuesto ha superado el 90%

  Scenario: Visualizar conflicto de horario en el cronograma
    Given un usuario está planificando el cronograma de un evento
    And ya existe una actividad "Recepción de invitados" de 19:00 a 20:00
    When intenta agregar una nueva actividad "Show de fuegos artificiales" a las 19:30
    Then el sistema muestra un aviso de conflicto de horario antes de guardar
