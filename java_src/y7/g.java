package y7;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import m6.Task;
import m6.n;
import org.json.JSONObject;
import q7.i0;
import q7.i1;
import q7.j0;
import q7.k0;
import q7.o0;
import y7.g;
/* loaded from: classes.dex */
public class g implements j {

    /* renamed from: a  reason: collision with root package name */
    private final Context f33050a;

    /* renamed from: b  reason: collision with root package name */
    private final k f33051b;

    /* renamed from: c  reason: collision with root package name */
    private final h f33052c;

    /* renamed from: d  reason: collision with root package name */
    private final i0 f33053d;

    /* renamed from: e  reason: collision with root package name */
    private final y7.a f33054e;

    /* renamed from: f  reason: collision with root package name */
    private final l f33055f;

    /* renamed from: g  reason: collision with root package name */
    private final j0 f33056g;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicReference f33057h;

    /* renamed from: i  reason: collision with root package name */
    private final AtomicReference f33058i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements m6.k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r7.i f33059a;

        a(r7.i iVar) {
            this.f33059a = iVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ JSONObject c() {
            return g.this.f33055f.a(g.this.f33051b, true);
        }

        @Override // m6.k
        /* renamed from: d */
        public Task a(Void r52) {
            JSONObject jSONObject = (JSONObject) this.f33059a.f28986d.c().submit(new Callable() { // from class: y7.f
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    JSONObject c10;
                    c10 = g.a.this.c();
                    return c10;
                }
            }).get();
            if (jSONObject != null) {
                d b10 = g.this.f33052c.b(jSONObject);
                g.this.f33054e.c(b10.f33034c, jSONObject);
                g.this.q(jSONObject, "Loaded settings: ");
                g gVar = g.this;
                gVar.r(gVar.f33051b.f33067f);
                g.this.f33057h.set(b10);
                ((m6.l) g.this.f33058i.get()).e(b10);
            }
            return n.e(null);
        }
    }

    g(Context context, k kVar, i0 i0Var, h hVar, y7.a aVar, l lVar, j0 j0Var) {
        AtomicReference atomicReference = new AtomicReference();
        this.f33057h = atomicReference;
        this.f33058i = new AtomicReference(new m6.l());
        this.f33050a = context;
        this.f33051b = kVar;
        this.f33053d = i0Var;
        this.f33052c = hVar;
        this.f33054e = aVar;
        this.f33055f = lVar;
        this.f33056g = j0Var;
        atomicReference.set(b.b(i0Var));
    }

    public static g l(Context context, String str, o0 o0Var, v7.b bVar, String str2, String str3, w7.g gVar, j0 j0Var) {
        String g10 = o0Var.g();
        i1 i1Var = new i1();
        return new g(context, new k(str, o0Var.h(), o0Var.i(), o0Var.j(), o0Var, q7.j.h(q7.j.m(context), str, str3, str2), str3, str2, k0.b(g10).f()), i1Var, new h(i1Var), new y7.a(gVar), new c(String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), bVar), j0Var);
    }

    private d m(e eVar) {
        d dVar = null;
        try {
            if (!e.SKIP_CACHE_LOOKUP.equals(eVar)) {
                JSONObject b10 = this.f33054e.b();
                if (b10 != null) {
                    d b11 = this.f33052c.b(b10);
                    if (b11 != null) {
                        q(b10, "Loaded cached settings: ");
                        long a10 = this.f33053d.a();
                        if (!e.IGNORE_CACHE_EXPIRATION.equals(eVar) && b11.a(a10)) {
                            n7.g.f().i("Cached settings have expired.");
                        }
                        try {
                            n7.g.f().i("Returning cached settings.");
                            dVar = b11;
                        } catch (Exception e10) {
                            e = e10;
                            dVar = b11;
                            n7.g.f().e("Failed to get cached settings", e);
                            return dVar;
                        }
                    } else {
                        n7.g.f().e("Failed to parse cached settings data.", null);
                    }
                } else {
                    n7.g.f().b("No cached settings data found.");
                }
            }
        } catch (Exception e11) {
            e = e11;
        }
        return dVar;
    }

    private String n() {
        return q7.j.q(this.f33050a).getString("existing_instance_identifier", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(JSONObject jSONObject, String str) {
        n7.g f10 = n7.g.f();
        f10.b(str + jSONObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(String str) {
        SharedPreferences.Editor edit = q7.j.q(this.f33050a).edit();
        edit.putString("existing_instance_identifier", str);
        edit.apply();
        return true;
    }

    @Override // y7.j
    public Task a() {
        return ((m6.l) this.f33058i.get()).a();
    }

    @Override // y7.j
    public d b() {
        return (d) this.f33057h.get();
    }

    boolean k() {
        return !n().equals(this.f33051b.f33067f);
    }

    public Task o(r7.i iVar) {
        return p(e.USE_CACHE, iVar);
    }

    public Task p(e eVar, r7.i iVar) {
        d m10;
        if (!k() && (m10 = m(eVar)) != null) {
            this.f33057h.set(m10);
            ((m6.l) this.f33058i.get()).e(m10);
            return n.e(null);
        }
        d m11 = m(e.IGNORE_CACHE_EXPIRATION);
        if (m11 != null) {
            this.f33057h.set(m11);
            ((m6.l) this.f33058i.get()).e(m11);
        }
        return this.f33056g.k().q(iVar.f28983a, new a(iVar));
    }
}
