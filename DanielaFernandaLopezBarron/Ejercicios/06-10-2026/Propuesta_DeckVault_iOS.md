# Propuesta de proyecto: DeckVault para iOS

**Asignatura:** Desarrollo de Aplicaciones iOS  
**Nombre del proyecto:** DeckVault para iOS  
**Tipo de proyecto:** Aplicación móvil nativa con arquitectura cliente-servidor  
**Plataforma:** iOS  
**Estado:** Propuesta técnica actualizada, octubre de 2026

## 1. Descripción del proyecto

DeckVault para iOS es una aplicación móvil nativa para consultar, organizar y administrar colecciones personales de cartas de **Pokémon Trading Card Game (TCG)**. Los usuarios podrán crear una cuenta, iniciar sesión, explorar un catálogo propio y registrar las cartas que poseen, indicando cantidad y estado de conservación.

El proyecto adapta a iOS el concepto de una aplicación desarrollada previamente para Android. Se implementará con **Swift, UIKit y arquitectura Model-View-ViewModel con Coordinators (MVVM-C)**. La aplicación se comunicará con una **API REST propia desarrollada en Python con Flask**, conectada a **PostgreSQL**. El backend se alojará en una máquina virtual **Debian 13 ARM64**, ejecutada con **QEMU** en una **MacBook**.

## 2. Planteamiento del problema

Los coleccionistas necesitan identificar cartas, consultar sus atributos y conocer con precisión cuáles poseen. Los registros dispersos en notas u hojas de cálculo dificultan la búsqueda, producen duplicidades y reducen la visibilidad del inventario. DeckVault centralizará el catálogo y las colecciones personales, con acceso autenticado y persistencia en un servidor propio.

## 3. Objetivo general

Desarrollar una aplicación móvil nativa para iOS que permita consultar un catálogo propio de cartas Pokémon TCG y administrar colecciones personales de forma segura, mediante Swift, UIKit, arquitectura MVVM-C y una API REST propia implementada con Python y Flask, conectada a PostgreSQL y alojada en Debian 13 ARM64 virtualizado con QEMU.

## 4. Objetivos específicos

1. Diseñar interfaces de autenticación, catálogo, detalle de cartas, colección y perfil con UIKit y Auto Layout.
2. Implementar MVVM-C para separar modelos, presentación, estado y navegación.
3. Desarrollar una API REST propia con Flask para autenticación, consulta del catálogo y administración de colecciones.
4. Diseñar y poblar PostgreSQL con un catálogo inicial de cartas y expansiones.
5. Implementar registro, inicio y cierre de sesión con autenticación propia y almacenamiento seguro de contraseñas.
6. Permitir crear, consultar, modificar y eliminar registros de cartas de la colección personal.
7. Consumir la API mediante `URLSession` y `async/await`, gestionando carga, errores y respuestas vacías.
8. Configurar la comunicación de red entre el cliente iOS y Debian dentro de QEMU.
9. Probar los flujos principales y documentar arquitectura, endpoints, instalación y ejecución.

## 5. Alcance del proyecto

### Funcionalidades del producto mínimo viable (MVP)

- **Autenticación:** registro, inicio y cierre de sesión con correo y contraseña.
- **Catálogo:** consulta paginada de cartas almacenadas en PostgreSQL, búsqueda por nombre y detalle.
- **Detalle:** nombre, expansión, número, rareza, y tipo.
- **Colección:** agregar cartas, consultar inventario, modificar cantidad y eliminar registros.
- **Perfil:** datos básicos del usuario y estadísticas simples de la colección.
- **Experiencia:** indicadores de carga, mensajes de error, estados vacíos y navegación consistente.

## 6. Arquitectura propuesta

```text
┌──────────────────────────────────────────────┐
│ DeckVault iOS                                │
│ Swift + UIKit + MVVM-C                        │
│ Views ↔ ViewModels → Services → APIClient     │
│ Coordinators: navegación                     │
└─────────────────────┬────────────────────────┘
                      │ URLSession / JSON / REST
                      │ HTTPS cuando se configure TLS
              Red local (Wi-Fi)
                      │
┌─────────────────────▼────────────────────────┐
│ MacBook (macOS)                              │
│ QEMU: redireccionamiento de puertos o red    │
│ accesible para el dispositivo cliente        │
│  ┌────────────────────────────────────────┐  │
│  │ Debian 13 ARM64                       │  │
│  │ API Flask: rutas, validación,          │  │
│  │ autenticación y autorización           │  │
│  │                 │                      │  │
│  │            PostgreSQL                 │  │
│  │     usuarios, cartas, colecciones      │  │
│  └────────────────────────────────────────┘  │
└──────────────────────────────────────────────┘
```

### 6.1 Responsabilidades de MVVM-C

- **Model:** estructuras `Codable` para cartas, expansiones, usuario, colección y respuestas JSON.
- **View:** pantallas UIKit y captura de acciones del usuario.
- **ViewModel:** preparación de datos, estados `loading/loaded/empty/error` y operaciones para cada pantalla.
- **Coordinator:** flujos de autenticación y navegación principal mediante `UINavigationController` y, si procede, `UITabBarController`.
- **Services y APIClient:** construcción de solicitudes, serialización, sesión y tratamiento de errores.

## 7. Tecnologías y herramientas

| Componente | Tecnología | Propósito |
|---|---|---|
| Aplicación móvil | Swift | Desarrollo nativo iOS |
| Interfaz | UIKit y Auto Layout | Pantallas adaptables |
| Arquitectura | MVVM-C | Separación de responsabilidades |
| Navegación | Coordinator | Gestión de flujos |
| Comunicación | `URLSession`, REST, JSON | Consumo de API propia |
| Concurrencia | Swift `async/await` | Solicitudes asíncronas |
| Backend | Python y Flask | Endpoints y lógica de negocio |
| Base de datos | PostgreSQL | Persistencia relacional |
| Servidor | Debian 13 ARM64 | Ejecución de backend y base de datos |
| Virtualización | QEMU | Máquina virtual en Mac |
| Anfitrión | MacBook | Infraestructura física local |
| Control de versiones | Git y GitHub | Historial y colaboración |
| Pruebas | XCTest y pruebas HTTP locales | Validación del sistema |

Para el backend se usarán únicamente las dependencias necesarias, documentadas y aprobadas para Flask y el acceso a PostgreSQL.

## 8. Diseño inicial de la API REST

Los endpoints propuestos usarán el prefijo `/api/v1`. Su implementación y formato definitivo se concretarán antes de integrar el cliente.

| Método | Endpoint | Función | Acceso |
|---|---|---|---|
| `POST` | `/api/v1/auth/register` | Registrar usuario | Público |
| `POST` | `/api/v1/auth/login` | Autenticar y abrir sesión | Público |
| `POST` | `/api/v1/auth/logout` | Invalidar sesión o credencial activa | Autenticado |
| `GET` | `/api/v1/cards` | Listar cartas con filtros y paginación | Público o autenticado |
| `GET` | `/api/v1/cards/<id>` | Consultar detalle de carta | Público o autenticado |
| `GET` | `/api/v1/sets` | Listar expansiones | Público o autenticado |
| `GET` | `/api/v1/me/collection` | Consultar colección propia | Autenticado |
| `POST` | `/api/v1/me/collection` | Agregar carta | Autenticado |
| `PATCH` | `/api/v1/me/collection/<card_id>` | Modificar cantidad | Autenticado |
| `DELETE` | `/api/v1/me/collection/<card_id>` | Eliminar registro | Autenticado |
| `GET` | `/api/v1/me/profile` | Consultar perfil | Autenticado |
| `GET` | `/api/v1/me/stats` | Consultar estadísticas | Autenticado |
| `GET` | `/api/health/db` | Comprobar conectividad de base de datos | Diagnóstico, restringir en producción |

Ejemplo de búsqueda: `GET /api/v1/cards?name=Pikachu&page=1&limit=20`.

### 8.1 Ejemplo de solicitud

```http
POST /api/v1/me/collection HTTP/1.1
Authorization: Bearer <TOKEN_DE_SESION_PROPIO>
Content-Type: application/json

{
  "cardId": "base1-4",
  "quantity": 2,
  "condition": "Near Mint"
}
```

El backend obtendrá el identificador del usuario a partir de la sesión autenticada, nunca de un identificador de usuario suministrado por el cliente. El mecanismo concreto de token o sesión se definirá e implementará en el backend, sin usar Firebase ni emitir tokens ficticios.

### 8.2 Respuestas y manejo de errores

Se utilizarán códigos HTTP coherentes: `200 OK`, `201 Created`, `400 Bad Request`, `401 Unauthorized`, `403 Forbidden`, `404 Not Found`, `409 Conflict` y `500 Internal Server Error`. Las respuestas de error tendrán un esquema JSON uniforme, sin revelar trazas internas ni secretos.

## 9. Modelo inicial de datos

PostgreSQL almacenará la información en tablas relacionadas:

```text
users
  id (PK), display_name, email (UNIQUE), password_hash,
  created_at

sets
  id (PK), name, release_date

cards
  id (PK), set_id (FK → sets.id), name, number,
  rarity, types, image_path

collection_items
  id (PK), user_id (FK → users.id),
  card_id (FK → cards.id), quantity, condition, added_at,
  UNIQUE (user_id, card_id)

sessions (si se eligen sesiones persistentes revocables)
  id (PK), user_id (FK → users.id), token_hash,
  expires_at, revoked_at
```

La restricción única de `collection_items` corresponde al MVP, que guarda un registro por carta y usuario. Se aplicarán claves foráneas, restricciones de cantidad positiva e índices adecuados para búsquedas frecuentes.

### 9.1 Origen del catálogo

El catálogo inicial se preparará como un conjunto de datos local revisado, por ejemplo `cards.json` y `sets.json`, que se importará a PostgreSQL mediante un script de carga. La aplicación no solicitará información a APIs de Pokémon durante su funcionamiento. Las imágenes oficiales se usarán solo si se cuenta con autorización o una base de uso adecuada; en caso contrario, se emplearán imágenes propias o marcadores de posición.

## 10. Requerimientos funcionales

| ID | Requerimiento |
|---|---|
| RF-01 | El sistema permitirá registrar una cuenta con correo electrónico y contraseña. |
| RF-02 | El sistema permitirá iniciar y cerrar sesión. |
| RF-03 | El sistema mostrará un catálogo de cartas almacenadas en PostgreSQL. |
| RF-04 | El usuario podrá buscar cartas por nombre. |
| RF-05 | El usuario podrá consultar los atributos de una carta. |
| RF-06 | El usuario autenticado podrá agregar cartas a su colección personal. |
| RF-07 | El usuario podrá consultar las cartas registradas en su colección. |
| RF-08 | El usuario podrá modificar cantidad de una carta de su colección. |
| RF-09 | El usuario podrá eliminar cartas de su colección. |
| RF-10 | El usuario podrá consultar su perfil y estadísticas básicas. |
| RF-11 | La aplicación mostrará indicadores de carga y mensajes ante errores o resultados vacíos. |
| RF-12 | El backend verificará la identidad y los permisos del usuario antes de ejecutar operaciones protegidas. |

## 11. Requerimientos no funcionales

| ID | Categoría | Requerimiento |
|---|---|---|
| RNF-01 | Arquitectura | Aplicación iOS organizada con MVVM-C. |
| RNF-02 | Seguridad | La transmisión de credenciales y tokens utilizará HTTPS con certificado confiable en la integración real; HTTP se limitará a pruebas controladas sin credenciales reales. |
| RNF-03 | Seguridad | La API autenticará usuarios con mecanismo propio y restringirá cada colección a su propietario. |
| RNF-04 | Validación | El backend validará tipos, rangos, formatos y campos obligatorios. |
| RNF-05 | Rendimiento | Solicitudes asíncronas sin bloquear el hilo principal. |
| RNF-06 | Usabilidad | Retroalimentación clara durante carga, éxito y error. |
| RNF-07 | Mantenibilidad | Modelos, servicios, protocolos y componentes reutilizables. |
| RNF-08 | Escalabilidad | Catálogo con paginación, filtros e índices. |
| RNF-09 | Calidad | Pruebas de flujos, autenticación, permisos y endpoints. |
| RNF-10 | Documentación | Guías de instalación, arquitectura, API y ejecución local. |
| RNF-11 | Disponibilidad | La aplicación indicará cuando el servidor local esté apagado o inaccesible. |
| RNF-12 | Dependencias | Sin APIs, SDK o servicios externos para funciones del MVP; dependencias de infraestructura documentadas. |

## 12. Seguridad y protección de datos

La autenticación será propia. El backend almacenará únicamente **hashes de contraseñas con sal**, generados mediante un algoritmo apropiado para contraseñas, nunca contraseñas en texto plano. Se establecerán reglas de validación, límites de intentos de inicio de sesión y respuestas que no revelen información sensible. La API emitirá credenciales de sesión revocables y con vencimiento; los tokens se almacenarán de manera segura en el **Keychain de iOS**, no en `UserDefaults`.

Cada solicitud protegida identificará al usuario a partir de su credencial válida y comprobará que los registros solicitados le pertenezcan. Las consultas SQL serán parametrizadas para evitar inyección SQL. PostgreSQL no se expondrá directamente a la red del iPhone. Los secretos se mantendrán fuera de Git. Se preparará TLS/HTTPS antes de transmitir credenciales reales por la red; **no se desactivará de forma general App Transport Security** para resolver errores de conectividad.

## 13. Manejo de concurrencia, errores y estados de carga

El cliente usará `URLSession` con `async/await`. Los ViewModels representarán estados `loading`, `loaded`, `empty` y `error`, actualizando la interfaz desde el contexto principal. Se distinguirán errores de conectividad, servidor apagado, autenticación, autorización, validación y recursos inexistentes. Las operaciones de red cancelables se cancelarán cuando corresponda. Los reintentos automáticos se reservarán para operaciones idempotentes o diseñadas explícitamente para admitirlos.

## 14. Pantallas propuestas

1. **Bienvenida e inicio de sesión:** ingreso de credenciales y acceso al registro.
2. **Registro:** creación de cuenta.
3. **Catálogo:** listado, búsqueda y navegación al detalle.
4. **Detalle de carta:** atributos y acción para agregar a colección.
5. **Mi colección:** inventario y edición o eliminación de registros.
6. **Perfil:** datos de cuenta, estadísticas y cierre de sesión.

La navegación se organizará en un flujo de autenticación y otro de contenido principal, administrados por Coordinators.

## 15. Estructura preliminar del repositorio

```text
DeckVault/
├── ios/
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
│   ├── app/
│   │   ├── __init__.py
│   │   ├── routes/
│   │   ├── models/
│   │   └── services/
│   ├── tests/
│   ├── seed/
│   │   ├── cards.json
│   │   └── sets.json
│   └── requirements.txt
├── docs/
│   ├── propuesta.md
│   ├── arquitectura.md
│   ├── api.md
│   └── despliegue-local.md
├── .gitignore
└── README.md
```

Esta estructura es **orientativa**, no una afirmación sobre carpetas existentes. El backend ya iniciado se encuentra en `~/deckvault-api` dentro de Debian, con `app/routes`, `app/models`, `app/services` y `tests`. La organización definitiva puede mantener repositorios separados para iOS y backend si resulta más conveniente para el equipo.

## 16. Etapas de desarrollo

| Etapa | Actividades | Entregable |
|---|---|---|
| 1. Análisis y diseño | Delimitar MVP, modelos, pantallas y contratos | Requerimientos y diseño |
| 2. Infraestructura y datos | Configurar QEMU, Debian, PostgreSQL, Flask, red y catálogo | Backend accesible y base de datos |
| 3. Autenticación y API | Registro, sesión, endpoints y autorización | API funcional y probada |
| 4. Estructura iOS | Proyecto Xcode, MVVM-C, navegación y APIClient | Base técnica iOS |
| 5. Integración funcional | Catálogo, detalle, colección y perfil | MVP integrado |
| 6. Calidad y entrega | Pruebas, seguridad, documentación y demostración | Versión validada |

**Estado conocido a octubre de 2026:** se preparó la VM Debian y la estructura inicial del backend Flask. La consulta `GET /api/health/db` devolvió `{"database":"connected","status":"ok"}`, lo que evidencia conectividad del backend con la base de datos en esa prueba. Esto **no demuestra todavía** autenticación, CRUD completo, TLS ni conectividad desde un iPhone físico.

## 17. Consideraciones técnicas y restricciones

- **Infraestructura local:** la Mac y la VM deben estar encendidas para que el servicio esté disponible; no se presupone acceso desde Internet.
- **Red de QEMU:** verificar interfaz, puertos y reglas de firewall; el endpoint probado en `127.0.0.1:5000` de la Mac no garantiza acceso desde el iPhone.
- **Seguridad de transporte:** configurar HTTPS con confianza válida para el cliente antes de usar credenciales reales. Durante pruebas aisladas puede emplearse HTTP únicamente con datos de prueba.
- **Restricción de terceros:** sin Firebase, SDK de terceros en iOS, APIs externas de catálogo ni servicios de nube; Flask, PostgreSQL y QEMU son herramientas de infraestructura las cuales se consideran expresamente permitidas.
- **Contenido de Pokémon:** respetar derechos sobre imágenes, marcas y recursos gráficos; usar recursos propios o marcadores de posición cuando corresponda.
- **Catálogo acotado:** seleccionar un subconjunto verificable de cartas y expansiones.
- **Almacenamiento y respaldo:** definir copias de seguridad de PostgreSQL y evitar subir credenciales o bases de datos sensibles al repositorio.

## 18. Resultados esperados

Se espera obtener una aplicación iOS funcional que permita administrar colecciones personales de Pokémon TCG y demuestre la integración entre un cliente móvil nativo y una API REST propia alojada localmente. El trabajo evidenciará uso de MVVM-C, Swift Concurrency, autenticación y autorización propias, persistencia relacional, validación de solicitudes, manejo de errores y configuración de un servidor Linux virtualizado.

## 19. Referencias técnicas de consulta

- Apple Developer Documentation: [UIKit](https://developer.apple.com/documentation/uikit).
- Apple Developer Documentation: [URLSession](https://developer.apple.com/documentation/foundation/urlsession).
- Apple Developer Documentation: [Keychain Services](https://developer.apple.com/documentation/security/keychain_services).
- Apple Developer Documentation: [App Transport Security](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity).
- Flask: [Documentación oficial](https://flask.palletsprojects.com/).
- PostgreSQL: [Documentación oficial](https://www.postgresql.org/docs/).
- Debian: [Documentación](https://www.debian.org/doc/).
- QEMU: [Documentación](https://www.qemu.org/docs/master/).
- OWASP: [Authentication Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html).

---

**Nota:** Esta propuesta define el alcance técnico actualizado. Los contratos definitivos de autenticación, la topología de red, el mecanismo TLS, el esquema SQL y las fechas se confirmarán durante la implementación y las pruebas.
