# Propuesta de proyecto: DeckVault para iOS

**Asignatura:** Desarrollo de Aplicaciones iOS  
**Nombre del proyecto:** DeckVault para iOS  
**Tipo de proyecto:** Aplicación móvil nativa con arquitectura cliente-servidor  
**Plataforma:** iOS  
**Estado:** Propuesta inicial

## 1. Descripción del proyecto

DeckVault para iOS es una aplicación móvil nativa orientada a la consulta, organización y administración de colecciones personales de cartas del *Pokémon Trading Card Game* (TCG). El sistema permitirá a los usuarios registrarse, iniciar sesión, explorar un catálogo de cartas y llevar un inventario de las cartas que poseen, indicando su cantidad y estado de conservación.

El proyecto retoma el concepto de una aplicación previamente desarrollada para Android y lo adapta al ecosistema iOS. Su implementación incorporará una arquitectura **Model-View-ViewModel con Coordinators (MVVM-C)**, comunicación cliente-servidor y persistencia de datos en la nube.

Como requisito académico, **no se consumirán APIs de terceros para consultar la información del catálogo o gestionar las colecciones**. En su lugar, se diseñará e implementará una **API REST propia** mediante Firebase Cloud Functions y TypeScript, conectada a Cloud Firestore. Firebase Authentication se utilizará como servicio de identidad, dado que el uso de Firebase como infraestructura está permitido.

## 2. Planteamiento del problema

Los coleccionistas de cartas requieren herramientas que les permitan identificar las piezas de su colección, consultar información básica y mantener un registro actualizado de las cartas que poseen. Cuando este control se realiza mediante notas, hojas de cálculo o registros dispersos, pueden presentarse duplicidades, dificultades para localizar cartas y falta de visibilidad sobre el inventario personal.

DeckVault busca atender esta necesidad mediante una aplicación móvil que centralice la consulta del catálogo y la administración de la colección, con acceso autenticado y almacenamiento persistente.

## 3. Justificación

El desarrollo de DeckVault para iOS permitirá aplicar conocimientos de programación con Swift, construcción de interfaces mediante UIKit, Auto Layout, patrones arquitectónicos, protocolos, concurrencia, consumo de servicios web y manejo de errores.

Además, el requisito de crear una API propia amplía el alcance técnico del proyecto: será necesario definir recursos y endpoints REST, validar solicitudes, autenticar usuarios, aplicar reglas de autorización y gestionar la persistencia de datos. De esta forma, el proyecto integra el desarrollo móvil con fundamentos de backend y seguridad de aplicaciones.

## 4. Objetivo general

Desarrollar una aplicación móvil nativa para iOS que permita consultar un catálogo propio de cartas Pokémon TCG y administrar colecciones personales de forma segura, mediante Swift, UIKit, arquitectura MVVM-C y una API REST propia implementada con Firebase Cloud Functions y Cloud Firestore.

## 5. Objetivos específicos

1. Diseñar interfaces para autenticación, catálogo, detalle de cartas, colección personal y perfil de usuario utilizando UIKit y Auto Layout.
2. Implementar la arquitectura MVVM-C para separar la presentación, el estado de las vistas y los flujos de navegación.
3. Desarrollar una API REST propia con TypeScript y Firebase Cloud Functions para consultar cartas y administrar colecciones.
4. Crear y poblar una base de datos en Cloud Firestore con un catálogo inicial de cartas seleccionado y estructurado para el proyecto.
5. Incorporar registro e inicio de sesión mediante Firebase Authentication y verificar los tokens de identidad en los endpoints protegidos.
6. Implementar operaciones de alta, consulta, actualización y eliminación de cartas dentro de la colección personal de cada usuario.
7. Gestionar solicitudes asíncronas, estados de carga, respuestas vacías y errores de red o servidor con `URLSession` y `async/await`.
8. Realizar pruebas de los principales flujos de la aplicación y documentar los endpoints, la arquitectura y las decisiones de implementación.

## 6. Alcance del proyecto

### Funcionalidades incluidas en el producto mínimo viable (MVP)

- **Autenticación:** registro, inicio y cierre de sesión mediante correo electrónico y contraseña.
- **Catálogo:** listado de cartas disponibles en la base de datos propia, búsqueda por nombre y consulta de detalles.
- **Detalle de carta:** visualización de nombre, expansión, número, rareza, tipo e imagen cuando exista un recurso autorizado.
- **Colección personal:** incorporación de cartas, consulta de cartas registradas, modificación de cantidad y estado de conservación, y eliminación de registros.
- **Perfil:** consulta de datos básicos del usuario y estadísticas sencillas de su colección.
- **Experiencia de uso:** indicadores de carga, mensajes de error, estados vacíos y navegación organizada.


## 7. Arquitectura propuesta

La aplicación utilizará una arquitectura cliente-servidor con separación de responsabilidades:

```text
┌─────────────────────────────────────┐
│          DeckVault para iOS         │
│         Swift + UIKit + MVVM-C       │
│                                     │
│  Views → ViewModels → APIClient      │
│  Coordinators: navegación           │
└──────────────────┬──────────────────┘
                   │
          HTTPS / JSON / REST
       URLSession + async/await
                   │
┌──────────────────▼──────────────────┐
│             API propia              │
│    Firebase Cloud Functions (v2)    │
│          Node.js + TypeScript       │
│                                     │
│  Rutas, validación, autorización,   │
│  lógica de negocio y errores HTTP   │
└──────────────┬───────────┬──────────┘
               │           │
       ┌───────▼──────┐ ┌──▼──────────────────┐
       │ Cloud        │ │ Firebase           │
       │ Firestore    │ │ Authentication     │
       │              │ │                    │
       │ Catálogo y   │ │ Identidad y        │
       │ colecciones  │ │ verificación token │
       └──────────────┘ └─────────────────────┘
```

### 7.1 Responsabilidades de MVVM-C

- **Model:** representa cartas, expansiones, elementos de colección y respuestas de la API.
- **View:** muestra la interfaz con UIKit y comunica las acciones del usuario.
- **ViewModel:** prepara los datos para la interfaz, controla estados de carga y coordina las operaciones de negocio necesarias para cada pantalla.
- **Coordinator:** administra los flujos de navegación y evita concentrarlos en los controladores de vista.
- **APIClient y servicios:** realizan peticiones HTTP, procesan JSON y encapsulan los detalles de comunicación con el backend.

El patrón Coordinator se implementará como una decisión arquitectónica del proyecto utilizando las herramientas de navegación proporcionadas por UIKit.

## 8. Tecnologías y herramientas

| Componente | Tecnología | Propósito |
|---|---|---|
| Aplicación móvil | Swift | Lenguaje principal de desarrollo iOS |
| Interfaz | UIKit y Auto Layout | Pantallas y diseño adaptable |
| Arquitectura | MVVM-C | Separación de responsabilidades y navegación |
| Comunicación | URLSession, HTTPS y JSON | Consumo de la API REST propia |
| Concurrencia | Swift Concurrency (`async/await`) | Solicitudes asíncronas sin bloquear la interfaz |
| API backend | Firebase Cloud Functions (2.ª generación) | Ejecución de endpoints desarrollados para el proyecto |
| Lenguaje backend | TypeScript / Node.js | Implementación de la API y lógica de negocio |
| Base de datos | Cloud Firestore | Persistencia de catálogo y colecciones |
| Identidad | Firebase Authentication | Registro, inicio de sesión y emisión de tokens |
| Dependencias | Swift Package Manager | Gestión de paquetes del proyecto iOS |
| Pruebas locales | Firebase Emulator Suite | Validación del backend durante el desarrollo |
| Versionado | Git y GitHub | Control de cambios y documentación |

## 9. Diseño inicial de la API REST

Los endpoints siguientes son **propuestos** y se ajustarán durante la implementación. Se utilizará el prefijo lógico `/api/v1`.

| Método | Endpoint | Función | Acceso |
|---|---|---|---|
| `GET` | `/api/v1/cards` | Consultar cartas con paginación y filtros | Público o autenticado, según configuración final |
| `GET` | `/api/v1/cards/:id` | Consultar el detalle de una carta | Público o autenticado |
| `GET` | `/api/v1/sets` | Consultar expansiones registradas | Público o autenticado |
| `GET` | `/api/v1/me/collection` | Consultar la colección del usuario | Autenticado |
| `POST` | `/api/v1/me/collection` | Agregar una carta a la colección | Autenticado |
| `PATCH` | `/api/v1/me/collection/:cardId` | Actualizar cantidad o condición | Autenticado |
| `DELETE` | `/api/v1/me/collection/:cardId` | Eliminar una carta de la colección | Autenticado |
| `GET` | `/api/v1/me/profile` | Consultar el perfil | Autenticado |
| `GET` | `/api/v1/me/stats` | Consultar estadísticas básicas | Autenticado |

La búsqueda por nombre podrá resolverse mediante un parámetro de consulta, por ejemplo, `GET /api/v1/cards?name=Pikachu`. Su implementación deberá considerar las capacidades de consulta e indexación de Firestore.

### 9.1 Ejemplo de solicitud

```http
POST /api/v1/me/collection HTTP/1.1
Authorization: Bearer <FIREBASE_ID_TOKEN>
Content-Type: application/json

{
  "cardId": "base1-4",
  "quantity": 2,
  "condition": "Near Mint"
}
```

La API verificará el token y obtendrá el identificador del usuario a partir de este. No confiará en un `uid` enviado por el cliente para decidir a qué colección acceder.

### 9.2 Respuestas y manejo de errores

La API utilizará códigos HTTP coherentes con cada operación, por ejemplo:

- `200 OK`: consulta o actualización exitosa.
- `201 Created`: registro creado.
- `400 Bad Request`: parámetros inválidos.
- `401 Unauthorized`: token ausente o inválido.
- `403 Forbidden`: operación no autorizada.
- `404 Not Found`: recurso inexistente.
- `409 Conflict`: conflicto de negocio cuando corresponda.
- `500 Internal Server Error`: error interno del servidor.

Las respuestas de error seguirán una estructura JSON consistente para facilitar su presentación en la aplicación.

## 10. Modelo inicial de datos

Se propone la siguiente organización en Cloud Firestore:

```text
cards/{cardId}
  name
  setId
  number
  rarity
  types
  imagePath

sets/{setId}
  name
  releaseDate

users/{uid}
  displayName
  email

users/{uid}/collection/{cardId}
  quantity
  condition
  addedAt
```

El modelo podrá ampliarse conforme se definan los atributos definitivos de las cartas y las necesidades de consulta.

### 10.1 Origen del catálogo

El catálogo inicial se elaborará como un conjunto de datos propio del proyecto, por ejemplo, mediante un archivo `cards.json` con registros seleccionados y revisados. Un script de carga inicial incorporará estos datos a Firestore.

No se realizarán peticiones a servicios externos para obtener cartas durante el funcionamiento de la aplicación. Si se incluyen ilustraciones o imágenes oficiales, deberá revisarse que exista autorización o una base de uso adecuada; alternativamente, podrán emplearse recursos gráficos propios o marcadores de posición.

## 11. Requerimientos funcionales

| ID | Requerimiento |
|---|---|
| RF-01 | El sistema permitirá registrar una cuenta con correo electrónico y contraseña. |
| RF-02 | El sistema permitirá iniciar y cerrar sesión. |
| RF-03 | El sistema mostrará un catálogo de cartas almacenadas en la base de datos propia. |
| RF-04 | El usuario podrá buscar cartas por nombre. |
| RF-05 | El usuario podrá consultar los atributos de una carta. |
| RF-06 | El usuario autenticado podrá agregar cartas a su colección personal. |
| RF-07 | El usuario podrá consultar las cartas registradas en su colección. |
| RF-08 | El usuario podrá modificar la cantidad y condición de una carta de su colección. |
| RF-09 | El usuario podrá eliminar cartas de su colección. |
| RF-10 | El usuario podrá consultar su perfil y estadísticas básicas. |
| RF-11 | La aplicación mostrará indicadores de carga y mensajes ante errores o resultados vacíos. |
| RF-12 | El backend verificará la identidad del usuario antes de ejecutar operaciones protegidas. |

## 12. Requerimientos no funcionales

| ID | Categoría | Requerimiento |
|---|---|---|
| RNF-01 | Arquitectura | La aplicación iOS se organizará con MVVM-C y responsabilidades separadas. |
| RNF-02 | Seguridad | Toda comunicación con la API utilizará HTTPS. |
| RNF-03 | Seguridad | La API verificará tokens de Firebase Authentication y restringirá el acceso a los datos personales de cada usuario. |
| RNF-04 | Validación | El backend validará tipos, rangos y campos obligatorios de las solicitudes. |
| RNF-05 | Rendimiento | Las operaciones de red se ejecutarán de forma asíncrona, sin bloquear el hilo principal. |
| RNF-06 | Usabilidad | La aplicación ofrecerá retroalimentación durante cargas, errores y operaciones completadas. |
| RNF-07 | Mantenibilidad | Se utilizarán modelos, servicios, protocolos y componentes reutilizables. |
| RNF-08 | Escalabilidad | Las consultas de catálogo contemplarán paginación y filtros adecuados. |
| RNF-09 | Calidad | Se realizarán pruebas de los flujos principales y de la validación de los endpoints. |
| RNF-10 | Documentación | Se documentarán los endpoints, la estructura del proyecto y las instrucciones de ejecución. |

## 13. Seguridad y protección de datos

La aplicación empleará Firebase Authentication para autenticar usuarios. El cliente obtendrá un token de identidad y lo enviará a los endpoints protegidos mediante el encabezado `Authorization`.

La API utilizará el SDK de administración de Firebase para verificar dicho token y recuperar el `uid` autenticado. Las operaciones sobre colecciones se realizarán exclusivamente dentro del espacio de datos correspondiente a ese identificador.

El acceso de la aplicación a los datos del catálogo y las colecciones se canalizará a través de la API propia, sin consultas directas desde las pantallas iOS a Firestore. Se configurarán reglas de seguridad para impedir accesos directos no autorizados desde SDK cliente; adicionalmente, la API deberá aplicar sus propias validaciones y autorizaciones, ya que el SDK de administración opera con privilegios de servidor.

## 14. Manejo de concurrencia, errores y estados de carga

Las solicitudes de red se implementarán con `URLSession` y `async/await`. Los ViewModels gestionarán estados como `loading`, `loaded`, `empty` y `error`, que las vistas reflejarán mediante indicadores y mensajes comprensibles.

Se distinguirán errores de conectividad, autenticación, validación, recursos inexistentes y fallos internos. Las tareas de interfaz se actualizarán en el contexto apropiado del hilo principal y se contemplará la cancelación de solicitudes cuando corresponda. Los reintentos automáticos se limitarán a fallos transitorios y operaciones seguras para repetir.

## 15. Pantallas propuestas

1. **Bienvenida / inicio de sesión:** acceso con credenciales y opción de registro.
2. **Registro:** creación de cuenta.
3. **Catálogo:** listado de cartas, búsqueda y navegación al detalle.
4. **Detalle de carta:** atributos de la carta y acción para agregarla a la colección.
5. **Mi colección:** listado de cartas del usuario y controles para editar o eliminar registros.
6. **Perfil:** información básica de la cuenta, estadísticas y cierre de sesión.

La navegación se coordinará mediante flujos de autenticación y contenido principal, con `UINavigationController` y, si resulta conveniente, `UITabBarController`.

## 16. Estructura preliminar del repositorio

```text
DeckVault-iOS/
├── iOS/
│   └── DeckVault/
│       ├── App/
│       ├── Coordinators/
│       ├── Models/
│       ├── Features/
│       │   ├── Authentication/
│       │   ├── Catalog/
│       │   ├── CardDetail/
│       │   ├── Collection/
│       │   └── Profile/
│       ├── Networking/
│       │   ├── APIClient.swift
│       │   ├── APIEndpoint.swift
│       │   └── APIError.swift
│       ├── Services/
│       ├── Components/
│       └── Resources/
├── backend/
│   ├── functions/
│   │   └── src/
│   │       ├── index.ts
│   │       ├── routes/
│   │       ├── controllers/
│   │       ├── services/
│   │       ├── middleware/
│   │       └── models/
│   ├── seed/
│   │   └── cards.json
│   ├── firestore.rules
│   └── firebase.json
├── docs/
│   ├── propuesta.md
│   ├── arquitectura.md
│   └── api.md
├── .gitignore
└── README.md
```

La estructura es orientativa y podrá adaptarse a la organización real del proyecto de Xcode y de Firebase.

## 17. Etapas de desarrollo

| Etapa | Actividades | Entregable |
|---|---|---|
| 1. Análisis y diseño | Delimitar MVP, definir pantallas, modelos y contratos de API | Requerimientos y diseño inicial |
| 2. Backend y datos | Configurar Firebase, crear catálogo inicial, implementar endpoints y validaciones | API funcional y base de datos |
| 3. Estructura iOS | Configurar proyecto, MVVM-C, navegación, modelos y cliente HTTP | Base técnica de la aplicación |
| 4. Funcionalidades | Implementar autenticación, catálogo, detalle, colección y perfil | MVP integrado |
| 5. Calidad | Probar flujos, manejar errores y mejorar experiencia de usuario | Versión validada |
| 6. Entrega | Documentar instalación, API y arquitectura; preparar demostración | Repositorio y presentación final |

Las fechas y duración de cada etapa se establecerán según el calendario y la rúbrica del curso.

## 18. Criterios de aceptación del MVP

Se considerará completado el producto mínimo viable cuando:

- Un usuario pueda registrarse, iniciar sesión y cerrar sesión.
- La aplicación muestre información de un catálogo almacenado en Firestore y servido exclusivamente por la API propia.
- Sea posible buscar y consultar el detalle de una carta.
- Un usuario autenticado pueda agregar, consultar, actualizar y eliminar cartas de su colección.
- Los datos de una colección no puedan consultarse ni modificarse desde la sesión de otro usuario.
- Las operaciones de red muestren estados de carga y errores comprensibles.
- Los endpoints principales y las instrucciones para ejecutar el proyecto estén documentados.

## 19. Consideraciones técnicas y restricciones

- **API propia:** la información de las cartas y las operaciones de colección deberán exponerse mediante endpoints implementados para el proyecto. No se consumirán APIs externas de catálogos.
- **Firebase permitido:** Firebase se utilizará como infraestructura administrada, no como sustituto del desarrollo de la lógica de la API.
- **Costos:** el despliegue de Cloud Functions requiere habilitar el plan Blaze de Firebase, aunque pueden existir cuotas sin costo. Las alertas presupuestarias no establecen un límite automático de gasto.
- **Desarrollo local:** se priorizará Firebase Emulator Suite para probar funciones y persistencia durante la implementación.
- **Contenido gráfico:** la utilización de imágenes, marcas y otros materiales de Pokémon deberá respetar las condiciones de uso aplicables.
- **Alcance:** el tamaño del catálogo inicial y los detalles de las estadísticas se ajustarán al tiempo disponible para la asignatura.

## 20. Resultados esperados

Se espera obtener una aplicación iOS funcional que permita administrar colecciones personales de cartas Pokémon TCG y que demuestre la integración entre un cliente móvil nativo y una API REST propia. El proyecto deberá evidenciar el uso de MVVM-C, comunicación HTTPS, concurrencia con Swift, manejo de errores, autenticación, persistencia en la nube y control de acceso por usuario.

Además de la aplicación, se entregará un repositorio organizado con código fuente, datos iniciales del catálogo, documentación de la API e instrucciones básicas de configuración y ejecución.

## 21. Referencias técnicas de consulta

- Apple Developer Documentation. [UIKit](https://developer.apple.com/documentation/uikit).
- Apple Developer Documentation. [URLSession](https://developer.apple.com/documentation/foundation/urlsession).
- Apple Developer Documentation. [Swift Package Manager](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app).
- Firebase Documentation. [HTTP functions](https://firebase.google.com/docs/functions/http-events).
- Firebase Documentation. [Verify ID tokens](https://firebase.google.com/docs/auth/admin/verify-id-tokens).
- Firebase Documentation. [Cloud Firestore](https://firebase.google.com/docs/firestore).
- Firebase Documentation. [Local Emulator Suite](https://firebase.google.com/docs/emulator-suite).
- Firebase Documentation. [Pricing plans](https://firebase.google.com/docs/projects/billing/firebase-pricing-plans).

---

**Nota:** Esta propuesta establece el alcance técnico inicial. Los contratos definitivos de la API, el esquema de datos y los criterios de evaluación se concretarán antes de la implementación.
