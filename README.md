# Laboratorio: Usuarios y permisos en Linux

## 🎯 Objetivo

Aprender de forma práctica:

- Permisos en Linux (`rwx`)
- Uso de `chmod`
- Uso de `chown` y `chgrp`
- Comprender quién puede acceder a qué

---

## 🚀 Cómo empezar

1. Haz clic en **Code**
2. Ve a **Codespaces**
3. Selecciona **Create codespace**
4. Abre la terminal

Ejecuta:

```bash
ls
```

Si no ves la carpeta `laboratorio`, ejecuta:

```bash
bash setup.sh
```

---

# 🧩 Misión 1: Explora el sistema

Ejecuta:

```bash
ls -l laboratorio
```

Responde:

- ¿Qué carpetas existen?
- ¿Qué permisos tiene cada una?
- ¿Cuál parece más insegura?

---

# 🔐 Misión 2: Protege el archivo secreto

Revisa:

```bash
ls -l laboratorio/secreto
```

El archivo `clave.txt` es accesible para todos.  
Corrige esto para que **solo el dueño pueda leer y escribir**:

```bash
chmod 600 laboratorio/secreto/clave.txt
```

Verifica:

```bash
ls -l laboratorio/secreto
```

---

# 👥 Misión 3: Carpeta de equipo

Configura la carpeta `equipo` para que solo el dueño y el grupo puedan acceder:

```bash
sudo chgrp equipo_rojo laboratorio/equipo
chmod 770 laboratorio/equipo
```

Verifica:

```bash
ls -ld laboratorio/equipo
```

Responde:

- ¿Qué significa `770`?
- ¿Quién puede acceder?
- ¿Quién no?

---

# 🧪 Misión 4: Prueba con otros usuarios

Prueba acceso como otros usuarios:

```bash
sudo -u ana ls laboratorio/equipo
sudo -u carla ls laboratorio/equipo
```

Responde:

- ¿Quién pudo acceder?
- ¿Por qué?

---

# ⚠️ Misión 5: Corrige un problema de seguridad

Alguien dejó esta carpeta con permisos inseguros:

```bash
chmod 777 laboratorio/secreto
```

Responde:

- ¿Por qué es peligroso?
- Corrige los permisos

Sugerencia:

```bash
chmod 700 laboratorio/secreto
```

---

# 🧠 Misión 6: Reto final

Configura:

| Recurso | Permisos requeridos |
|--------|--------------------|
| publico | todos pueden leer |
| confidencial | solo dueño |
| equipo | dueño + grupo |
| clave.txt | solo dueño |

Comandos sugeridos:

```bash
chmod 755 laboratorio/publico
chmod 700 laboratorio/confidencial
chmod 770 laboratorio/equipo
chmod 600 laboratorio/secreto/clave.txt
```

---

# ✅ Verificación final

Ejecuta:

```bash
bash verificar.sh
```

---

# 📌 Entregable

Debes entregar:

1. Captura de:
   ```bash
   bash verificar.sh
   ```
2. Captura de al menos una prueba con:
   ```bash
   sudo -u ana
   ```
3. Explicación breve:
   - qué significa `rwx`
   - qué hace `chmod`
   - por qué `777` es peligroso
4. Un error que cometiste y cómo lo corregiste

---

# 🎯 Nota final

No copies sin probar.

Si no ejecutas los comandos, no podrás completar el laboratorio correctamente.
