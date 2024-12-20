# Docker: Contenedores de Aplicaciones

Docker es una plataforma de contenedores que permite ejecutar aplicaciones de manera independiente en cualquier sistema operativo, aprovechando los recursos del kernel del host.

## Ventajas sobre Máquinas Virtuales

- **Eficiencia**: No requiere un sistema operativo completo, solo los archivos necesarios para la aplicación, lo que lo hace más liviano y rápido que las máquinas virtuales.

## Balanceo de Carga

Es posible implementar un balanceador de carga, como **Nginx**, para:

- **Escalar**: Crear réplicas de contenedores durante picos de demanda.
- **Optimizar recursos**: Reducir réplicas cuando la demanda disminuye.

# Arquitectura del ejemplo:

- **Backend**: Una aplicación web simple en Node.js.
- **Nginx**: Actuará como balanceador de carga, distribuyendo las solicitudes a varias réplicas del backend.
- **Docker Compose**: Orquestará el entorno.
