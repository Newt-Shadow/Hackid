package androidx.activity;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f564a;

    /* renamed from: b  reason: collision with root package name */
    private final id.a f565b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f566c;

    /* renamed from: d  reason: collision with root package name */
    private int f567d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f568e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f569f;

    /* renamed from: g  reason: collision with root package name */
    private final List f570g;

    /* renamed from: h  reason: collision with root package name */
    private final Runnable f571h;

    public t(Executor executor, id.a reportFullyDrawn) {
        kotlin.jvm.internal.m.e(executor, "executor");
        kotlin.jvm.internal.m.e(reportFullyDrawn, "reportFullyDrawn");
        this.f564a = executor;
        this.f565b = reportFullyDrawn;
        this.f566c = new Object();
        this.f570g = new ArrayList();
        this.f571h = new Runnable() { // from class: androidx.activity.s
            @Override // java.lang.Runnable
            public final void run() {
                t.d(t.this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(t tVar) {
        synchronized (tVar.f566c) {
            tVar.f568e = false;
            if (tVar.f567d == 0 && !tVar.f569f) {
                tVar.f565b.invoke();
                tVar.b();
            }
            xc.t tVar2 = xc.t.f32733a;
        }
    }

    public final void b() {
        synchronized (this.f566c) {
            this.f569f = true;
            for (id.a aVar : this.f570g) {
                aVar.invoke();
            }
            this.f570g.clear();
            xc.t tVar = xc.t.f32733a;
        }
    }

    public final boolean c() {
        boolean z10;
        synchronized (this.f566c) {
            z10 = this.f569f;
        }
        return z10;
    }
}
