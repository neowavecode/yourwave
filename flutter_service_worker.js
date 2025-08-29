'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/config": "cc440bcf2e0ae7851310dfef2cd73bd7",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "2d45c87137b0c7bd66649679a111afdf",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "62f648d683198986f26091f946b51f5b",
".git/logs/refs/heads/gh-pages": "731adce918d170fb86969da22b6c0eae",
".git/logs/refs/heads/main": "ed3047cd6caedfa5f0c55cdaac89c7e1",
".git/logs/refs/remotes/origin/HEAD": "ed3047cd6caedfa5f0c55cdaac89c7e1",
".git/objects/pack/pack-a2410f38c67a1d06250962e7909c075a592c6356.idx": "a6895fd723ca1da4276eb147b8ae44c7",
".git/objects/pack/pack-a2410f38c67a1d06250962e7909c075a592c6356.pack": "0b7bf5b682175b7c679cf534525b1ab8",
".git/objects/pack/pack-a2410f38c67a1d06250962e7909c075a592c6356.rev": "49778c0a556817ab2c9cce117df8aade",
".git/packed-refs": "a77cfac4716a10c9ba9c40a875444caf",
".git/refs/heads/gh-pages": "7b6d799c24b1a21cd8ca348f04c11844",
".git/refs/heads/main": "3a15bf7dd54e45464fe0f4acb86c9795",
".git/refs/remotes/origin/HEAD": "98b16e0b650190870f1b40bc8f4aec4e",
"app-ads.txt": "306f3cb2295002f2d0563c32d9f1b339",
"assets/AssetManifest.bin": "f95de0cb163d90ffca5d7c83d9468869",
"assets/AssetManifest.bin.json": "a98301114b2783e843b8ba3f934c0d75",
"assets/AssetManifest.json": "450b4320177d9e91281d353fec5d3094",
"assets/assets/applebadge.png": "61b3e19cc791b5cae449c13b1a97d94e",
"assets/assets/googlebadge.png": "e6d552c5deec92675d47f9b89d816ab8",
"assets/assets/icon_android.png": "f53e199dbfccaaaea2b63c20887a96c8",
"assets/assets/images/10.png": "2473d5a436bbbfa31dc3c0d519240f03",
"assets/assets/images/Confirm.png": "aad4b1b44cbbc599229eca0e5b0d0982",
"assets/assets/images/ConfirmChangeEmail.png": "3d16766d74a4a1a5e447fe40ea62633d",
"assets/assets/images/ConfirmReautentication.png": "e9fbc2473cf9918fb0b96f731624362c",
"assets/assets/images/ConfirmYourSignup.png": "5275c85ce6cf7fa44165c68675b807cd",
"assets/assets/images/fondo.png": "c274d61e1591656b3b488f4c70c21545",
"assets/assets/images/footer.png": "b0d0d292b50bf4355385e06545ea090e",
"assets/assets/images/InvitedUser.png": "8ff880984f902b5a02095dc26b117882",
"assets/assets/images/MagicLink.png": "c5936f83e741e0c5611893fd846002dc",
"assets/assets/images/ResetPassword.png": "099b10e2af6ceb95be368c5161c3432a",
"assets/assets/politica_de_privacidad_en.html": "c76872cef13fee58cba237117df532d4",
"assets/assets/politica_de_privacidad_es.html": "d5fd391c09aefe5851785e2ba711f83e",
"assets/assets/pro.html": "9b7b0e05fbaf8438c92d53c50a581c08",
"assets/assets/safety.html": "f009530d2959ec8d7e53eac04c604e88",
"assets/faq.html": "5023a7b704175980a183efedc8b459be",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "7a16faff1e2ee27e8d14862292dfc332",
"assets/NOTICES": "9e7b9ecca212a226855f3a6ee4598447",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "dbc04bb4389942741e1ed3ab822e1197",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/politica_de_privacidad_en.html": "cbee50d082b90cd67edce64e38281e1e",
"assets/politica_de_privacidad_es.html": "387b5bc43aeacf364688cd2ce010d778",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"CNAME": "d3aad101677df3710466dbe67f3c8404",
"favicon.png": "840b8676ce8b329b0453702f22d427bc",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "07a56b98429dafadcd7c3ba2adb2d1c6",
"icons/Icon-192.png": "474bf9cfee416981bf4111d447e2d8ba",
"icons/Icon-512.png": "39014811e4d3e1ad915cb8b86e927487",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "0fb877bcafb50444a03c17a37f230ea4",
"/": "0fb877bcafb50444a03c17a37f230ea4",
"main.dart.js": "9f624adaa54e5f75a12f262e4d8f8321",
"manifest.json": "4734db19b089f1a4d7b37fdc9824bcd2",
"version.json": "991c0e8ddb99a6284f4505711e367bfb"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
