package io.sentry.config;

import io.sentry.util.w;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
final class d implements f {
    private String h(String str) {
        return "SENTRY_" + str.replace(".", "_").replace("-", "_").toUpperCase(Locale.ROOT);
    }

    @Override // io.sentry.config.f
    public Map a(String str) {
        String f10;
        String str2 = h(str) + "_";
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (Map.Entry<String, String> entry : System.getenv().entrySet()) {
            String key = entry.getKey();
            if (key.startsWith(str2) && (f10 = w.f(entry.getValue(), "\"")) != null) {
                concurrentHashMap.put(key.substring(str2.length()).toLowerCase(Locale.ROOT), f10);
            }
        }
        return concurrentHashMap;
    }

    @Override // io.sentry.config.f
    public String b(String str) {
        return w.f(System.getenv(h(str)), "\"");
    }
}
