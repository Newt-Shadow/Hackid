package io.flutter.plugins.firebase.core;

import androidx.annotation.Keep;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import m6.Task;
@Keep
/* loaded from: classes2.dex */
public class FlutterFirebasePluginRegistry {
    private static final Map<String, FlutterFirebasePlugin> registeredPlugins = new WeakHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Task didReinitializeFirebaseCore() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.core.j
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebasePluginRegistry.lambda$didReinitializeFirebaseCore$1(m6.l.this);
            }
        });
        return lVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Task getPluginConstantsForFirebaseApp(final h7.f fVar) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.core.k
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebasePluginRegistry.lambda$getPluginConstantsForFirebaseApp$0(h7.f.this, lVar);
            }
        });
        return lVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$didReinitializeFirebaseCore$1(m6.l lVar) {
        try {
            for (Map.Entry<String, FlutterFirebasePlugin> entry : registeredPlugins.entrySet()) {
                m6.n.a(entry.getValue().didReinitializeFirebaseCore());
            }
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getPluginConstantsForFirebaseApp$0(h7.f fVar, m6.l lVar) {
        try {
            Map<String, FlutterFirebasePlugin> map = registeredPlugins;
            HashMap hashMap = new HashMap(map.size());
            for (Map.Entry<String, FlutterFirebasePlugin> entry : map.entrySet()) {
                hashMap.put(entry.getKey(), m6.n.a(entry.getValue().getPluginConstantsForFirebaseApp(fVar)));
            }
            lVar.c(hashMap);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    public static void registerPlugin(String str, FlutterFirebasePlugin flutterFirebasePlugin) {
        registeredPlugins.put(str, flutterFirebasePlugin);
    }
}
