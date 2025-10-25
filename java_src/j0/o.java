package j0;

import java.io.File;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class o implements j0 {

    /* renamed from: d  reason: collision with root package name */
    public static final b f24201d = new b(null);

    /* renamed from: e  reason: collision with root package name */
    private static final Set f24202e = new LinkedHashSet();

    /* renamed from: f  reason: collision with root package name */
    private static final Object f24203f = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final e0 f24204a;

    /* renamed from: b  reason: collision with root package name */
    private final id.l f24205b;

    /* renamed from: c  reason: collision with root package name */
    private final id.a f24206c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: e  reason: collision with root package name */
        public static final a f24207e = new a();

        a() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final t invoke(File it) {
            kotlin.jvm.internal.m.e(it, "it");
            return v.a(it);
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
            return o.f24202e;
        }

        public final Object b() {
            return o.f24203f;
        }
    }

    /* loaded from: classes.dex */
    static final class c extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ File f24208e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(File file) {
            super(0);
            this.f24208e = file;
        }

        public final void b() {
            b bVar = o.f24201d;
            Object b10 = bVar.b();
            File file = this.f24208e;
            synchronized (b10) {
                bVar.a().remove(file.getAbsolutePath());
                xc.t tVar = xc.t.f32733a;
            }
        }

        @Override // id.a
        public /* bridge */ /* synthetic */ Object invoke() {
            b();
            return xc.t.f32733a;
        }
    }

    public o(e0 serializer, id.l coordinatorProducer, id.a produceFile) {
        kotlin.jvm.internal.m.e(serializer, "serializer");
        kotlin.jvm.internal.m.e(coordinatorProducer, "coordinatorProducer");
        kotlin.jvm.internal.m.e(produceFile, "produceFile");
        this.f24204a = serializer;
        this.f24205b = coordinatorProducer;
        this.f24206c = produceFile;
    }

    @Override // j0.j0
    public k0 a() {
        File file = ((File) this.f24206c.invoke()).getCanonicalFile();
        synchronized (f24203f) {
            String path = file.getAbsolutePath();
            Set set = f24202e;
            if (!set.contains(path)) {
                kotlin.jvm.internal.m.d(path, "path");
                set.add(path);
            } else {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + path + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
        }
        kotlin.jvm.internal.m.d(file, "file");
        return new p(file, this.f24204a, (t) this.f24205b.invoke(file), new c(file));
    }

    public /* synthetic */ o(e0 e0Var, id.l lVar, id.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(e0Var, (i10 & 2) != 0 ? a.f24207e : lVar, aVar);
    }
}
