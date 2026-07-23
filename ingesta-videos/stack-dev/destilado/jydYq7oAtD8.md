# Software Testing Course – Playwright, E2E, and AI Agents
**Fuente:** freeCodeCamp.org and Beau Carnes | https://youtu.be/jydYq7oAtD8

## Qué enseña (2-3 líneas)
Curso completo de testing de software que cubre desde fundamentos (pirámide de testing, tipos de tests) hasta la implementación práctica con Playwright para tests E2E, incluyendo técnicas avanzadas como mocking, testing de accesibilidad y edge cases. Finaliza con una demostración de Kain AI de Testim, una herramienta de testing impulsada por IA que permite escribir tests en lenguaje natural.

## Técnicas y patrones accionables

### Configuración de Playwright
- **Archivo:** `playwright.config.js`
```javascript
// Configuración básica
// - Ubicación de tests
// - Navegadores: Chromium, Firefox, WebKit, mobile Chrome, mobile Safari
// - URL del servidor local
// - Screenshots on failure
// - Video on failure
```

### Instalación y ejecución
```bash
# Instalar dependencias
npm install

# Instalar navegadores de Playwright
npx playwright install

# Ejecutar todos los tests
npm test

# Ver reporte
npx playwright show-report

# Ejecutar en modo headed (con navegador visible)
npm run test -- --headed

# Ejecutar en modo UI interactivo
npm run test -- --ui

# Ejecutar un archivo específico
npx playwright test tests/cart.spec.js

# Ejecutar tests que coincidan con un patrón
npx playwright test -g login
```

### Estructura de un test file (`homepage.spec.js`)
```javascript
import { test, expect } from '@playwright/test';

test.describe('home page', () => {
  test.beforeEach(async ({ page }) => {
    // Navegar al homepage y limpiar carrito antes de cada test
    await page.goto('/');
    // Limpiar carrito
  });

  test('should display correct page title', async ({ page }) => {
    await expect(page).toHaveTitle(/TechMart/);
  });
});
```

### Patrón acción + verificación (fundamental)
```javascript
test('should add item to cart', async ({ page }) => {
  // 1. ACCIÓN: click en "Add to Cart"
  await page.locator('text=Add to Cart').first().click();
  
  // 2. VERIFICAR feedback inmediato (toast message)
  await expect(page.locator('text=Added to cart')).toBeVisible();
  
  // 3. VERIFICAR cambio de estado (cart count actualizado)
  await expect(page.locator('[data-testid="cart-count"]')).toHaveText('1');
});
```

### Estrategias de localización (locators)
```javascript
// Por ID
page.locator('#search-input')

// Por clase CSS
page.locator('.product-card')

// Por texto exacto
page.locator('text=Add to Cart')

// Por rol de accesibilidad
page.locator('role=button[name="login"]')

// Por placeholder
page.locator('[placeholder="Search products..."]')

// Combinando selectores
page.locator('.product-card >> text=Keyboard')
```

### Test de formulario de login (`auth.spec.js`)
```javascript
test('should login successfully with valid credentials', async ({ page }) => {
  await page.goto('/login');
  
  // ACCIÓN: llenar formulario
  await page.locator('#email').fill('demo@example.com');
  await page.locator('#password').fill('demo123');
  await page.locator('button[type="submit"]').click();
  
  // VERIFICACIÓN: redirección al homepage
  await expect(page).toHaveURL('/');
});

test('should show error for mismatched passwords', async ({ page }) => {
  await page.goto('/register');
  
  await page.locator('#password').fill('password123');
  await page.locator('#confirm-password').fill('differentpassword');
  await page.locator('button[type="submit"]').click();
  
  await expect(page.locator('text=Passwords do not match')).toBeVisible();
});
```

### Test de API con Playwright (`api.spec.js`)
```javascript
test('should return all products', async ({ request }) => {
  const response = await request.get('/api/products');
  
  expect(response.ok()).toBeTruthy();
  expect(response.status()).toBe(200);
  
  const data = await response.json();
  expect(Array.isArray(data)).toBeTruthy();
  expect(data.length).toBe(6);
});

test('should add item to cart', async ({ request }) => {
  const response = await request.post('/api/cart', {
    data: {
      productId: 1,
      quantity: 1
    }
  });
  
  expect(response.status()).toBe(200);
  const data = await response.json();
  expect(data.items.length).toBe(1);
  expect(data.items[0].productId).toBe(1);
  expect(data.items[0].quantity).toBe(1);
});
```

### Mocking de API (`mocking.spec.js`)
```javascript
// Simular API caída (500 error)
test('should handle API being down', async ({ page }) => {
  await page.route('**/api/products', route => {
    route.fulfill({
      status: 500,
      body: 'Internal Server Error'
    });
  });
  
  await page.goto('/');
  await expect(page.locator('.product-card')).toHaveCount(0);
});

// Simular respuesta lenta (3 segundos de delay)
test('should handle slow API responses', async ({ page }) => {
  await page.route('**/api/products', async route => {
    await new Promise(resolve => setTimeout(resolve, 3000));
    route.continue();
  });
  
  await page.goto('/');
  // Verificar que la página es usable durante la carga
  await expect(page.locator('.product-card')).toHaveCount(6);
});

// Mock de datos específicos (out of stock)
test('should show out of stock indicator', async ({ page }) => {
  await page.route('**/api/products', route => {
    route.fulfill({
      status: 200,
      body: JSON.stringify([
        { id: 1, name: 'Wireless Headphones', stock: 0 },
        { id: 2, name: 'USB Cable', stock: 10 }
      ])
    });
  });
  
  await page.goto('/');
  await expect(page.locator('.product-card')).toHaveCount(2);
  await expect(page.locator('text=Out of Stock')).toBeVisible();
});

// Mock selectivo: interceptar solo POST requests
test('should handle add to cart failure', async ({ page }) => {
  await page.route('**/api/cart', async (route) => {
    if (route.request().method() === 'POST') {
      route.fulfill({ status: 500 });
    } else {
      route.continue();
    }
  });
});
```

### Testing de edge cases (`edge-cases.spec.js`)
```javascript
// Búsqueda vacía
test('should handle empty search gracefully', async ({ page }) => {
  await page.goto('/');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(6);
});

// Búsqueda con caracteres especiales (XSS)
test('should handle special characters search', async ({ page }) => {
  await page.locator('#search-input').fill('<script>alert("xss")</script>');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(0);
  // La página debe seguir siendo visible (no se ejecutó el script)
});

// Búsqueda con solo espacios
test('should handle search with only whitespace', async ({ page }) => {
  await page.locator('#search-input').fill('   ');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(6);
});

// Checkout con carrito vacío
test('should not allow checkout with empty cart', async ({ page }) => {
  await page.goto('/checkout');
  await page.locator('#email').fill('test@test.com');
  await page.locator('#card').fill('4111111111111111');
  await page.locator('text=Place Order').click();
  await expect(page.locator('text=Cart is empty')).toBeVisible();
});
```

### Testing de accesibilidad (`accessibility.spec.js`)
```javascript
// Verificar que todas las imágenes tienen alt text
test('all images should have alt text', async ({ page }) => {
  await page.goto('/');
  const images = page.locator('img');
  const count = await images.count();
  for (let i = 0; i < count; i++) {
    await expect(images.nth(i)).toHaveAttribute('alt');
  }
});

// Verificar que todos los inputs tienen labels
test('all form inputs should have labels', async ({ page }) => {
  await page.goto('/login');
  const inputs = page.locator('input');
  const count = await inputs.count();
  for (let i = 0; i < count; i++) {
    await expect(inputs.nth(i)).toHaveAttribute('aria-label');
  }
});

// Verificar jerarquía de headings
test('page should have proper heading hierarchy', async ({ page }) => {
  await page.goto('/');
  const headings = page.locator('h1, h2, h3, h4, h5, h6');
  // Verificar que no se saltan niveles (ej: h1 -> h3 sin h2)
});

// Verificar navegación por teclado
test('interactive elements should be keyboard accessible', async ({ page }) => {
  await page.goto('/');
  // Verificar que se puede navegar con Tab
  await page.keyboard.press('Tab');
  await expect(page.locator(':focus')).toBeVisible();
});
```

### Uso de Axe Core con Playwright (accesibilidad avanzada)
```javascript
// Ejemplo conceptual de integración con Axe Core
// Un solo test que verifica docenas de issues de accesibilidad automáticamente
```

### Cloudflare Tunnel para testing local con Kain AI
```bash
# Instalar cloudflared
brew install cloudflared

# Crear tunnel (con servidor corriendo en localhost:3000)
cloudflared tunnel --url localhost:3000
# Output: https://xxxxx.trycloudflare.com (URL pública)
```

### Kain AI - Tests en lenguaje natural
```
Comandos de ejemplo:
"Go to [URL], make sure the title contains TechMart, 
check that the text 'Welcome to TechMart' is visible, 
scroll down and make sure at least four product cards are visible"

"Go to [URL], click on the search input field, 
type 'keyboard' in the search box, click the search button, 
make sure only one product card is visible after searching, 
and that the product should be the Mechanical Keyboard"
```

### Kain AI - API testing
```
Comando especial dentro del test:
/api products (GET request)
- Configurar parámetros, autorización, headers, body
- Enviar request
- Verificar que response status es 200
```

## Reglas para el erudito (imperativas y verificables)

1. **Usa el patrón acción + verificación** en cada test: primero realiza la acción del usuario (click, fill, type), luego verifica el feedback inmediato (toast, mensaje), y finalmente verifica el cambio de estado (URL, contador, datos en DB).

2. **Usa `page.locator()` con selectores estables y significativos**: prefiere IDs y atributos `data-test-id` sobre selectores CSS que dependen de la estructura exacta del DOM. Usa texto para botones y links.

3. **Nunca dependas de un test de otro**: cada test debe configurar sus propios datos y limpiar después de ejecutarse. Los tests deben poder ejecutarse en cualquier orden.

4. **Usa `test.beforeEach()` para navegar a un estado limpio** antes de cada test en un bloque `test.describe()`.

5. **Mockea APIs cuando:** estés probando estados de error difíciles de reproducir, la API real sea lenta/inestable/costosa, necesites control preciso sobre los datos, o estés probando integraciones de terceros.

6. **No mockees cuando:** necesites verificar que la API real funciona (usa tests de integración para eso), o cuando mockear haría que el test pierda significado.

7. **Usa `page.route()` para interceptar requests HTTP** y devolver respuestas personalizadas (mockear). Usa `route.fulfill()` para respuestas completas o `route.continue()` para dejar pasar la request.

8. **Prueba siempre el happy path Y los escenarios de error**: formularios vacíos, caracteres especiales, contraseñas que no coinciden, carritos vacíos, búsquedas sin resultados.

9. **Usa nombres de test descriptivos**: "should display error when password is too short" en lugar de "test1" o "test123".

10. **Integra los tests en CI/CD** para que se ejecuten automáticamente en cada cambio de código.

11. **Usa Kain AI para:** prototipar tests rápidamente, cuando no-desarrolladores necesiten crear tests, para reducir mantenimiento, o para testing cross-browser a escala.

12. **Usa Playwright tradicional para:** control preciso sobre la lógica del test, testing de edge cases complejos, o cuando quieras tener el testing en tu propio código base.

## Errores comunes / gotchas que menciona

1. **Tests flaky (inconsistentes)**: Los tests E2E a veces pasan y a veces fallan sin cambios de código debido a timing issues, variabilidad de red, inconsistencias entre navegadores, o contenido dinámico. Esto erosiona la confianza en la suite de tests.

2. **Mantenimiento costoso**: Cuando la UI cambia, los selectores pueden romperse, los flujos de test necesitan actualizarse, y las aserciones pueden volverse inválidas. Un solo rediseño de UI puede romper docenas de tests.

3. **Curva de aprendizaje significativa**: Para escribir tests efectivos se necesita conocer: un lenguaje de programación, la API del framework de testing, estrategias de localización (CSS selectors), async/await y promesas, y mejores prácticas para tests confiables.

4. **Escribir tests toma tiempo**: El test de checkout completo requirió ~50 líneas de código para identificar cada campo del formulario, encontrar los selectores correctos, manejar la sumisión, y escribir aserciones. Multiplicar por cada feature de la aplicación.

5. **No asumir que porque no hay un `expect` explícito el test no verifica**: Si una acción falla (ej: `page.goto()` no llega a la URL esperada), el test falla aunque no haya un `expect` específico.

6. **No olvidar instalar los navegadores de Playwright**: Ejecutar `npx playwright install` antes de correr los tests por primera vez.

7. **Los tests de accesibilidad pueden fallar incluso si visualmente todo se ve bien**: Esto es bueno, significa que se encontraron issues reales de accesibilidad que la inspección visual no detecta.

8. **AI testing tools son asistentes poderosos pero no reemplazan el juicio humano**: Aún se necesita decidir qué testear, revisar tests generados por AI para verificar precisión, manejar edge cases complejos, y entender qué están haciendo realmente los tests.

9. **Para usar Kain AI con un servidor local**, se necesita exponerlo a internet mediante un túnel (Cloudflare Tunnel, ngrok, etc.) ya que Kain AI trabaja con URLs públicas en producción.

10. **Los tests automatizados no reemplazan todo el testing**: Aún se necesita exploratory testing para encontrar issues inesperados, usability testing para experiencia de usuario, y security testing por expertos. Los tests automatizados atrapan regresiones; los humanos encuentran problemas nuevos.