package a8;

import ad.e;
import android.content.Context;
import id.Function2;
import id.l;
import j0.i;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.x;
import o0.f;
import pd.k;
import td.h;
import td.l0;
import xc.m;
import xc.t;
import yc.h0;
import yc.n;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: f  reason: collision with root package name */
    static final /* synthetic */ k[] f193f = {d0.g(new x(b.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

    /* renamed from: a  reason: collision with root package name */
    private final Context f194a;

    /* renamed from: b  reason: collision with root package name */
    private final String f195b;

    /* renamed from: c  reason: collision with root package name */
    private final ThreadLocal f196c;

    /* renamed from: d  reason: collision with root package name */
    private final ld.c f197d;

    /* renamed from: e  reason: collision with root package name */
    private final i f198e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f199a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ l f201c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a8.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0005a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f202a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f203b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ l f204c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0005a(l lVar, e eVar) {
                super(2, eVar);
                this.f204c = lVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final e create(Object obj, e eVar) {
                C0005a c0005a = new C0005a(this.f204c, eVar);
                c0005a.f203b = obj;
                return c0005a;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                bd.d.e();
                if (this.f202a == 0) {
                    m.b(obj);
                    this.f204c.invoke((o0.c) this.f203b);
                    return t.f32733a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // id.Function2
            public final Object invoke(o0.c cVar, e eVar) {
                return ((C0005a) create(cVar, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l lVar, e eVar) {
            super(2, eVar);
            this.f201c = lVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final e create(Object obj, e eVar) {
            return new a(this.f201c, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f199a;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    if (!kotlin.jvm.internal.m.a(b.this.f196c.get(), kotlin.coroutines.jvm.internal.b.a(true))) {
                        b.this.f196c.set(kotlin.coroutines.jvm.internal.b.a(true));
                        i iVar = b.this.f198e;
                        C0005a c0005a = new C0005a(this.f201c, null);
                        this.f199a = 1;
                        obj = o0.i.a(iVar, c0005a, this);
                        if (obj == e10) {
                            return e10;
                        }
                    } else {
                        throw new IllegalStateException("Don't call JavaDataStorage.edit() from within an existing edit() callback.\nThis causes deadlocks, and is generally indicative of a code smell.\nInstead, either pass around the initial `MutablePreferences` instance, or don't do everything in a single callback. ");
                    }
                }
                return (f) obj;
            } finally {
                b.this.f196c.set(kotlin.coroutines.jvm.internal.b.a(false));
            }
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, e eVar) {
            return ((a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a8.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0006b extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f205a;

        C0006b(e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final e create(Object obj, e eVar) {
            return new C0006b(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            Map e11;
            Map a10;
            e10 = bd.d.e();
            int i10 = this.f205a;
            if (i10 != 0) {
                if (i10 == 1) {
                    m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                m.b(obj);
                wd.d data = b.this.f198e.getData();
                this.f205a = 1;
                obj = wd.f.n(data, this);
                if (obj == e10) {
                    return e10;
                }
            }
            f fVar = (f) obj;
            if (fVar == null || (a10 = fVar.a()) == null) {
                e11 = h0.e();
                return e11;
            }
            return a10;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, e eVar) {
            return ((C0006b) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f207a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ f.a f209c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f210d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(f.a aVar, Object obj, e eVar) {
            super(2, eVar);
            this.f209c = aVar;
            this.f210d = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final e create(Object obj, e eVar) {
            return new c(this.f209c, this.f210d, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            Object b10;
            e10 = bd.d.e();
            int i10 = this.f207a;
            if (i10 != 0) {
                if (i10 == 1) {
                    m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                m.b(obj);
                wd.d data = b.this.f198e.getData();
                this.f207a = 1;
                obj = wd.f.n(data, this);
                if (obj == e10) {
                    return e10;
                }
            }
            f fVar = (f) obj;
            if (fVar == null || (b10 = fVar.b(this.f209c)) == null) {
                return this.f210d;
            }
            return b10;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, e eVar) {
            return ((c) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f211a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ f.a f213c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f214d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f215a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f216b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ f.a f217c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Object f218d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(f.a aVar, Object obj, e eVar) {
                super(2, eVar);
                this.f217c = aVar;
                this.f218d = obj;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final e create(Object obj, e eVar) {
                a aVar = new a(this.f217c, this.f218d, eVar);
                aVar.f216b = obj;
                return aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                bd.d.e();
                if (this.f215a == 0) {
                    m.b(obj);
                    ((o0.c) this.f216b).j(this.f217c, this.f218d);
                    return t.f32733a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // id.Function2
            public final Object invoke(o0.c cVar, e eVar) {
                return ((a) create(cVar, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(f.a aVar, Object obj, e eVar) {
            super(2, eVar);
            this.f213c = aVar;
            this.f214d = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final e create(Object obj, e eVar) {
            return new d(this.f213c, this.f214d, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f211a;
            if (i10 != 0) {
                if (i10 == 1) {
                    m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                m.b(obj);
                i iVar = b.this.f198e;
                a aVar = new a(this.f213c, this.f214d, null);
                this.f211a = 1;
                obj = o0.i.a(iVar, aVar, this);
                if (obj == e10) {
                    return e10;
                }
            }
            return obj;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, e eVar) {
            return ((d) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    public b(Context context, String name) {
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(name, "name");
        this.f194a = context;
        this.f195b = name;
        this.f196c = new ThreadLocal();
        this.f197d = n0.a.b(name, null, new l() { // from class: a8.a
            @Override // id.l
            public final Object invoke(Object obj) {
                List d10;
                d10 = b.d(b.this, (Context) obj);
                return d10;
            }
        }, null, 10, null);
        this.f198e = g(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List d(b bVar, Context it) {
        List b10;
        kotlin.jvm.internal.m.e(it, "it");
        b10 = n.b(n0.i.b(it, bVar.f195b, null, 4, null));
        return b10;
    }

    private final i g(Context context) {
        return (i) this.f197d.a(context, f193f[0]);
    }

    public final f e(l transform) {
        Object b10;
        kotlin.jvm.internal.m.e(transform, "transform");
        b10 = h.b(null, new a(transform, null), 1, null);
        return (f) b10;
    }

    public final Map f() {
        Object b10;
        b10 = h.b(null, new C0006b(null), 1, null);
        return (Map) b10;
    }

    public final Object h(f.a key, Object obj) {
        Object b10;
        kotlin.jvm.internal.m.e(key, "key");
        b10 = h.b(null, new c(key, obj, null), 1, null);
        return b10;
    }

    public final f i(f.a key, Object obj) {
        Object b10;
        kotlin.jvm.internal.m.e(key, "key");
        b10 = h.b(null, new d(key, obj, null), 1, null);
        return (f) b10;
    }
}
