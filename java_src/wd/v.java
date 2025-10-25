package wd;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import yd.f0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class v extends xd.b implements p, d, xd.k {

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f32117e = AtomicReferenceFieldUpdater.newUpdater(v.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: d  reason: collision with root package name */
    private int f32118d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32119a;

        /* renamed from: b  reason: collision with root package name */
        Object f32120b;

        /* renamed from: c  reason: collision with root package name */
        Object f32121c;

        /* renamed from: d  reason: collision with root package name */
        Object f32122d;

        /* renamed from: e  reason: collision with root package name */
        Object f32123e;

        /* renamed from: f  reason: collision with root package name */
        /* synthetic */ Object f32124f;

        /* renamed from: h  reason: collision with root package name */
        int f32126h;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32124f = obj;
            this.f32126h |= Integer.MIN_VALUE;
            return v.this.collect(null, this);
        }
    }

    public v(Object obj) {
        this._state$volatile = obj;
    }

    private final boolean k(Object obj, Object obj2) {
        int i10;
        xd.d[] g10;
        synchronized (this) {
            Object obj3 = f32117e.get(this);
            if (obj != null && !kotlin.jvm.internal.m.a(obj3, obj)) {
                return false;
            }
            if (kotlin.jvm.internal.m.a(obj3, obj2)) {
                return true;
            }
            f32117e.set(this, obj2);
            int i11 = this.f32118d;
            if ((i11 & 1) == 0) {
                int i12 = i11 + 1;
                this.f32118d = i12;
                xd.d[] g11 = g();
                xc.t tVar = xc.t.f32733a;
                while (true) {
                    x[] xVarArr = (x[]) g11;
                    if (xVarArr != null) {
                        for (x xVar : xVarArr) {
                            if (xVar != null) {
                                xVar.g();
                            }
                        }
                    }
                    synchronized (this) {
                        i10 = this.f32118d;
                        if (i10 == i12) {
                            this.f32118d = i12 + 1;
                            return true;
                        }
                        g10 = g();
                        xc.t tVar2 = xc.t.f32733a;
                    }
                    g11 = g10;
                    i12 = i10;
                }
            } else {
                this.f32118d = i11 + 2;
                return true;
            }
        }
    }

    @Override // xd.k
    public d a(ad.i iVar, int i10, vd.a aVar) {
        return w.d(this, iVar, i10, aVar);
    }

    @Override // wd.p
    public boolean b(Object obj, Object obj2) {
        if (obj == null) {
            obj = xd.m.f32759a;
        }
        if (obj2 == null) {
            obj2 = xd.m.f32759a;
        }
        return k(obj, obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0098 A[Catch: all -> 0x0072, TryCatch #0 {all -> 0x0072, blocks: (B:15:0x003e, B:29:0x008e, B:31:0x0098, B:33:0x009d, B:43:0x00be, B:45:0x00c4, B:35:0x00a3, B:39:0x00aa, B:20:0x005c, B:23:0x006e, B:28:0x007f), top: B:50:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009d A[Catch: all -> 0x0072, TryCatch #0 {all -> 0x0072, blocks: (B:15:0x003e, B:29:0x008e, B:31:0x0098, B:33:0x009d, B:43:0x00be, B:45:0x00c4, B:35:0x00a3, B:39:0x00aa, B:20:0x005c, B:23:0x006e, B:28:0x007f), top: B:50:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c4 A[Catch: all -> 0x0072, TRY_LEAVE, TryCatch #0 {all -> 0x0072, blocks: (B:15:0x003e, B:29:0x008e, B:31:0x0098, B:33:0x009d, B:43:0x00be, B:45:0x00c4, B:35:0x00a3, B:39:0x00aa, B:20:0x005c, B:23:0x006e, B:28:0x007f), top: B:50:0x0023 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00c2 -> B:29:0x008e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00d4 -> B:29:0x008e). Please submit an issue!!! */
    @Override // wd.s, wd.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(wd.e r11, ad.e r12) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: wd.v.collect(wd.e, ad.e):java.lang.Object");
    }

    @Override // wd.e
    public Object emit(Object obj, ad.e eVar) {
        setValue(obj);
        return xc.t.f32733a;
    }

    @Override // wd.p, wd.u
    public Object getValue() {
        f0 f0Var = xd.m.f32759a;
        Object obj = f32117e.get(this);
        if (obj == f0Var) {
            return null;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // xd.b
    /* renamed from: h */
    public x d() {
        return new x();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // xd.b
    /* renamed from: i */
    public x[] e(int i10) {
        return new x[i10];
    }

    @Override // wd.p
    public void setValue(Object obj) {
        if (obj == null) {
            obj = xd.m.f32759a;
        }
        k(null, obj);
    }
}
