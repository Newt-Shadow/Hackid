package defpackage;

import android.media.Image;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.PluginRegistry;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.jvm.internal.m;
/* renamed from: b  reason: default package */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: b$a */
    /* loaded from: classes.dex */
    public static final class a extends TimerTask {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PluginRegistry f3664b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f3665c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ b f3666d;

        public a(PluginRegistry pluginRegistry, String str, b bVar) {
            this.f3664b = pluginRegistry;
            this.f3665c = str;
            this.f3666d = bVar;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            b.this.b(this.f3664b, this.f3665c, this.f3666d);
        }
    }

    public abstract void a(Image image);

    public final void b(PluginRegistry registry, String key, b source) {
        m.e(registry, "registry");
        m.e(key, "key");
        m.e(source, "source");
        if (registry.get(ua.a.class) != null) {
            FlutterPlugin flutterPlugin = registry.get(ua.a.class);
            m.c(flutterPlugin, "null cannot be cast to non-null type com.idsports.image_stream_binder.ImageStreamBinderPlugin");
            ((ua.a) flutterPlugin).c(key, source);
            return;
        }
        new Timer("RegisterAsImageStreamTargetTimer", false).schedule(new a(registry, key, source), 500L);
    }
}
