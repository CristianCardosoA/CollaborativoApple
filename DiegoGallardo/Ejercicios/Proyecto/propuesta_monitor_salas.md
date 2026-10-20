# Propuesta: Monitor de Salas para iPhone con UIKit



## 1\. Qué voy a construir

Voy a desarrollar una app para iPhone, en Swift con UIKit y dentro de Xcode, que muestra en tiempo real el estado ambiental de tres salas: temperatura, humedad y presión.

La idea sale de mi proyecto de sensores en Rocky Linux y del repositorio *ModeloDigitalSensor*, donde ya tengo nodos ESP32-C3 con sensores BME280 y DHT22 que publican sus lecturas en la red local. En esta clase voy a tomar esos datos y llevarlos a una app móvil, de modo que cualquiera pueda revisar cómo está cada sala desde su celular.

## 2\. Por qué este proyecto

* Une hardware, datos y diseño de interfaz, que son las áreas en las que quiero crecer.
* Tiene un problema real: saber si una sala está dentro de un rango de temperatura y humedad adecuado.
* Me permite practicar UIKit a fondo: navegación, listas, consumo de APIs y gráficas.
* Puedo presentarlo como parte de mi portafolio de diseño de producto.

## 3\. Las tres salas

Voy a modelar tres salas, cada una con un nodo distinto:

|Sala|Nodo|Sensores|
|-|-|-|
|Sala 1|`bme280\_esp32c3\_01`|BME280 (temperatura, humedad, presión)|
|Sala 2|`dht22\_esp32c3\_01`|DHT22 (temperatura, humedad)|
|Sala 3|`supermini\_esp32c3\_01`|BME280 y DHT22, para comparar lecturas|

Si en el salón no hay hardware disponible, cada sala va a funcionar en modo simulación. La app generará datos dentro de rangos realistas con el mismo formato que envía el firmware, así el proyecto se puede terminar sin depender de los nodos físicos.

## 4\. La app para celular

Esta es la parte principal del proyecto. Quiero que la app sea clara y rápida de usar con una sola mano.

### Pantalla 1: Lista de salas

Es la pantalla de inicio. Muestra una tarjeta por sala con:

* Nombre de la sala.
* Temperatura y humedad actuales.
* Un indicador de estado: **Normal** (verde), **Alerta** (rojo) o **Sin lectura** (gris).
* Hora de la última lectura.

Al tocar una tarjeta, se abre el detalle de esa sala.

### Pantalla 2: Detalle de sala

* Valores en tiempo real, con la presión cuando la sala tiene BME280.
* Señal WiFi del nodo y su dirección IP.
* Un resumen de las últimas 24 horas.
* Acceso directo al historial.

### Pantalla 3: Historial

* Gráficas de temperatura, humedad y presión.
* Selector de rango: última hora, 24 horas o 7 días.
* Opción de compartir el historial en CSV.

### Pantalla 4: Alertas

* Lista de alertas activas y resueltas, con la hora en que comenzaron.
* Notificaciones locales cuando una sala entra en alerta.

### Pantalla 5: Configuración

* Umbrales de temperatura, humedad y presión, editables.
* Dirección IP de cada nodo.
* Interruptor para activar o pausar el modo simulación.

### Cómo voy a construirla

* **Navegación:** `UITabBarController` con cuatro pestañas (Salas, Alertas, Historial y Configuración). Cada pestaña tiene su `UINavigationController`.
* **Lista de salas:** `UITableView` con celdas personalizadas. Actualizo los datos cada pocos segundos.
* **Diseño:** interfaz programática, con Auto Layout, para entender cada componente. Diseño primero en Figma y luego lo traduzco a código.
* **Modo oscuro y accesibilidad:** colores semánticos, Dynamic Type y etiquetas para VoiceOver.

## 5\. Proceso de desarrollo

**Fase 1: Análisis.** Estudio el formato de los datos del firmware y defino las historias de usuario. Por ejemplo: "Como responsable de una sala, quiero saber si la temperatura sale del rango permitido".

**Fase 2: Diseño.** Hago wireframes y un prototipo en Figma de las cinco pantallas. Reviso contraste y tamaños de texto antes de programar.

**Fase 3: Estructura.** Creo el proyecto en Xcode, los modelos (`Sala`, `Lectura`, `Umbral`, `Alerta`) y el servicio que consulta a los nodos. Armo la navegación y las pantallas vacías.

**Fase 4: Datos y lógica.** Conecto la simulación y, después, un nodo real. Programo la lógica de estado: normal, alerta o sin lectura.

**Fase 5: Funciones avanzadas.** Agrego las gráficas del historial, las notificaciones y la exportación a CSV.

**Fase 6: Pruebas y entrega.** Pruebo en el simulador y en mi iPhone. Simulo la caída de un nodo para ver cómo responde la app. Escribo el README y preparo una presentación de cinco minutos.

## 6\. Qué voy a entregar

* Proyecto de Xcode `MonitorSalas`.
* Prototipo en Figma con las pantallas principales.
* `README.md` con instrucciones para correrlo en simulación y con nodos reales.
* CSV de ejemplo con lecturas de las tres salas.
* Presentación corta con demostración en vivo.

## 7\. Características técnicas

* **Plataforma:** iOS 16 o superior, UIKit y Swift Package Manager.
* **Comunicación:** HTTP local hacia los nodos. Necesito una excepción de App Transport Security porque el firmware no usa HTTPS.
* **Arquitectura:** MVVM. Un protocolo común (`FuenteDeLecturas`) permite cambiar entre simulación y nodo real sin tocar la interfaz.
* **Persistencia:** `UserDefaults` para la configuración e historial en Core Data o JSON.
* **Gráficas:** DGCharts, instalada con Swift Package Manager.
* **Pruebas:** al menos una prueba unitaria para la lógica de umbrales.

### Umbrales de referencia

Tomados del firmware (`config.h`):

|Variable|Mínimo|Máximo|
|-|-|-|
|Temperatura|10 °C|30 °C|
|Humedad|15 %|65 %|
|Presión|700 hPa|1050 hPa|



