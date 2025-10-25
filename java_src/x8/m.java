package x8;

import id.Function2;
import java.util.concurrent.atomic.AtomicReference;
import td.l0;
import td.m0;
import u8.w0;
import xc.Function;
import xc.t;
/* loaded from: classes.dex */
public final class m implements l {

    /* renamed from: a  reason: collision with root package name */
    private final ad.i f32588a;

    /* renamed from: b  reason: collision with root package name */
    private final w0 f32589b;

    /* renamed from: c  reason: collision with root package name */
    private final j0.i f32590c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference f32591d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32592a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: x8.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public /* synthetic */ class C0369a implements wd.e, kotlin.jvm.internal.h {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AtomicReference f32594a;

            C0369a(AtomicReference atomicReference) {
                this.f32594a = atomicReference;
            }

            @Override // kotlin.jvm.internal.h
            public final Function a() {
                return new kotlin.jvm.internal.a(2, this.f32594a, AtomicReference.class, "set", "set(Ljava/lang/Object;)V", 4);
            }

            @Override // wd.e
            /* renamed from: c */
            public final Object emit(h hVar, ad.e eVar) {
                Object e10;
                Object f10 = a.f(this.f32594a, hVar, eVar);
                e10 = bd.d.e();
                if (f10 == e10) {
                    return f10;
                }
                return t.f32733a;
            }

            public final boolean equals(Object obj) {
                if ((obj instanceof wd.e) && (obj instanceof kotlin.jvm.internal.h)) {
                    return kotlin.jvm.internal.m.a(a(), ((kotlin.jvm.internal.h) obj).a());
                }
                return false;
            }

            public final int hashCode() {
                return a().hashCode();
            }
        }

        a(ad.e eVar) {
            super(2, eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ Object f(AtomicReference atomicReference, h hVar, ad.e eVar) {
            atomicReference.set(hVar);
            return t.f32733a;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new a(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f32592a;
            if (i10 != 0) {
                if (i10 == 1) {
                    xc.m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                xc.m.b(obj);
                wd.d data = m.this.f32590c.getData();
                C0369a c0369a = new C0369a(m.this.f32591d);
                this.f32592a = 1;
                if (data.collect(c0369a, this) == e10) {
                    return e10;
                }
            }
            return t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32595a;

        b(ad.e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new b(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f32595a;
            if (i10 != 0) {
                if (i10 == 1) {
                    xc.m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                xc.m.b(obj);
                wd.d data = m.this.f32590c.getData();
                this.f32595a = 1;
                obj = wd.f.m(data, this);
                if (obj == e10) {
                    return e10;
                }
            }
            return obj;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((b) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f32597a;

        /* renamed from: c  reason: collision with root package name */
        int f32599c;

        c(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32597a = obj;
            this.f32599c |= Integer.MIN_VALUE;
            return m.this.e(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32600a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f32601b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(h hVar, ad.e eVar) {
            super(2, eVar);
            this.f32601b = hVar;
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(h hVar, ad.e eVar) {
            return ((d) create(hVar, eVar)).invokeSuspend(t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new d(this.f32601b, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f32600a == 0) {
                xc.m.b(obj);
                return this.f32601b;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public m(ad.i backgroundDispatcher, w0 timeProvider, j0.i sessionConfigsDataStore) {
        kotlin.jvm.internal.m.e(backgroundDispatcher, "backgroundDispatcher");
        kotlin.jvm.internal.m.e(timeProvider, "timeProvider");
        kotlin.jvm.internal.m.e(sessionConfigsDataStore, "sessionConfigsDataStore");
        this.f32588a = backgroundDispatcher;
        this.f32589b = timeProvider;
        this.f32590c = sessionConfigsDataStore;
        this.f32591d = new AtomicReference();
        td.i.d(m0.a(backgroundDispatcher), null, null, new a(null), 3, null);
    }

    private final h h() {
        Object b10;
        if (this.f32591d.get() == null) {
            AtomicReference atomicReference = this.f32591d;
            b10 = td.h.b(null, new b(null), 1, null);
            o1.c.a(atomicReference, null, b10);
        }
        Object obj = this.f32591d.get();
        kotlin.jvm.internal.m.d(obj, "get(...)");
        return (h) obj;
    }

    @Override // x8.l
    public Double a() {
        return h().c();
    }

    @Override // x8.l
    public Integer b() {
        return h().d();
    }

    @Override // x8.l
    public boolean c() {
        Long b10 = h().b();
        Integer a10 = h().a();
        if (b10 != null && a10 != null && this.f32589b.a().a() - b10.longValue() < a10.intValue()) {
            return false;
        }
        return true;
    }

    @Override // x8.l
    public Boolean d() {
        return h().e();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|24|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
        android.util.Log.w("FirebaseSessions", "Failed to update config values: " + r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @Override // x8.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(x8.h r6, ad.e r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof x8.m.c
            if (r0 == 0) goto L13
            r0 = r7
            x8.m$c r0 = (x8.m.c) r0
            int r1 = r0.f32599c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32599c = r1
            goto L18
        L13:
            x8.m$c r0 = new x8.m$c
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f32597a
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f32599c
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            xc.m.b(r7)     // Catch: java.io.IOException -> L29
            goto L5d
        L29:
            r6 = move-exception
            goto L47
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            xc.m.b(r7)
            j0.i r7 = r5.f32590c     // Catch: java.io.IOException -> L29
            x8.m$d r2 = new x8.m$d     // Catch: java.io.IOException -> L29
            r4 = 0
            r2.<init>(r6, r4)     // Catch: java.io.IOException -> L29
            r0.f32599c = r3     // Catch: java.io.IOException -> L29
            java.lang.Object r6 = r7.a(r2, r0)     // Catch: java.io.IOException -> L29
            if (r6 != r1) goto L5d
            return r1
        L47:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "Failed to update config values: "
            r7.append(r0)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            java.lang.String r7 = "FirebaseSessions"
            android.util.Log.w(r7, r6)
        L5d:
            xc.t r6 = xc.t.f32733a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: x8.m.e(x8.h, ad.e):java.lang.Object");
    }
}
