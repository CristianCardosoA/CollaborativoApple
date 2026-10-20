# Finalgochi 

**Finalgochi** es una aplicación móvil nativa para iOS inspirada en la nostalgia de las clásicas mascotas virtuales (Tamagotchi) y el icónico universo de los RPGs fantásticos (estilo Final Fantasy). 

El objetivo del proyecto es ofrecer una experiencia ligera, interactiva y muy cuidada visualmente, ideal para demostrar habilidades de desarrollo  y gestión de estados locales en iOS.

---

## Características Principales

* **Mascotas Icónicas:** Elige y cuida a tu criatura favorita (Moogle, Chocobo o Cactilio).
* **Sistema de Cuidado en Tiempo Real:** Gestiona barras dinámicas de Hambre, Felicidad y Sueño que evolucionan de forma local.
* **Interfaz Nostálgica (UI/UX):** Menús inspirados en las clásicas cajas de comandos de los RPGs de 16 y 32 bits, adaptados a un diseño moderno en modo oscuro con SwiftUI.
* **Minijuegos y Recompensas:** Gana monedas (Gil) jugando con tu criatura para desbloquear accesorios y sombreros en la tienda.
* **Notificaciones Locales:** Alertas personalizadas en tu iPhone cuando tu mascota requiere atención urgente (ej. *"¡Kupo! Tengo hambre"*).

---

## Stack Tecnológico (iOS)

* **Lenguaje:** Swift 6
* **Persistencia de Datos:** UserDefaults / SwiftData (para guardar el estado de la mascota en segundo plano).
* **Gestión de Tiempo:** Timers nativos y Combine para la degradación de estadísticas en tiempo real.
* **Feedback Físico:** CoreHaptics para la retroalimentación táctil en los menús.

---

## Estructura de Vistas (Flujo de la App)

La aplicación consta de un flujo limpio de 10 pantallas principales:
1. **Splash Screen:** Pantalla de carga con logotipo de cristal mágico.
2. **Character Select:** Selección inicial entre Moogle, Chocobo y Cactilio.
3. **Home View:** Pantalla principal del hábitat con la mascota y barras de estado.
4. **Action Menu:** Ventana de comandos clásica (Alimentar, Jugar, Dormir, Estado).
5. **Inventory / Feeding View:** Selección de alimentos y pociones para el cuidado.
6. **Minigame View:** Minijuego rápido de reflejos para subir la felicidad y ganar Gil.
7. **Character Sheet:** Hoja de estadísticas, nivel y experiencia de la criatura.
8. **Shop View:** Tienda de accesorios y sombreros personalizables.
9. **Settings View:** Ajustes de audio, notificaciones y hápticos.
10. **Game Over View:** Pantalla humorística si la mascota es descuidada por completo.

---

