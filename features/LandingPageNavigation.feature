# Language: es
Feature: Navegación y Propuesta de Valor en Landing Page

  Como visitante de la web de Eventify,
  Quiero una navegación clara y entender la propuesta de valor rápidamente,
  Para decidir si la plataforma es relevante para mí.

  Scenario: Navegación fluida entre secciones
    Given un visitante se encuentra en la landing page
    When hace clic en el enlace del menú "Funcionalidades"
    Then la página se debe desplazar suavemente hasta la sección de funcionalidades
    And el enlace "Funcionalidades" debe quedar marcado como activo

  Scenario: Propuesta de valor es clara y visible
    Given un visitante carga la landing page por primera vez
    When observa la sección principal sin hacer scroll
    Then debe ver un título claro que resuma la propuesta de valor en menos de 20 palabras
    And debe haber un botón visible de "Llamada a la Acción" (CTA) como "Regístrate" o "Acceder"
