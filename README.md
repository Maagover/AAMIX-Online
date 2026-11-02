# AAMIX-Online

Repositorio de desarrollo de **AAMIX Online 1.3.1**, versión interna **1.11.1**.

## Empezar a trabajar

1. Abre el repositorio público; no necesitas invitación para leerlo o descargarlo.
2. Clona `https://github.com/Maagover/AAMIX-Online.git` con Git o GitHub Desktop.
3. Abre Godot compatible con el proyecto (la entrega original utiliza Godot 4.7.2).
4. Importa `proyecto/project.godot` y ejecuta el proyecto desde el editor.
5. Para subir cambios directamente, solicita acceso como colaborador y crea una rama. También puedes crear un fork y proponer un pull request hacia `main`.

El código del juego está en `proyecto/*.gd`; los recursos, datos y pruebas están dentro de `proyecto/`. Los scripts SQL del servidor se conservan en `proyecto/backend/` como referencia: no se ejecutan automáticamente al abrir el juego. Coordina cualquier cambio del servidor con el responsable del entorno.

El ZIP completo para Windows se publica como descarga de la versión. Incluye el motor, que se excluye del historial Git por su tamaño. Las actualizaciones del instalador existente siguen usando el repositorio de distribución `Maagover/AAMIX`.

La importación conserva una instantánea de la entrega 1.3.1. El historial de colaboración comienza a partir de esta base.

## Notas de la entrega original

# AAMIX Online v1.3.1

Corrige caracteres corruptos en las filas de misiones del Desafío, Misiones y Eventos: separadores, signo de cantidad y marca de recompensa entregada. Se conserva la diagramación y el funcionamiento de v1.3.

Cierra el juego y pulsa Actualizar en tu instalador habitual; después, Jugar. Versión interna 1.11.1. Sin cambios de servidor, reglas, premios o progreso.

151 comprobaciones dirigidas sin fallos, incluidas tres verificaciones de los caracteres que se muestran en pantalla. Sin pruebas nuevas entre PCs remotos.
