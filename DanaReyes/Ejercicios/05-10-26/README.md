# Gestión de Finanzas: Tu dinero, bajo control

**Plataforma:** iOS (Swift)  
**Autor:** Dana Gisel Reyes López  
**Región y Divisa:** México (`es_MX` / `$ MXN`)  
**Fecha:** 5 de octubre de 2026  



## 1. Descripción General del Proyecto

Es una aplicación móvil de finanzas personales diseñada específicamente para el mercado mexicano. Permite a los usuarios administrar sus ingresos, gastos, presupuestos por categoría, metas de ahorro y control de deudas mediante una interfaz intuitiva, moderna y ágil.

La arquitectura del sistema está concebida para funcionar de manera **100% local**, garantizando la privacidad de la información sin depender de servicios en la nube, autenticación de usuarios ni conexión a APIs externas.



## 2. Pantallas y Módulos Funcionales (35 Vistas)

Para cumplir con los estándares de diseño de experiencia de usuario (UX) y cubrir todos los flujos operacionales del sistema, la aplicación está estructurada en 35 pantallas distribuidas en 7 módulos funcionales:

| Módulo | # | Nombre de la Pantalla | Descripción / Función Técnica |
| :--- | :---: | :--- | :--- |
| **1. Dashboard** | 01 | Inicio (Dashboard) | Vista principal con balance global ($ MXN), acceso rápido a registros y resumen general. |
| | 02 | Resumen de Movimientos | Listado amplio con los últimos ingresos y gastos registrados. |
| **2. Gastos** | 03 | Lista de Gastos | Historial completo de egresos ordenado cronológicamente. |
| | 04 | Filtros de Gastos | Búsqueda por palabra clave, rango de fechas o categoría específica. |
| | 05 | Detalle del Gasto | Vista detallada con cantidad, fecha, categoría, método de pago y notas. |
| | 06 | Registrar Gasto | Formulario con validación en tiempo real para capturar un nuevo egreso. |
| | 07 | Editar Gasto | Modificación de los parámetros de un egreso existente. |
| | 08 | Catálogo de Categorías | Administración del listado de categorías de gastos (Comida, Transporte, etc.). |
| | 09 | Crear / Editar Categoría | Formulario para personalizar o añadir nuevas categorías de gasto. |
| **3. Ingresos** | 10 | Lista de Ingresos | Historial completo de entradas de dinero. |
| | 11 | Filtros de Ingresos | Búsqueda y filtrado de ingresos por periodo o categoría. |
| | 12 | Detalle del Ingreso | Consulta de información individualizada de un ingreso específico. |
| | 13 | Registrar Ingreso | Formulario de captura para nuevos ingresos. |
| | 14 | Editar Ingreso | Corregir o actualizar la información de un ingreso previo. |
| | 15 | Catálogo de Categorías | Administración de categorías de ingresos (Trabajo, Becas, Ventas, etc.). |
| | 16 | Crear / Editar Categoría | Formulario para agregar o modificar categorías de ingreso. |
| **4. Presupuestos** | 17 | General de Presupuestos | Vista global de límites de gasto establecidos por periodo. |
| | 18 | Crear Presupuesto | Definición de límites máximos de gasto aplicados a categorías. |
| | 19 | Detalle de Presupuesto | Monitoreo visual de uso ($ gastado / $ disponible) mediante barras de progreso. |
| | 20 | Editar Presupuesto | Ajuste de los montos límites asignados a cada categoría. |
| **5. Metas de Ahorro** | 21 | Lista de Metas | Vista de objetivos financieros (Viajes, Fondo de emergencia, Electrónicos). |
| | 22 | Crear Meta | Registro de objetivo con monto meta, saldo inicial y fecha compromiso. |
| | 23 | Detalle de Meta | Indicador visual de porcentaje acumulado y proyección de cumplimiento. |
| | 24 | Registrar Abono | Formulario para abonar fondos a una meta de ahorro. |
| | 25 | Editar Meta | Modificación de los parámetros u objetivos de la meta. |
| | 26 | Historial de Abonos | Registro cronológico de todas las aportaciones aplicadas a la meta. |
| **6. Deudas** | 27 | Lista de Deudas | Listado de pasivos y compromisos financieros pendientes. |
| | 28 | Registrar Deuda | Formulario para dar de alta una deuda (Monto original, acreedor, pago mensual). |
| | 29 | Detalle de Deuda | Consulta de saldo pendiente, cuotas restantes e historial de pagos. |
| | 30 | Editar Deuda | Modificación de los términos o montos de la deuda. |
| | 31 | Registrar Pago | Formulario para abonar a una deuda y descontar automáticamente del saldo. |
| | 32 | Historial de Pagos | Registro detallado de los abonos aplicados a la deuda. |
| **7. Perfil Local** | 33 | Perfil del Usuario | Vista estática con resumen de actividad y métricas de uso de la app. |
| | 34 | Editar Perfil | Personalización del nombre del usuario dentro de la app. |
| | 35 | Acerca de la App | Información técnica del proyecto, versión y créditos de desarrollo. |