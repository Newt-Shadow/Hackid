package d6;

import android.content.Context;
import android.location.Location;
import java.util.HashMap;
import java.util.Map;
import m5.j;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final t f15024a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f15025b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15026c = false;

    /* renamed from: d  reason: collision with root package name */
    private final Map f15027d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final Map f15028e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final Map f15029f = new HashMap();

    public m(Context context, t tVar) {
        this.f15025b = context;
        this.f15024a = tVar;
    }

    public final Location a(String str) {
        ((x) this.f15024a).f15049a.r();
        return ((x) this.f15024a).a().b(str);
    }

    public final Location b() {
        ((x) this.f15024a).f15049a.r();
        return ((x) this.f15024a).a().n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(p pVar, m5.j jVar, g gVar) {
        l lVar;
        ((x) this.f15024a).f15049a.r();
        j.a b10 = jVar.b();
        if (b10 == null) {
            lVar = null;
        } else {
            synchronized (this.f15029f) {
                l lVar2 = (l) this.f15029f.get(b10);
                if (lVar2 == null) {
                    lVar2 = new l(jVar);
                }
                lVar = lVar2;
                this.f15029f.put(b10, lVar);
            }
        }
        l lVar3 = lVar;
        if (lVar3 == null) {
            return;
        }
        ((x) this.f15024a).a().v0(new r(1, pVar, null, null, lVar3, gVar));
    }

    public final void d(j.a aVar, g gVar) {
        ((x) this.f15024a).f15049a.r();
        n5.q.l(aVar, "Invalid null listener key");
        synchronized (this.f15029f) {
            l lVar = (l) this.f15029f.remove(aVar);
            if (lVar != null) {
                lVar.f();
                ((x) this.f15024a).a().v0(r.g(lVar, gVar));
            }
        }
    }

    public final void e(boolean z10) {
        ((x) this.f15024a).f15049a.r();
        ((x) this.f15024a).a().c1(z10);
        this.f15026c = z10;
    }

    public final void f() {
        synchronized (this.f15027d) {
            for (Object obj : this.f15027d.values()) {
                android.support.v4.media.session.b.a(obj);
            }
            this.f15027d.clear();
        }
        synchronized (this.f15029f) {
            for (l lVar : this.f15029f.values()) {
                if (lVar != null) {
                    ((x) this.f15024a).a().v0(r.g(lVar, null));
                }
            }
            this.f15029f.clear();
        }
        synchronized (this.f15028e) {
            for (Object obj2 : this.f15028e.values()) {
                android.support.v4.media.session.b.a(obj2);
            }
            this.f15028e.clear();
        }
    }

    public final void g() {
        if (this.f15026c) {
            e(false);
        }
    }
}
