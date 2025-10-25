package h7;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.provider.FirebaseInitProvider;
import io.flutter.plugins.firebase.analytics.Constants;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import k7.n;
import k7.w;
import m5.c;
import n5.q;
/* loaded from: classes.dex */
public class f {

    /* renamed from: k  reason: collision with root package name */
    private static final Object f16864k = new Object();

    /* renamed from: l  reason: collision with root package name */
    static final Map f16865l = new r.a();

    /* renamed from: a  reason: collision with root package name */
    private final Context f16866a;

    /* renamed from: b  reason: collision with root package name */
    private final String f16867b;

    /* renamed from: c  reason: collision with root package name */
    private final n f16868c;

    /* renamed from: d  reason: collision with root package name */
    private final k7.n f16869d;

    /* renamed from: g  reason: collision with root package name */
    private final w f16872g;

    /* renamed from: h  reason: collision with root package name */
    private final k8.b f16873h;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f16870e = new AtomicBoolean(false);

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f16871f = new AtomicBoolean();

    /* renamed from: i  reason: collision with root package name */
    private final List f16874i = new CopyOnWriteArrayList();

    /* renamed from: j  reason: collision with root package name */
    private final List f16875j = new CopyOnWriteArrayList();

    /* loaded from: classes.dex */
    public interface a {
        void a(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements c.a {

        /* renamed from: a  reason: collision with root package name */
        private static AtomicReference f16876a = new AtomicReference();

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void c(Context context) {
            if (com.google.android.gms.common.util.k.a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f16876a.get() == null) {
                    b bVar = new b();
                    if (o1.c.a(f16876a, null, bVar)) {
                        m5.c.c(application);
                        m5.c.b().a(bVar);
                    }
                }
            }
        }

        @Override // m5.c.a
        public void a(boolean z10) {
            synchronized (f.f16864k) {
                Iterator it = new ArrayList(f.f16865l.values()).iterator();
                while (it.hasNext()) {
                    f fVar = (f) it.next();
                    if (fVar.f16870e.get()) {
                        fVar.C(z10);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference f16877b = new AtomicReference();

        /* renamed from: a  reason: collision with root package name */
        private final Context f16878a;

        public c(Context context) {
            this.f16878a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (f16877b.get() == null) {
                c cVar = new c(context);
                if (o1.c.a(f16877b, null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.f16878a.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (f.f16864k) {
                for (f fVar : f.f16865l.values()) {
                    fVar.t();
                }
            }
            c();
        }
    }

    protected f(final Context context, String str, n nVar) {
        this.f16866a = (Context) q.k(context);
        this.f16867b = q.e(str);
        this.f16868c = (n) q.k(nVar);
        o b10 = FirebaseInitProvider.b();
        y8.c.b("Firebase");
        y8.c.b("ComponentDiscovery");
        List b11 = k7.f.c(context, ComponentDiscoveryService.class).b();
        y8.c.a();
        y8.c.b("Runtime");
        n.b g10 = k7.n.l(l7.l.INSTANCE).d(b11).c(new FirebaseCommonRegistrar()).c(new ExecutorsRegistrar()).b(k7.c.s(context, Context.class, new Class[0])).b(k7.c.s(this, f.class, new Class[0])).b(k7.c.s(nVar, n.class, new Class[0])).g(new y8.b());
        if (z.o.a(context) && FirebaseInitProvider.c()) {
            g10.b(k7.c.s(b10, o.class, new Class[0]));
        }
        k7.n e10 = g10.e();
        this.f16869d = e10;
        y8.c.a();
        this.f16872g = new w(new k8.b() { // from class: h7.d
            @Override // k8.b
            public final Object get() {
                p8.a z10;
                z10 = f.this.z(context);
                return z10;
            }
        });
        this.f16873h = e10.a(i8.f.class);
        g(new a() { // from class: h7.e
            @Override // h7.f.a
            public final void a(boolean z10) {
                f.this.A(z10);
            }
        });
        y8.c.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(boolean z10) {
        if (!z10) {
            ((i8.f) this.f16873h.get()).l();
        }
    }

    private static String B(String str) {
        return str.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(boolean z10) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (a aVar : this.f16874i) {
            aVar.a(z10);
        }
    }

    private void D() {
        for (g gVar : this.f16875j) {
            gVar.a(this.f16867b, this.f16868c);
        }
    }

    private void i() {
        q.o(!this.f16871f.get(), "FirebaseApp was deleted");
    }

    private static List l() {
        ArrayList arrayList = new ArrayList();
        synchronized (f16864k) {
            for (f fVar : f16865l.values()) {
                arrayList.add(fVar.q());
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static List n(Context context) {
        ArrayList arrayList;
        synchronized (f16864k) {
            arrayList = new ArrayList(f16865l.values());
        }
        return arrayList;
    }

    public static f o() {
        f fVar;
        synchronized (f16864k) {
            fVar = (f) f16865l.get("[DEFAULT]");
            if (fVar != null) {
                ((i8.f) fVar.f16873h.get()).l();
            } else {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + com.google.android.gms.common.util.n.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return fVar;
    }

    public static f p(String str) {
        f fVar;
        List l10;
        String str2;
        synchronized (f16864k) {
            fVar = (f) f16865l.get(B(str));
            if (fVar != null) {
                ((i8.f) fVar.f16873h.get()).l();
            } else {
                if (l().isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "Available app names: " + TextUtils.join(", ", l10);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, str2));
            }
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (!z.o.a(this.f16866a)) {
            Log.i("FirebaseApp", "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + q());
            c.b(this.f16866a);
            return;
        }
        Log.i("FirebaseApp", "Device unlocked: initializing all Firebase APIs for app " + q());
        this.f16869d.o(y());
        ((i8.f) this.f16873h.get()).l();
    }

    public static f u(Context context) {
        synchronized (f16864k) {
            if (f16865l.containsKey("[DEFAULT]")) {
                return o();
            }
            n a10 = n.a(context);
            if (a10 == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return v(context, a10);
        }
    }

    public static f v(Context context, n nVar) {
        return w(context, nVar, "[DEFAULT]");
    }

    public static f w(Context context, n nVar, String str) {
        boolean z10;
        f fVar;
        b.c(context);
        String B = B(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f16864k) {
            Map map = f16865l;
            if (!map.containsKey(B)) {
                z10 = true;
            } else {
                z10 = false;
            }
            q.o(z10, "FirebaseApp name " + B + " already exists!");
            q.l(context, "Application context cannot be null.");
            fVar = new f(context, B, nVar);
            map.put(B, fVar);
        }
        fVar.t();
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ p8.a z(Context context) {
        return new p8.a(context, s(), (h8.c) this.f16869d.get(h8.c.class));
    }

    public void E(boolean z10) {
        i();
        if (this.f16870e.compareAndSet(!z10, z10)) {
            boolean d10 = m5.c.b().d();
            if (z10 && d10) {
                C(true);
            } else if (!z10 && d10) {
                C(false);
            }
        }
    }

    public void F(Boolean bool) {
        i();
        ((p8.a) this.f16872g.get()).e(bool);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        return this.f16867b.equals(((f) obj).q());
    }

    public void g(a aVar) {
        i();
        if (this.f16870e.get() && m5.c.b().d()) {
            aVar.a(true);
        }
        this.f16874i.add(aVar);
    }

    public void h(g gVar) {
        i();
        q.k(gVar);
        this.f16875j.add(gVar);
    }

    public int hashCode() {
        return this.f16867b.hashCode();
    }

    public void j() {
        if (!this.f16871f.compareAndSet(false, true)) {
            return;
        }
        synchronized (f16864k) {
            f16865l.remove(this.f16867b);
        }
        D();
    }

    public Object k(Class cls) {
        i();
        return this.f16869d.get(cls);
    }

    public Context m() {
        i();
        return this.f16866a;
    }

    public String q() {
        i();
        return this.f16867b;
    }

    public n r() {
        i();
        return this.f16868c;
    }

    public String s() {
        return com.google.android.gms.common.util.c.a(q().getBytes(Charset.defaultCharset())) + "+" + com.google.android.gms.common.util.c.a(r().c().getBytes(Charset.defaultCharset()));
    }

    public String toString() {
        return n5.o.c(this).a(Constants.NAME, this.f16867b).a("options", this.f16868c).toString();
    }

    public boolean x() {
        i();
        return ((p8.a) this.f16872g.get()).b();
    }

    public boolean y() {
        return "[DEFAULT]".equals(q());
    }
}
