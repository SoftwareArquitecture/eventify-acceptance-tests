# Language: es
Feature: Mensajería Integrada
  Como usuario de la plataforma Eventify
  Quiero comunicarme con otros usuarios a través de un chat interno
  Para coordinar detalles de los eventos de forma eficiente.

Scenario: Iniciar una conversación desde el perfil de un organizador
  Given un anfitrión ha iniciado sesión y está viendo el perfil de un organizador
  When hace clic en el botón "Enviar Mensaje"
  Then el sistema debe abrir la interfaz del chat
  And la conversación con el organizador debe estar activa

Scenario: Ver la lista de conversaciones existentes
  Given un usuario con conversaciones activas ha iniciado sesión
  When navega a la sección de "Mensajes"
  Then debe ver una lista de todas sus conversaciones
  And las conversaciones deben estar ordenadas por el mensaje más reciente
