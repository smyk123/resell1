const CACHE_NAME = 'reselltracker-v1';

self.addEventListener('install', (e) => {
  self.skipWaiting();
});

self.addEventListener('activate', (e) => {
  self.clients.claim();
});

self.addEventListener('fetch', (e) => {
  // A minimal fetch handler is required by Chrome to trigger the "Install" prompt
  e.respondWith(fetch(e.request).catch(() => new Response("Offline")));
});
