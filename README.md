# Multabot API

Especificación OpenAPI de la [API de Multabot](https://multabot.com.ar/api), la plataforma para consultar y monitorear multas de tránsito en Argentina por patente, DNI o CUIT.

La API permite:

- Consultar infracciones de una patente, DNI o CUIT.
- Crear monitores que vuelven a revisar un vehículo y avisan cuando aparece una multa nueva.
- Registrar webhooks para recibir esos eventos en tu sistema.

El acceso requiere una cuenta empresarial. Pedila desde [multabot.com.ar/ventas](https://multabot.com.ar/ventas).

## Archivos

- [`openapi.json`](openapi.json): especificación OpenAPI 3.1.
- [`examples/`](examples): ejemplos con `curl` y JavaScript.

## Autenticación

Todas las solicitudes llevan tu API key en el encabezado `Authorization`:

```
Authorization: Bearer TU_API_KEY
```

## Ejemplo

```bash
curl "https://api.multabot.com.ar/v1/infracciones?plate=AB123CD" \
  -H "Authorization: Bearer $MULTABOT_API_KEY"
```

## Documentación

- Portal de desarrolladores: [multabot.com.ar/developers](https://multabot.com.ar/developers)
- Especificación publicada: [multabot.com.ar/openapi.json](https://multabot.com.ar/openapi.json)
- Contacto: contacto@multabot.com.ar

## Licencia

Los ejemplos de este repositorio se publican bajo la licencia MIT. El uso de la API se rige por los [términos de Multabot](https://multabot.com.ar/terminos-y-condiciones).
