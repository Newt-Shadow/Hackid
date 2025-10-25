package i8;

import android.content.Context;
import android.util.Base64OutputStream;
import i8.j;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import k7.e0;
import m6.Task;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f implements i, j {

    /* renamed from: a  reason: collision with root package name */
    private final k8.b f17336a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f17337b;

    /* renamed from: c  reason: collision with root package name */
    private final k8.b f17338c;

    /* renamed from: d  reason: collision with root package name */
    private final Set f17339d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f17340e;

    private f(final Context context, final String str, Set set, k8.b bVar, Executor executor) {
        this(new k7.w(new k8.b() { // from class: i8.e
            @Override // k8.b
            public final Object get() {
                v j10;
                j10 = f.j(context, str);
                return j10;
            }
        }), set, executor, bVar, context);
    }

    public static k7.c g() {
        final e0 a10 = e0.a(j7.a.class, Executor.class);
        return k7.c.d(f.class, i.class, j.class).b(k7.q.k(Context.class)).b(k7.q.k(h7.f.class)).b(k7.q.o(g.class)).b(k7.q.m(s8.i.class)).b(k7.q.l(a10)).f(new k7.g() { // from class: i8.b
            @Override // k7.g
            public final Object a(k7.d dVar) {
                f h10;
                h10 = f.h(e0.this, dVar);
                return h10;
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f h(e0 e0Var, k7.d dVar) {
        return new f((Context) dVar.get(Context.class), ((h7.f) dVar.get(h7.f.class)).s(), dVar.f(g.class), dVar.a(s8.i.class), (Executor) dVar.b(e0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String i() {
        String byteArrayOutputStream;
        synchronized (this) {
            v vVar = (v) this.f17336a.get();
            List g10 = vVar.g();
            vVar.f();
            JSONArray jSONArray = new JSONArray();
            for (int i10 = 0; i10 < g10.size(); i10++) {
                w wVar = (w) g10.get(i10);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("agent", wVar.c());
                jSONObject.put("dates", new JSONArray((Collection) wVar.b()));
                jSONArray.put(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("heartbeats", jSONArray);
            jSONObject2.put("version", "2");
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
            try {
                gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                gZIPOutputStream.close();
                base64OutputStream.close();
                byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return byteArrayOutputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ v j(Context context, String str) {
        return new v(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void k() {
        synchronized (this) {
            ((v) this.f17336a.get()).s(System.currentTimeMillis(), ((s8.i) this.f17338c.get()).getUserAgent());
        }
        return null;
    }

    @Override // i8.i
    public Task a() {
        if (!z.o.a(this.f17337b)) {
            return m6.n.e("");
        }
        return m6.n.c(this.f17340e, new Callable() { // from class: i8.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String i10;
                i10 = f.this.i();
                return i10;
            }
        });
    }

    @Override // i8.j
    public synchronized j.a b(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        v vVar = (v) this.f17336a.get();
        if (vVar.q(currentTimeMillis)) {
            vVar.o();
            return j.a.GLOBAL;
        }
        return j.a.NONE;
    }

    public Task l() {
        if (this.f17339d.size() <= 0) {
            return m6.n.e(null);
        }
        if (!z.o.a(this.f17337b)) {
            return m6.n.e(null);
        }
        return m6.n.c(this.f17340e, new Callable() { // from class: i8.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void k10;
                k10 = f.this.k();
                return k10;
            }
        });
    }

    f(k8.b bVar, Set set, Executor executor, k8.b bVar2, Context context) {
        this.f17336a = bVar;
        this.f17339d = set;
        this.f17340e = executor;
        this.f17338c = bVar2;
        this.f17337b = context;
    }
}
