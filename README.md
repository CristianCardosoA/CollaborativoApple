\#Asistente de Farmeo y Ahorro de juegos gacha



1\. Presentación del Proyecto



Nombre del Proyecto: SparkPlanner (Asistente de Ahorro y Farmeo para Juegos de Ritmo y Gacha)



Objetivo Principal: Una aplicación para iOS diseñada para ayudar a los jugadores a gestionar sus recursos virtuales (gemas, diamantes, tiradas), calcular si les alcanzará para su personaje o carta deseada (spark / pity) y organizar sus misiones diarias de farmeo entre múltiples juegos.



Problema que resuelve: Evita que el usuario tenga que hacer cuentas a mano o usar tablas complejas de Excel para saber cuántas gemas puede reunir antes de que termine un evento o banner especial.



Público Objetivo: Jugadores de títulos como Project Sekai, Ensemble Stars!!, BanG Dream!, Genshin Impact, entre otros.



\---



2\. Funcionalidades Principales



1\. Gestión de Perfiles por Juego: Permite llevar el registro de varios juegos de ritmo/gacha al mismo tiempo, manejando el saldo actual de gemas de cada uno.



2\. Planificador de Metas de Ahorro: Configuración de objetivos para cartas o banners futuros (cantidad de gemas necesarias, fecha límite y porcentaje de ahorro alcanzado).



3\. Calculadora de Farmeo Pendiente: Cálculo rápido de gemas acumulables por contenido no completado (canciones jugadas con Full Combo/Full Perfect, historias de personajes leídas, logros pendientes).



4\. Lista de Rutinas Diarias (Daily Checklist): Registro de misiones del día por juego para asegurar que no se pierdan recompensas gratuitas.



5\. Simulador de Tiradas y Probabilidades: Herramienta visual que calcula las probabilidades matemáticas de conseguir la carta deseada con las gemas actuales.



\---



3\. Arquitectura de Pantallas y ViewControllers (14 Vistas)



La navegación principal estará dividida en 5 Pestañas, y cada pestaña utilizará un NavigationController para entrar al detalle de cada sección.



\[Pestaña 1]: Mis juegos y metas               



\[Pestaña 2]: Diarias y farmeo



\[Pestaña 3]: Calculadora de eventos



\[Pestaña 4]: Simulador de Tiradas       



\[Pestaña 5]: Perfil y ajustes



\---



Desgloce:



Pestaña 1: Mis Juegos y Metas de Ahorro



1\. Muestra una lista con tarjetas visuales de los juegos que sigue el usuario, mostrando la imagen del juego, el saldo actual de gemas y una barra con el progreso general de ahorro.





2\. Muestra la información del juego elegido: saldo de gemas, meta activa principal y accesos rápidos a sus calculadoras y rutinas.





3\. Muestra la ilustración de la carta o banner al que se aspira, el total de gemas requeridas para asegurar la carta (pity/spark), días restantes y una barra circular de porcentaje completado.





4\. Muestra un formulario sencillo con campos para seleccionar la carta/banner, ingresar la cantidad de gemas necesarias, la fecha en que llega el banner y subir una imagen personalizada.





\---



Pestaña 2: Misiones Diarias y Farmeo



5\. Muestra una lista con casillas para marcar las misiones del día (ej. Login diario, jugar 3 canciones, ver show virtual). Al marcar todas las casillas de un juego, la tarjeta se ilumina como "Completada".





6\. Muestra una pantalla para agregar nuevas misiones o borrar las que ya no aplican para un juego en particular.







\---



Pestaña 3: Calculadora de Farmeo y Eventos



7\. Muestra los campos interactivos donde el usuario indica cuántas canciones le faltan por sacar Full Combo o Full Perfect (dividido por dificultades: Expert, Master, etc) o cuantas historias de personajes no ha leído. La pantalla calcula automáticamente cuántas gemas tiene disponibles para farmear.





8\. Muestra una línea de tiempo con los banners futuros, sus fechas de inicio/fin y la prioridad asignada por el usuario (Baja, Media, Alta).



\---



\### Pestaña 4: Simulación y Bitácora



9\. Muestra un simulador interactivo donde pones tu saldo actual y realiza tiradas ficticias para mostrarte tus posibilidades o cuántas tiradas exactas te faltan para llegar al spark.





10\. Muestra un registro histórico de banners pasados donde el usuario anota cuántas gemas gastó y si obtuvo o no la carta que quería.







\---



Pestaña 5: Perfil, Estadísticas y Configuración



11\. Muestra estadísticas generales: total de gemas ahorradas a lo largo del tiempo, número de metas alcanzadas con éxito y medallas/logros de uso de la app.





12\. Muestra opciones para activar/desactivar notificaciones, cambiar el tema visual (colores pastel o modo oscuro) y respaldar la información.





13\. Muestra una pantalla de presentación que aparece la primera vez que se abre la app, explicando brevemente sus funciones principales.





