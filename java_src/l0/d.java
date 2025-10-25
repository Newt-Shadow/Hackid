package l0;

import af.k;
import af.s0;
import id.Function2;
import j0.j0;
import j0.k0;
import j0.t;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
/* loaded from: classes.dex */
public final class d implements j0 {

    /* renamed from: f  reason: collision with root package name */
    public static final b f24999f = new b(null);

    /* renamed from: g  reason: collision with root package name */
    private static final Set f25000g = new LinkedHashSet();

    /* renamed from: h  reason: collision with root package name */
    private static final h f25001h = new h();

    /* renamed from: a  reason: collision with root package name */
    private final k f25002a;

    /* renamed from: b  reason: collision with root package name */
    private final l0.c f25003b;

    /* renamed from: c  reason: collision with root package name */
    private final Function2 f25004c;

    /* renamed from: d  reason: collision with root package name */
    private final id.a f25005d;

    /* renamed from: e  reason: collision with root package name */
    private final xc.d f25006e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        public static final a f25007e = new a();

        a() {
            super(2);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final t invoke(s0 path, k kVar) {
            m.e(path, "path");
            m.e(kVar, "<anonymous parameter 1>");
            return f.a(path);
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Set a() {
            return d.f25000g;
        }

        public final h b() {
            return d.f25001h;
        }
    }

    /* loaded from: classes.dex */
    static final class c extends n implements id.a {
        c() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final s0 invoke() {
            s0 s0Var = (s0) d.this.f25005d.invoke();
            boolean j10 = s0Var.j();
            d dVar = d.this;
            if (j10) {
                return s0Var.n();
            }
            throw new IllegalStateException(("OkioStorage requires absolute paths, but did not get an absolute path from producePath = " + dVar.f25005d + ", instead got " + s0Var).toString());
        }
    }

    /* renamed from: l0.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0236d extends n implements id.a {
        C0236d() {
            super(0);
        }

        public final void b() {
            b bVar = d.f24999f;
            h b10 = bVar.b();
            d dVar = d.this;
            synchronized (b10) {
                bVar.a().remove(dVar.f().toString());
                xc.t tVar = xc.t.f32733a;
            }
        }

        @Override // id.a
        public /* bridge */ /* synthetic */ Object invoke() {
            b();
            return xc.t.f32733a;
        }
    }

    public d(k fileSystem, l0.c serializer, Function2 coordinatorProducer, id.a producePath) {
        xc.d a10;
        m.e(fileSystem, "fileSystem");
        m.e(serializer, "serializer");
        m.e(coordinatorProducer, "coordinatorProducer");
        m.e(producePath, "producePath");
        this.f25002a = fileSystem;
        this.f25003b = serializer;
        this.f25004c = coordinatorProducer;
        this.f25005d = producePath;
        a10 = xc.f.a(new c());
        this.f25006e = a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final s0 f() {
        return (s0) this.f25006e.getValue();
    }

    @Override // j0.j0
    public k0 a() {
        String s0Var = f().toString();
        synchronized (f25001h) {
            Set set = f25000g;
            if (!set.contains(s0Var)) {
                set.add(s0Var);
            } else {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + s0Var + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
        }
        return new e(this.f25002a, f(), this.f25003b, (t) this.f25004c.invoke(f(), this.f25002a), new C0236d());
    }

    public /* synthetic */ d(k kVar, l0.c cVar, Function2 function2, id.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(kVar, cVar, (i10 & 4) != 0 ? a.f25007e : function2, aVar);
    }
}
