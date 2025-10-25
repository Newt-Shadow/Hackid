package v1;

import android.app.Activity;
import android.content.Context;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.extensions.layout.WindowLayoutInfo;
import id.l;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import q1.d;
import xc.t;
import yc.o;
/* loaded from: classes.dex */
public final class d implements u1.a {

    /* renamed from: a  reason: collision with root package name */
    private final WindowLayoutComponent f31157a;

    /* renamed from: b  reason: collision with root package name */
    private final q1.d f31158b;

    /* renamed from: c  reason: collision with root package name */
    private final ReentrantLock f31159c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f31160d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f31161e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f31162f;

    /* loaded from: classes.dex */
    /* synthetic */ class a extends k implements l {
        a(Object obj) {
            super(1, obj, g.class, "accept", "accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V", 0);
        }

        public final void f(WindowLayoutInfo p02) {
            m.e(p02, "p0");
            ((g) this.receiver).accept(p02);
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            f((WindowLayoutInfo) obj);
            return t.f32733a;
        }
    }

    public d(WindowLayoutComponent component, q1.d consumerAdapter) {
        m.e(component, "component");
        m.e(consumerAdapter, "consumerAdapter");
        this.f31157a = component;
        this.f31158b = consumerAdapter;
        this.f31159c = new ReentrantLock();
        this.f31160d = new LinkedHashMap();
        this.f31161e = new LinkedHashMap();
        this.f31162f = new LinkedHashMap();
    }

    @Override // u1.a
    public void a(c0.a callback) {
        m.e(callback, "callback");
        ReentrantLock reentrantLock = this.f31159c;
        reentrantLock.lock();
        try {
            Context context = (Context) this.f31161e.get(callback);
            if (context == null) {
                return;
            }
            g gVar = (g) this.f31160d.get(context);
            if (gVar == null) {
                return;
            }
            gVar.d(callback);
            this.f31161e.remove(callback);
            if (gVar.c()) {
                this.f31160d.remove(context);
                d.b bVar = (d.b) this.f31162f.remove(gVar);
                if (bVar != null) {
                    bVar.dispose();
                }
            }
            t tVar = t.f32733a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // u1.a
    public void b(Context context, Executor executor, c0.a callback) {
        t tVar;
        List h10;
        m.e(context, "context");
        m.e(executor, "executor");
        m.e(callback, "callback");
        ReentrantLock reentrantLock = this.f31159c;
        reentrantLock.lock();
        try {
            g gVar = (g) this.f31160d.get(context);
            if (gVar != null) {
                gVar.b(callback);
                this.f31161e.put(callback, context);
                tVar = t.f32733a;
            } else {
                tVar = null;
            }
            if (tVar == null) {
                g gVar2 = new g(context);
                this.f31160d.put(context, gVar2);
                this.f31161e.put(callback, context);
                gVar2.b(callback);
                if (!(context instanceof Activity)) {
                    h10 = o.h();
                    gVar2.accept(new WindowLayoutInfo(h10));
                    return;
                }
                this.f31162f.put(gVar2, this.f31158b.c(this.f31157a, d0.b(WindowLayoutInfo.class), "addWindowLayoutInfoListener", "removeWindowLayoutInfoListener", (Activity) context, new a(gVar2)));
            }
            t tVar2 = t.f32733a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
