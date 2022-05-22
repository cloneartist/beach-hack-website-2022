'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "bd49c39091129675358066252786808d",
"assets/assets/fonts/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/assets/fonts/Poppins-ExtraBold.ttf": "544fa4f2678a8285eb88b8dfe503c90c",
"assets/assets/fonts/Poppins-Light.ttf": "f6ea751e936ade6edcd03a26b8153b4a",
"assets/assets/fonts/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/assets/images/148_edited.png": "4e2afea945efaa336dd01bb46fd475ed",
"assets/assets/images/1st.png": "ce66c97b1d60cd60cf61ed514526f3e0",
"assets/assets/images/250+.png": "4216a4edd8ca698dc6327b4261fbe7af",
"assets/assets/images/2nd.png": "3164c32d8f68d52cb28b02e0d49a2e5c",
"assets/assets/images/30.png": "3d13b26f35b14b5644190ff43585c59e",
"assets/assets/images/3rd.png": "962b9f125eef0b00615354881d118e14",
"assets/assets/images/60.png": "855bb4963d85e6d1fbff8e07cbb4a046",
"assets/assets/images/bg_img_bg.jpeg": "8d852b3858cd10f1c706995b7fd4a9e8",
"assets/assets/images/Celo%2520Logo%2520Monochrome%2520Reverse.png": "490f5d0a40a43d1136d2230244703d18",
"assets/assets/images/Devfolio_Logo-White.png": "57de7b65000192557bf80ea224209710",
"assets/assets/images/Discord-Logo-White.svg": "145dc557845548a36a82337912ca3ac5",
"assets/assets/images/fb.png": "1e73fbb5c3f59c31adc7ba3dd0ab04bd",
"assets/assets/images/Filecoin%2520White.png": "50af5a53ea1951426f0d953b060f3b91",
"assets/assets/images/flutter.png": "8ae4f5e1bc7d6f29b5ad7646005aa8e9",
"assets/assets/images/heart.png": "df30b274eef259ee62f471b76522f3dd",
"assets/assets/images/insta.png": "fb46dd2a9a7614492f1802b03b0de374",
"assets/assets/images/linkedin.png": "bc632415b2c8ee35f50a28fcd9311cfb",
"assets/assets/images/load_gif.gif": "c869d82892369c4585ec0c1c1b7e4d41",
"assets/assets/images/Polygon_Logo-White.png": "4440935e92971cf43d96e2386a9c89e9",
"assets/assets/images/svg-path.svg": "2393a3ebf1f323f2d6211eea8b3cf165",
"assets/assets/images/test.png": "6c481ba7e0a1e6dba902789bc014c4c6",
"assets/assets/images/Tezos_Logo-White.png": "a72d28a4d750c52c19f450f89b3f3bf5",
"assets/assets/images/twitter.png": "447298e263f0523b82190920cf0481da",
"assets/FontManifest.json": "93688774dddf8cb5cd0becd9130c8fa5",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/NOTICES": "ef19132852d7bec769374fe811e6d6db",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.ico": "f3ab86696e2581639f99b2ae69435487",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "63e82fdc4a2e0e3c611848a6733c0f16",
"icons/Icon-512.png": "39ddbe0f7706367e63de6548b21b7dda",
"index.html": "c5d7137b308c5a7731fafc770c94b9aa",
"/": "c5d7137b308c5a7731fafc770c94b9aa",
"main.dart.js": "09a972b57d63ae8f606acaaa67132bfe",
"manifest.json": "a9a81ca5a9aad9587eba5cd4fdac6bc8",
"version.json": "614042cbb773fe63f0b1d8bb9b01b3ef"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
