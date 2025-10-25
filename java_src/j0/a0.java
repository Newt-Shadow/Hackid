package j0;

import android.os.FileObserver;
import id.Function2;
import j0.a0;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import td.a1;
/* loaded from: classes.dex */
public final class a0 extends FileObserver {

    /* renamed from: c  reason: collision with root package name */
    public static final a f23967c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private static final Object f23968d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static final Map f23969e = new LinkedHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final String f23970a;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList f23971b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: j0.a0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static final class C0213a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            Object f23972a;

            /* renamed from: b  reason: collision with root package name */
            int f23973b;

            /* renamed from: c  reason: collision with root package name */
            private /* synthetic */ Object f23974c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ File f23975d;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: j0.a0$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0214a extends kotlin.jvm.internal.n implements id.a {

                /* renamed from: e  reason: collision with root package name */
                final /* synthetic */ a1 f23976e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0214a(a1 a1Var) {
                    super(0);
                    this.f23976e = a1Var;
                }

                public final void b() {
                    this.f23976e.dispose();
                }

                @Override // id.a
                public /* bridge */ /* synthetic */ Object invoke() {
                    b();
                    return xc.t.f32733a;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: j0.a0$a$a$b */
            /* loaded from: classes.dex */
            public static final class b extends kotlin.jvm.internal.n implements id.l {

                /* renamed from: e  reason: collision with root package name */
                final /* synthetic */ File f23977e;

                /* renamed from: f  reason: collision with root package name */
                final /* synthetic */ vd.v f23978f;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                b(File file, vd.v vVar) {
                    super(1);
                    this.f23977e = file;
                    this.f23978f = vVar;
                }

                @Override // id.l
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((String) obj);
                    return xc.t.f32733a;
                }

                public final void invoke(String str) {
                    if (kotlin.jvm.internal.m.a(str, this.f23977e.getName())) {
                        vd.n.b(this.f23978f, xc.t.f32733a);
                    }
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0213a(File file, ad.e eVar) {
                super(2, eVar);
                this.f23975d = file;
            }

            @Override // id.Function2
            /* renamed from: a */
            public final Object invoke(vd.v vVar, ad.e eVar) {
                return ((C0213a) create(vVar, eVar)).invokeSuspend(xc.t.f32733a);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                C0213a c0213a = new C0213a(this.f23975d, eVar);
                c0213a.f23974c = obj;
                return c0213a;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                a1 d10;
                vd.v vVar;
                e10 = bd.d.e();
                int i10 = this.f23973b;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            xc.m.b(obj);
                            return xc.t.f32733a;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d10 = (a1) this.f23972a;
                    vVar = (vd.v) this.f23974c;
                    xc.m.b(obj);
                } else {
                    xc.m.b(obj);
                    vd.v vVar2 = (vd.v) this.f23974c;
                    b bVar = new b(this.f23975d, vVar2);
                    a aVar = a0.f23967c;
                    File parentFile = this.f23975d.getParentFile();
                    kotlin.jvm.internal.m.b(parentFile);
                    d10 = aVar.d(parentFile, bVar);
                    xc.t tVar = xc.t.f32733a;
                    this.f23974c = vVar2;
                    this.f23972a = d10;
                    this.f23973b = 1;
                    if (vVar2.y(tVar, this) == e10) {
                        return e10;
                    }
                    vVar = vVar2;
                }
                C0214a c0214a = new C0214a(d10);
                this.f23974c = null;
                this.f23972a = null;
                this.f23973b = 2;
                if (vd.t.a(vVar, c0214a, this) == e10) {
                    return e10;
                }
                return xc.t.f32733a;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final a1 d(File file, final id.l lVar) {
            final String key = file.getCanonicalFile().getPath();
            synchronized (a0.f23968d) {
                Map c10 = a0.f23967c.c();
                kotlin.jvm.internal.m.d(key, "key");
                Object obj = c10.get(key);
                if (obj == null) {
                    obj = new a0(key, null);
                    c10.put(key, obj);
                }
                a0 a0Var = (a0) obj;
                a0Var.f23971b.add(lVar);
                if (a0Var.f23971b.size() == 1) {
                    a0Var.startWatching();
                }
                xc.t tVar = xc.t.f32733a;
            }
            return new a1() { // from class: j0.z
                @Override // td.a1
                public final void dispose() {
                    a0.a.f(key, lVar);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(String str, id.l observer) {
            kotlin.jvm.internal.m.e(observer, "$observer");
            synchronized (a0.f23968d) {
                a aVar = a0.f23967c;
                a0 a0Var = (a0) aVar.c().get(str);
                if (a0Var != null) {
                    a0Var.f23971b.remove(observer);
                    if (a0Var.f23971b.isEmpty()) {
                        aVar.c().remove(str);
                        a0Var.stopWatching();
                    }
                }
                xc.t tVar = xc.t.f32733a;
            }
        }

        public final Map c() {
            return a0.f23969e;
        }

        public final wd.d e(File file) {
            kotlin.jvm.internal.m.e(file, "file");
            return wd.f.g(new C0213a(file, null));
        }
    }

    public /* synthetic */ a0(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @Override // android.os.FileObserver
    public void onEvent(int i10, String str) {
        for (id.l lVar : this.f23971b) {
            lVar.invoke(str);
        }
    }

    private a0(String str) {
        super(str, 128);
        this.f23970a = str;
        this.f23971b = new CopyOnWriteArrayList();
    }
}
