# Language: es
Feature: Creación de Eventos
  Como un usuario organizador
  Quiero poder registrar un nuevo evento en la plataforma
  Para iniciar su planificación y gestión de tareas.

Scenario: Registro exitoso de un nuevo evento con datos válidos
  Given un organizador ha iniciado sesión en la plataforma
  When completa el formulario de nuevo evento con datos válidos
  And hace clic en el botón "Guardar Evento"
  Then el sistema debe crear el evento en la base de datos
  And el organizador debe ser redirigido al panel de control del nuevo evento

Scenario: Falla en el registro de un evento por falta de un campo obligatorio
  Given un organizador ha iniciado sesión en la plataforma
  When intenta guardar un nuevo evento sin proporcionar el título
  Then el sistema debe mostrar un mensaje de error de validación
  And el evento no debe ser creado en la base de datos
