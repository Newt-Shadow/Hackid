package defpackage;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.PluginRegistry;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.jvm.internal.m;
/* renamed from: a  reason: default package */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0000a extends TimerTask {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PluginRegistry f1b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f2c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ a f3d;

        public C0000a(PluginRegistry pluginRegistry, String str, a aVar) {
            this.f1b = pluginRegistry;
            this.f2c = str;
            this.f3d = aVar;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            a.this.a(this.f1b, this.f2c, this.f3d);
        }
    }

    public final void a(PluginRegistry registry, String key, a source) {
        m.e(registry, "registry");
        m.e(key, "key");
        m.e(source, "source");
        if (registry.get(ua.a.class) != null) {
            FlutterPlugin flutterPlugin = registry.get(ua.a.class);
            m.c(flutterPlugin, "null cannot be cast to non-null type com.idsports.image_stream_binder.ImageStreamBinderPlugin");
            ((ua.a) flutterPlugin).b(key, source);
            return;
        }
        new Timer("RegisterAsImageStreamTargetTimer", false).schedule(new C0000a(registry, key, source), 500L);
    }

    public abstract void b(b bVar);
}
