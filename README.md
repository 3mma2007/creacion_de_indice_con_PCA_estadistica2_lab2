# Lab 2 - Estadística y Probabilidad II

Análisis multivariado de métricas de infraestructura de datos distribuida.  
**Curso:** Estadística y Probabilidad II · Ingeniería de Datos e IA · UAO

## Dataset

5000 observaciones, 45 variables numéricas agrupadas en:

| Grupo | Variables |
|---|---|
| CPU | `cpu_usage`, `cpu_peak`, `cpu_idle`, `threads`, `processes` |
| Memoria | `ram_usage`, `ram_peak`, `swap_usage`, `cache_usage`, `buffer_usage` |
| I/O | `disk_read`, `disk_write`, `io_wait`, `disk_queue`, `disk_latency` |
| Red | `net_in`, `net_out`, `packet_loss`, `connections`, `bandwidth` |
| Latencia | `query_latency`, `response_time`, `job_time`, `task_delay`, `queue_time` |
| Errores | `error_rate`, `retries`, `failures` |
| Volumen | `data_size`, `throughput`, `ingestion_rate` |
| Sistema | `active_users`, `batch_jobs`, `streaming_jobs`, `query_count`, `api_calls` |
| Sintéticas | `metric1` … `metric5` |

## Metodología

1. Muestra aleatoria sin reemplazo de **1500 observaciones** 


## Estructura del repositorio

```
├── datos_lab2_EyP2-2026-1S.xlsx   # Dataset original
├── script_r.R                      # Script de análisis en R

```

## Requisitos

- R ≥ 4.x
- Paquetes: `readxl`, `factoextra`, `FactoMineR`, `psych`, `cluster`, `ggplot2`

## Autor

Johann A. Ospina · Facultad de Ingenierías y Ciencias Básicas · UAO · 2026-1S
