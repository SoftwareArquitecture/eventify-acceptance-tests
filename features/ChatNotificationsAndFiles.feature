# Language: es
Feature: Notificaciones y Archivos Adjuntos en el Chat

  Como usuario del chat,
  Quiero recibir notificaciones de nuevos mensajes y poder enviar archivos,
  Para mantenerme al tanto de las conversaciones y compartir documentos importantes.

  Scenario: Recibir una notificación de nuevo mensaje dentro de la app
    Given un usuario está navegando en la plataforma
    When recibe un nuevo mensaje en una de sus conversaciones
    Then aparece un indicador (badge) en el icono de "Mensajes" en menos de 2 segundos

  Scenario: Recibir una notificación por email si estoy desconectado
    Given un usuario ha estado desconectado de la plataforma por más de 2 minutos
    When recibe un nuevo mensaje
    Then se le envía un correo de notificación en los siguientes 5 minutos
    And el correo contiene un enlace para ir directamente a la conversación

  Scenario: Enviar un archivo permitido en el chat
    Given un usuario está en una conversación
    When adjunta un archivo PDF de menos de 10 MB
    And lo envía
    Then el archivo es visible en el historial del chat para ambos usuarios
    And se muestra una vista previa si es una imagen

  Scenario: Intentar enviar un archivo no permitido
    Given un usuario está en una conversación
    When intenta adjuntar un archivo ejecutable (.exe)
    Then el sistema bloquea el envío
    And muestra un mensaje de error indicando que el tipo de archivo no es compatible
