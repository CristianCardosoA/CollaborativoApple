# Gestión de Finanzas: Tu dinero, bajo control

**Plataforma:** iOS (Swift)  
**Autor:** Dana Gisel Reyes López  
**Región y Divisa:** México (`es_MX` / `$ MXN`)  
**Fecha:** 7 de octubre de 2026  

---

## 1. Descripción General del Proyecto

Aplicación móvil de finanzas personales diseñada para el mercado mexicano. Permite administrar ingresos, gastos, presupuestos, metas de ahorro y deudas mediante una interfaz ágil, moderna y optimizada.

El sistema funciona de manera **100% local** para garantizar la privacidad de la información. Incluye un módulo de **Escaneo Inteligente de Tickets con IA/OCR nativo** (*Vision Framework*) que procesa la fotografía de un comprobante de compra y extrae automáticamente el monto y concepto para registrar un gasto en segundos.

---

## 2. Reorganización de Pantallas (11 Vistas Clave)

Para optimizar la arquitectura del sistema y acelerar el desarrollo, las vistas se consolidaron en 11 pantallas distribuidas en 6 módulos funcionales:

| Módulo | # | Nombre de la Pantalla | Descripción / Función Técnica |
| :--- | :---: | :--- | :--- |
| **1. Dashboard** | 01 | Inicio (Dashboard) | Vista principal con balance global ($ MXN), resumen de presupuestos y acceso rápido a registro de gastos. |
| **2. Gastos & IA** | 02 | Lista de Gastos | Historial de egresos con barra de búsqueda, filtros por categoría y modal de detalle. |
| | 03 | Registrar / Editar Gasto | Formulario dinámico para capturar o editar gastos manualmente. |
| | 04 | Escáner IA de Tickets | Cámara interactiva (`VisionKit` / OCR) que detecta el ticket, extrae el monto/fecha y llena el formulario automáticamente. |
| **3. Ingresos** | 05 | Lista de Ingresos | Historial de entradas de dinero fijas o previas con sus métricas. |
| | 06 | Editar Ingreso | Formulario modal únicamente para corregir, ajustar montos o modificar las fechas y categorías de un ingreso existente. |
| **4. Presupuestos** | 07 | Control de Presupuestos | Vista unificada de límites de gasto por categoría con barras de progreso ($ gastado / $ disponible). |
| | 08 | Definir / Editar Presupuesto | Formulario modal para asignar o ajustar el tope máximo de una categoría. |
| **5. Metas de Ahorro** | 09 | Metas de Ahorro | Listado de objetivos con indicador de porcentaje acumulado y proyección. |
| | 10 | Detalle y Abonos a Meta | Consulta de meta, historial de aportaciones y formulario rápido para abonar. |
| **6. Deudas** | 11 | Control de Deudas | Listado de compromisos pendientes, abonos realizados y registro de pagos. |