package v1;

import android.content.Context;
import androidx.window.extensions.layout.WindowLayoutComponent;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.m;
import xc.t;
/* loaded from: classes.dex */
public final class e implements u1.a {

    /* renamed from: a  reason: collision with root package name */
    private final WindowLayoutComponent f31163a;

    /* renamed from: b  reason: collision with root package name */
    private final ReentrantLock f31164b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f31165c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f31166d;

    public e(WindowLayoutComponent component) {
        m.e(component, "component");
        this.f31163a = component;
        this.f31164b = new ReentrantLock();
        this.f31165c = new LinkedHashMap();
        this.f31166d = new LinkedHashMap();
    }

    @Override // u1.a
    public void a(c0.a callback) {
        m.e(callback, "callback");
        ReentrantLock reentrantLock = this.f31164b;
        reentrantLock.lock();
        try {
            Context context = (Context) this.f31166d.get(callback);
            if (context == null) {
                return;
            }
            g gVar = (g) this.f31165c.get(context);
            if (gVar == null) {
                return;
            }
            gVar.d(callback);
            this.f31166d.remove(callback);
            if (gVar.c()) {
                this.f31165c.remove(context);
                this.f31163a.removeWindowLayoutInfoListener(gVar);
            }
            t tVar = t.f32733a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // u1.a
    public void b(Context context, Executor executor, c0.a callback) {
        t tVar;
        m.e(context, "context");
        m.e(executor, "executor");
        m.e(callback, "callback");
        ReentrantLock reentrantLock = this.f31164b;
        reentrantLock.lock();
        try {
            g gVar = (g) this.f31165c.get(context);
            if (gVar != null) {
                gVar.b(callback);
                this.f31166d.put(callback, context);
                tVar = t.f32733a;
            } else {
                tVar = null;
            }
            if (tVar == null) {
                g gVar2 = new g(context);
                this.f31165c.put(context, gVar2);
                this.f31166d.put(callback, context);
                gVar2.b(callback);
                this.f31163a.addWindowLayoutInfoListener(context, gVar2);
            }
            t tVar2 = t.f32733a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
