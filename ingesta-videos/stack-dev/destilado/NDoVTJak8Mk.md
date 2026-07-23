# 15 - Master Route Data Loading In Svelte 5 - load() Function, Error Handling & Data Invalidation
**Fuente:** Code Hub | https://youtu.be/NDoVTJak8Mk

## Qué enseña (2-3 líneas)
Este tutorial enseña el sistema de carga de datos por ruta en SvelteKit 5 usando la función `load()`, incluyendo fetching básico y avanzado (paralelo con `Promise.all`, dependencias secuenciales), manejo de errores con páginas de error personalizadas, e invalidación/revalidación de datos con `depends()`, `invalidate()` e `invalidateAll()`. Cubre tanto load functions universales (`+page.ts`) como de servidor (`+page.server.ts`).

## Técnicas y patrones accionables

### 1. Load function básica con ruta dinámica
**Archivo:** `users/[id]/+page.ts`
```typescript
import type { PageLoad } from './$types';

interface User {
  id: number;
  name: string;
  email: string;
  phone: string;
  website: string;
}

export const load: PageLoad = async ({ params, fetch }) => {
  const response = await fetch(`https://jsonplaceholder.typicode.com/users/${params.id}`);
  
  if (!response.ok) {
    throw new Error('Failed to fetch user');
  }
  
  const user: User = await response.json();
  return { user };
};
```

**Archivo:** `users/[id]/+page.svelte`
```svelte
<script lang="ts">
  import type { PageData } from './$types';
  let { data }: { data: PageData } = $props();
</script>

<div class="p-4">
  <h1 class="text-2xl font-bold">{data.user.name}</h1>
  <p>{data.user.email}</p>
  <p>{data.user.phone}</p>
  <p>{data.user.website}</p>
</div>
```

### 2. Fetching paralelo con Promise.all y dependencias secuenciales
**Archivo:** `posts/[id]/+page.ts`
```typescript
import type { PageLoad } from './$types';

interface User {
  id: number;
  name: string;
  email: string;
}

interface Post {
  id: number;
  title: string;
  body: string;
  userId: number;
}

interface Comment {
  id: number;
  name: string;
  email: string;
  body: string;
}

export const load: PageLoad = async ({ params, fetch }) => {
  const postId = params.id;
  
  const [postResponse, commentResponse] = await Promise.all([
    fetch(`https://jsonplaceholder.typicode.com/posts/${postId}`),
    fetch(`https://jsonplaceholder.typicode.com/posts/${postId}/comments`)
  ]);
  
  if (!postResponse.ok) throw new Error('Failed to fetch post');
  if (!commentResponse.ok) throw new Error('Failed to fetch comments');
  
  const post: Post = await postResponse.json();
  const comments: Comment[] = await commentResponse.json();
  
  // Dependencia secuencial: necesita el userId del post
  const authorResponse = await fetch(`https://jsonplaceholder.typicode.com/users/${post.userId}`);
  if (!authorResponse.ok) throw new Error('Failed to fetch author');
  const author: User = await authorResponse.json();
  
  return { post, author, comments };
};
```

**Archivo:** `posts/[id]/+page.svelte`
```svelte
<script lang="ts">
  import type { PageData } from './$types';
  let { data }: { data: PageData } = $props();
</script>

<div class="p-4">
  <article>
    <h1 class="text-2xl font-bold">{data.post.title}</h1>
    <p>Author: {data.author.name}</p>
    <p>{data.post.body}</p>
  </article>
  
  <section>
    <h2>Comments ({data.comments.length})</h2>
    {#each data.comments as comment}
      <div>
        <h3>{comment.name}</h3>
        <p>{comment.email}</p>
        <p>{comment.body}</p>
      </div>
    {/each}
  </section>
</div>
```

### 3. Manejo de errores con página personalizada
**Archivo:** `profile/[id]/+page.ts`
```typescript
import { error } from '@sveltejs/kit';
import type { PageLoad } from './$types';

interface User {
  id: number;
  name: string;
  email: string;
  phone: string;
  website: string;
}

interface UserPost {
  id: number;
  title: string;
  body: string;
}

export const load: PageLoad = async ({ params, fetch }) => {
  const userId = params.id;
  
  if (!userId || isNaN(Number(userId))) {
    throw error(400, 'Invalid user ID');
  }
  
  try {
    const userResponse = await fetch(`https://jsonplaceholder.typicode.com/users/${userId}`);
    
    if (userResponse.status === 404) {
      throw error(404, 'User not found');
    }
    
    if (!userResponse.ok) {
      throw error(userResponse.status, 'Failed to fetch user');
    }
    
    const user: User = await userResponse.json();
    let posts: UserPost[] = [];
    let hasPostsError = false;
    
    try {
      const postsResponse = await fetch(`https://jsonplaceholder.typicode.com/users/${userId}/posts`);
      if (postsResponse.ok) {
        posts = await postsResponse.json();
      } else {
        console.error('Failed to fetch posts');
        hasPostsError = true;
      }
    } catch (err) {
      console.error('Error fetching posts:', err);
      hasPostsError = true;
    }
    
    return { user, posts, hasPostsError: posts.length === 0 };
    
  } catch (fetchError) {
    if (fetchError instanceof Error && 'status' in fetchError) {
      throw fetchError;
    }
    console.error('Unexpected error:', fetchError);
    throw error(500, 'Internal server error');
  }
};
```

**Archivo:** `profile/[id]/+error.svelte`
```svelte
<script lang="ts">
  import { page } from '$app/stores';
  import { goto } from '$app/navigation';
  
  function goBack() {
    history.back();
  }
  
  function goHome() {
    goto('/');
  }
  
  function retry() {
    location.reload();
  }
</script>

<div class="flex flex-col items-center justify-center min-h-screen">
  <div class="text-center">
    <!-- SVG icon here -->
    <h1 class="text-4xl font-bold">
      {$page.status === 404 ? 'Page Not Found' : 
       $page.status === 400 ? 'Bad Request' : 
       'Something went wrong'}
    </h1>
    <p class="mt-4 text-gray-600">
      {$page.error?.message ?? 'An unexpected error occurred'}
    </p>
    
    <div class="mt-8 space-x-4">
      <button onclick={retry} class="px-4 py-2 bg-blue-500 text-white rounded">
        Try Again
      </button>
      <button onclick={goBack} class="px-4 py-2 bg-gray-500 text-white rounded">
        Go Back
      </button>
      <button onclick={goHome} class="px-4 py-2 bg-green-500 text-white rounded">
        Go Home
      </button>
    </div>
  </div>
</div>
```

**Archivo:** `profile/[id]/+page.svelte`
```svelte
<script lang="ts">
  import type { PageData } from './$types';
  let { data }: { data: PageData } = $props();
</script>

<div class="p-4">
  <div>
    <h1 class="text-2xl font-bold">User Profile</h1>
    <div>
      <h2>User Details</h2>
      <p>{data.user.name}</p>
      <p>{data.user.email}</p>
      <p>{data.user.phone}</p>
      <p>{data.user.website}</p>
    </div>
    
    <div>
      <h2>Recent Posts</h2>
      {#if data.hasPostsError}
        <p>Failed to load posts</p>
      {:else if data.posts.length === 0}
        <p>No posts found</p>
      {:else}
        {#each data.posts.slice(0, 3) as post}
          <div>
            <h3>{post.title}</h3>
            <p>{post.body}</p>
          </div>
        {/each}
      {/if}
    </div>
  </div>
</div>
```

### 4. Invalidación de datos con depends() e invalidate()
**Archivo:** `todos/+page.ts`
```typescript
import type { PageLoad } from './$types';

interface Todo {
  id: number;
  title: string;
  completed: boolean;
  userId: number;
}

export const load: PageLoad = async ({ depends, fetch }) => {
  depends('app:todos');
  
  const response = await fetch('https://jsonplaceholder.typicode.com/todos?_limit=10');
  
  if (!response.ok) {
    throw new Error('Failed to fetch todos');
  }
  
  const todos: Todo[] = await response.json();
  return { todos, lastUpdated: new Date().toISOString() };
};
```

**Archivo:** `todos/+page.svelte`
```svelte
<script lang="ts">
  import { invalidate, invalidateAll } from '$app/navigation';
  import { onMount } from 'svelte';
  import type { PageData } from './$types.js';
  
  let { data }: { data: PageData } = $props();
  
  let autoRefresh = $state(false);
  let refreshInterval: ReturnType<typeof setInterval> | null = $state(null);
  
  function refreshTodos() {
    invalidate('app:todos');
  }
  
  function refreshAll() {
    invalidateAll();
  }
  
  function toggleTodo(todoId: number) {
    console.log('Toggle todo:', todoId);
    // En app real: API call aquí
    invalidate('app:todos');
  }
  
  function toggleAutoRefresh() {
    if (autoRefresh) {
      if (refreshInterval) {
        clearInterval(refreshInterval);
        refreshInterval = null;
      }
      autoRefresh = false;
    } else {
      refreshInterval = setInterval(() => {
        invalidate('app:todos');
      }, 5000);
      autoRefresh = true;
    }
  }
  
  onMount(() => {
    return () => {
      if (refreshInterval !== null) {
        clearInterval(refreshInterval);
      }
    };
  });
</script>

<div class="p-4">
  <div>
    <h1 class="text-2xl font-bold">Todos</h1>
    <p>Last updated: {data.lastUpdated}</p>
    
    <div class="space-x-2 mt-4">
      <button onclick={refreshTodos} class="px-3 py-1 bg-blue-500 text-white rounded">
        Refresh Todos
      </button>
      <button onclick={refreshAll} class="px-3 py-1 bg-green-500 text-white rounded">
        Refresh All
      </button>
      <button 
        onclick={toggleAutoRefresh}
        class="px-3 py-1 rounded"
        class:bg-red-500={autoRefresh}
        class:bg-gray-500={!autoRefresh}
        class:text-white={true}
      >
        {autoRefresh ? 'Stop Auto Refresh' : 'Start Auto Refresh'}
      </button>
    </div>
    
    {#each data.todos as todo}
      <div class="flex items-center gap-2 mt-2">
        <input type="checkbox" checked={todo.completed} onchange={() => toggleTodo(todo.id)} />
        <span>{todo.title}</span>
        <span class="text-gray-500 text-sm">(ID: {todo.id})</span>
      </div>
    {/each}
    
    {#if autoRefresh}
      <p class="text-green-600 mt-2">Auto-refreshing every 5 seconds...</p>
    {/if}
  </div>
</div>
```

### 5. Invalidación granular con múltiples dependencias
**Archivo:** `todos/[id]/+page.ts`
```typescript
import type { PageLoad } from './$types';

interface Todo {
  id: number;
  title: string;
  completed: boolean;
  userId: number;
}

interface User {
  id: number;
  name: string;
  email: string;
}

export const load: PageLoad = async ({ params, fetch, url, depends }) => {
  const todoId = params.id;
  
  depends(`app:todo:${todoId}`);
  depends('app:todos');
  depends(url);
  
  const [todoResponse, userResponse] = await Promise.all([
    fetch(`https://jsonplaceholder.typicode.com/todos/${todoId}`),
    fetch(`https://jsonplaceholder.typicode.com/users/1`) // hardcoded para ejemplo
  ]);
  
  if (!todoResponse.ok) {
    throw new Error('Failed to fetch todo');
  }
  
  const todo: Todo = await todoResponse.json();
  const user: User = userResponse.ok 
    ? await userResponse.json()
    : { id: 0, name: 'Unknown', email: 'unknown@example.com' };
  
  return { todo, user, lastUpdated: new Date().toISOString() };
};
```

**Archivo:** `todos/[id]/+page.svelte`
```svelte
<script lang="ts">
  import { invalidate, goto } from '$app/navigation';
  import type { PageData } from './$types';
  
  let { data }: { data: PageData } = $props();
  
  function updateTodo() {
    invalidate(`app:todo:${data.todo.id}`);
  }
  
  function deleteTodo() {
    invalidate('app:todos');
    goto('/todos');
  }
  
  function goBack() {
    goto('/todos');
  }
</script>

<div class="p-4">
  <div>
    <h1 class="text-2xl font-bold">Todo Detail</h1>
    <button onclick={goBack} class="px-3 py-1 bg-gray-500 text-white rounded mb-4">
      Back to Todos
    </button>
    
    <div>
      <h2>Title</h2>
      <p>{data.todo.title}</p>
    </div>
    
    <div>
      <h2>Status</h2>
      <p>{data.todo.completed ? 'Completed' : 'Pending'}</p>
    </div>
    
    <div>
      <h2>User</h2>
      <p>{data.user.name}</p>
      <p>{data.user.email}</p>
    </div>
    
    <p class="text-sm text-gray-500 mt-4">Last updated: {data.lastUpdated}</p>
    
    <div class="mt-4 space-x-2">
      <button onclick={updateTodo} class="px-3 py-1 bg-blue-500 text-white rounded">
        Update Todo
      </button>
      <button onclick={deleteTodo} class="px-3 py-1 bg-red-500 text-white rounded">
        Delete Todo
      </button>
    </div>
  </div>
</div>
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `+page.server.ts`** cuando necesites acceso a variables de entorno, bases de datos, sistema de archivos o secretos del servidor.
- **Usa `+page.ts` (universal)** cuando el fetching pueda hacerse desde cliente o servidor, como APIs públicas.
- **Usa `Promise.all()`** para fetching paralelo de datos independientes; usa `await` secuencial cuando un fetch dependa del resultado de otro.
- **Usa `depends('app:key')`** en load functions para crear claves de invalidación personalizadas.
- **Usa `invalidate('app:key')`** para recargar load functions específicas; usa `invalidateAll()` solo cuando múltiples datos puedan haber cambiado.
- **Usa `throw error(statusCode, message)`** de `@sveltejs/kit` para errores controlados con códigos HTTP.
- **Crea `+error.svelte`** en el mismo nivel de ruta para páginas de error personalizadas.
- **Usa `onMount` con cleanup** (`return () => clearInterval(...)`) para evitar memory leaks con intervalos o suscripciones.
- **Usa `$state()`** para variables reactivas en componentes; usa `$props()` para desestructurar `data` del tipo `PageData`.
- **Nunca** hagas fetch directamente en componentes si puedes usar load functions; la carga previa al render mejora UX y evita flickers.
- **Nunca** olvides verificar `response.ok` después de cada fetch; lanza error con mensaje descriptivo.
- **Nunca** uses `invalidateAll()` cuando solo necesitas recargar una parte específica de los datos; es ineficiente.

## Errores comunes / gotchas que menciona

- **Error de tipos en `$types`**: Si `import type { PageLoad } from './$types'` da error, ejecuta la app (`npm run dev`) para que SvelteKit genere los tipos automáticamente.
- **Olvidar propiedades en interfaces**: Si usas una interfaz que no incluye todas las propiedades que devuelve la API (ej: `Comment` sin `body`), TypeScript lanza error. Debes agregar todas las propiedades que uses.
- **No validar parámetros de ruta**: Si no verificas que `params.id` sea un número válido, puedes recibir errores inesperados. Usa `isNaN(Number(userId))` para validar.
- **No limpiar intervalos**: Si usas `setInterval` para auto-refresh sin cleanup en `onMount`, el intervalo sigue ejecutándose incluso después de que el componente se destruye, causando memory leaks y requests innecesarias.
- **Dependencia cíclica con `depends(url)`**: Pasar `url` como clave de dependencia hace que la load function se re-ejecute automáticamente cuando cambian los parámetros de ruta, lo cual es útil pero puede causar loops si no se maneja con cuidado.
- **Error 404 vs 500**: Distingue entre errores del cliente (404, 400) y del servidor (500) usando `error.status` en la página de error para mostrar mensajes contextuales diferentes.
- **`Promise.all` falla rápido**: Si una promesa en `Promise.all` rechaza, todo el método rechaza inmediatamente. Para manejar fallos parciales, usa try/catch individuales como en el ejemplo de `profile/[id]/+page.ts`.