// render_spa.mjs <url> <salida.txt> — renderiza una SPA headless y guarda el texto visible.
// Reusa el Playwright instalado en suno-operator (gotcha ANCLA_INGESTA: el MCP suele estar ocupado).
import { createRequire } from 'module';
const require = createRequire('/Users/daribesoain/Projects/suno-operator/node_modules/');
const { chromium } = require('playwright');
import { writeFileSync } from 'fs';

const [url, salida] = process.argv.slice(2);
const browser = await chromium.launch({ headless: true });
const page = await browser.newPage({ userAgent: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' });
try {
  await page.goto(url, { waitUntil: 'networkidle', timeout: 60000 }).catch(() => {});
  await page.waitForTimeout(2500);
  let texto = '';
  for (const sel of ['main', 'article', '[role="main"]', 'body']) {
    const el = await page.$(sel);
    if (el) { texto = await el.innerText(); if (texto.split(/\s+/).length > 150) break; }
  }
  writeFileSync(salida, texto);
  console.log(`${salida}: ${texto.split(/\s+/).length} palabras`);
} finally { await browser.close(); }
