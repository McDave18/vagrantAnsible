# vagrantAnsible
Repositorio para la práctica de la actividad 3: Desarrollo de Roles y Playbooks con Vagrant y Ansible

# 🎾 Actividad 3 - Automatización de despliegues (UNIR)

Este proyecto es una práctica de la asignatura **Herramientas de Automatización de Despliegues** de la UNIR. Utiliza **Vagrant** y **Ansible** para automatizar el despliegue de una máquina virtual y la generación de un archivo de partido de tenis con información combinada de un jugador manual y otro aleatorio obtenido desde una API pública.

---

## 📌 Objetivo

Tras ejecutar `vagrant up`, se debe generar automáticamente un archivo llamado:

- `partidos.txt` (formato plano)
- `partidos.html` (versión visual)

Ambos ubicados en la raíz del proyecto y conteniendo información de dos tenistas, incluyendo:

- Nombre completo
- Ciudad
- ID
- Fecha y hora del partido (ajustada a la zona horaria del centro de México)

---

## 🧰 Tecnologías utilizadas

- 🧱 [Vagrant](https://www.vagrantup.com/)
- 🖥️ [VirtualBox](https://www.virtualbox.org/)
- ⚙️ [Ansible](https://www.ansible.com/)
- 🐍 Python 3 + módulo `requests`
- 🌐 API pública: [https://randomuser.me](https://randomuser.me)

---

## 📁 Estructura del proyecto

```
actividad3/
├── Vagrantfile
├── playbook.yml
├── partidos.txt          ← generado automáticamente
├── partidos.html         ← generado automáticamente
└── roles/
    └── generador_partidos/
        ├── tasks/
        │   └── main.yml
        └── vars/
            └── main.yml
```

---

## 🚀 Cómo ejecutar el proyecto

### 1. Requisitos previos

- Tener instalado en tu equipo:
  - [VirtualBox](https://www.virtualbox.org/)
  - [Vagrant](https://www.vagrantup.com/)
  - [Git](https://git-scm.com/) (opcional, para clonar)

### 2. Clonar el repositorio (opcional)

```bash
git clone https://github.com/tu_usuario/actividad3-unir.git
cd actividad3-unir
```

### 3. Ejecutar el entorno

Desde la raíz del proyecto, en PowerShell o CMD:

```bash
vagrant up
```

Esto:
- Crea la VM
- Configura zona horaria a "Centro de México"
- Instala Ansible, Python y dependencias
- Ejecuta automáticamente el `playbook`

---

## 📄 Resultado esperado

Se generarán los siguientes archivos en la raíz del proyecto:

### 📝 `partidos.txt`
Con formato tipo ficha legible en consola o bloc de notas.

### 🌐 `partidos.html`
Versión visual del mismo contenido, con estilos para navegador.

Ambos muestran la hora en formato local (centro de México), por ejemplo:

```
Fecha y Hora (hora centro de México): 2025-07-31 16:45:00
```

---

## 📦 Extras

Puedes utilizar el archivo `iniciar_partido.bat` para ejecutar todo con doble clic y abrir automáticamente el HTML al finalizar.

---

## ✍️ Autor

- **Nombre:** David Huerta Bustamante
- **Universidad Internacional de La Rioja (UNIR)**
- **Asignatura:** Herramientas de Automatización de Despliegues

---

## 📜 Licencia

Uso educativo únicamente.

