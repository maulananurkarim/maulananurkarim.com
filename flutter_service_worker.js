'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "b1e535cde827b60acc520e5d6917c5ba",
"index.html": "400074001df4b3fd2eae6ca884bba9d4",
"/": "400074001df4b3fd2eae6ca884bba9d4",
"main.dart.js": "aea6f6d0296742e4de53400702539a3c",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "c68d8241eeabd0e58b1bd82d3e0157e7",
"assets/AssetManifest.json": "b7011de13603e799e153b85e3f519580",
"assets/NOTICES": "ccad9bd61edc55a15019ea09021953f2",
"assets/FontManifest.json": "16c485371d373430c1210dc67d792e29",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "f0d392dd6a27f8f1d301c473f9b546b0",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/svg/en.svg": "bd1aa534efbd224b6fcdef2f59b21dde",
"assets/assets/svg/ic_camera.svg": "d0fa898b58b0aa4719550c39ef14429c",
"assets/assets/svg/ic_image.svg": "75d26bc477cf1990a15d65c01ce2d0f5",
"assets/assets/svg/ic_calendar.svg": "084fbc0fc93dba0feaf46ede311d608e",
"assets/assets/svg/ic_file.svg": "00f6d4e132e185f845ef19ac31e6383f",
"assets/assets/svg/id.svg": "4a8a93c3bf5e197615ac499af41a81ef",
"assets/assets/svg/ic_add_file.svg": "efc7d87eefe79561d0d4f3b993865de5",
"assets/assets/images/onboarding1.png": "305095e346d3a9b39585b70af21365fc",
"assets/assets/images/ic_home_active.png": "d3a13a48deec77e7e21abe1bfb1f8a31",
"assets/assets/images/onboarding3.png": "733f466130cf5a15a02899466a9c20cf",
"assets/assets/images/onboarding2.png": "ca2186c426188fb5600a6e81acd772d3",
"assets/assets/images/ic_chats_active.png": "47aac21f19ca7b2ee42eb4d2ae0dbdba",
"assets/assets/images/ic_directory.png": "cec4e27f423d3e621f0e0b0732a0cd35",
"assets/assets/images/ic_profile_active.png": "d4f331684f5c7d3046a5d0c31007edcd",
"assets/assets/images/forgot_password.png": "78ebdc5826cbfaaf330c0f792325a6ce",
"assets/assets/images/ic_feeds.png": "db64c533294d94eb52932d5cf430ca82",
"assets/assets/images/ic_notif_active.png": "307766779c90d70b909e392f4ff9f41b",
"assets/assets/images/decoration_login.png": "3bdc1d29096f69ea2f649eb11236a4bc",
"assets/assets/images/onboarding5.png": "ccc273b8e659721ef0247e6a149b4d41",
"assets/assets/images/ic_nearby.png": "01bc07ec01bbab1d73adf532de49c2dd",
"assets/assets/images/ic_home.png": "31373789e4af681203779cf738649675",
"assets/assets/images/onboarding4.png": "812d6b8ad7a87d222640f23089c4a33f",
"assets/assets/images/banner.png": "fec529841917dcb73ea2cc146b162b12",
"assets/assets/images/ic_clock_out.png": "d83358e314d55a41f44f42bd9ac06437",
"assets/assets/images/ic_shareapp.png": "662b79573bfa4bc2f05cbc5d68995757",
"assets/assets/images/ic_overtime.png": "c62f590e7ebe10c536b0afd3d0c45a36",
"assets/assets/images/user.png": "3e62c017c753b76c8bf82dac8bf23c8d",
"assets/assets/images/ic_temperature.png": "98f0ae4fff01fd81f17bd34dafd3f1c5",
"assets/assets/images/ic_profile.png": "8f55d5a1d855fa01a2c8cd5127068666",
"assets/assets/images/ic_communityinfo.png": "8474b3d5b2465a68d6028934db4a9000",
"assets/assets/images/logo_header.png": "efe09427c0d9a578c4facfbf7651fb2c",
"assets/assets/images/ic_announcement.png": "146a8b9fceca00bcdfcbaa14ac56370b",
"assets/assets/images/ic_clock_in.png": "ad007e3d6966ca572794ae99b775fde0",
"assets/assets/images/ic_payroll.png": "ce6f5a6cec25fc668a16638ead40c9a3",
"assets/assets/images/logo.png": "79a249aebe90106a7585a4b478910a5b",
"assets/assets/images/ic_feeds_active.png": "465c21335dff5ab0a31bc50ac7daa4af",
"assets/assets/images/ic_notif.png": "b4ac5eeb39a3d3f12ac8a73cff9778d0",
"assets/assets/images/ic_blood.png": "707de43edfe0900ff67d93f1a160525f",
"assets/assets/images/ic_events.png": "7a85ae40a8253ac59f4081db5dc5387f",
"assets/assets/images/ic_verified.png": "7a67d5eb17b8af6914dbe4b66f6773bb",
"assets/assets/images/ic_chats.png": "2615b7767b290051699907e5feceaffe",
"assets/assets/images/celsius.png": "645edb732e1497ff5c4415ff84019c3a",
"assets/assets/images/ic_contact_us.png": "f5f54bf3a6b244212ff9b84fe2c62119",
"assets/assets/images/ic_blog.png": "d8df1a82daa1bd6a8422d2ba918a93c0",
"assets/assets/fonts/ProductSans-Medium.ttf": "9c51beb79b8ab173abd924ce39178f0b",
"assets/assets/fonts/ProductSans-Bold.ttf": "a19a7b108b2e3961fc855c6ea5a6546f",
"assets/assets/fonts/ProductSans-Italic.ttf": "af05b47de35fd5a5960ad1e440a4c0c7",
"assets/assets/fonts/ProductSans-Regular.ttf": "b61c0ab33a818a0162f3e868babcef4b",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
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
