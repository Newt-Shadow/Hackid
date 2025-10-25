package io.sentry;

import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class l1 {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f23227a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f23228a;

        static {
            int[] iArr = new int[io.sentry.vendor.gson.stream.b.values().length];
            f23228a = iArr;
            try {
                iArr[io.sentry.vendor.gson.stream.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23228a[io.sentry.vendor.gson.stream.b.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23228a[io.sentry.vendor.gson.stream.b.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23228a[io.sentry.vendor.gson.stream.b.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23228a[io.sentry.vendor.gson.stream.b.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f23228a[io.sentry.vendor.gson.stream.b.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f23228a[io.sentry.vendor.gson.stream.b.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f23228a[io.sentry.vendor.gson.stream.b.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f23228a[io.sentry.vendor.gson.stream.b.NULL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f23228a[io.sentry.vendor.gson.stream.b.END_DOCUMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface b {
        Object a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface c {
        Object getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class f implements c {

        /* renamed from: a  reason: collision with root package name */
        final String f23231a;

        f(String str) {
            this.f23231a = str;
        }

        @Override // io.sentry.l1.c
        public Object getValue() {
            return this.f23231a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g implements c {

        /* renamed from: a  reason: collision with root package name */
        final Object f23232a;

        g(Object obj) {
            this.f23232a = obj;
        }

        @Override // io.sentry.l1.c
        public Object getValue() {
            return this.f23232a;
        }
    }

    private c f() {
        if (this.f23227a.isEmpty()) {
            return null;
        }
        ArrayList arrayList = this.f23227a;
        return (c) arrayList.get(arrayList.size() - 1);
    }

    private boolean g() {
        if (i()) {
            return true;
        }
        c f10 = f();
        p();
        if (f() instanceof f) {
            f fVar = (f) f();
            p();
            e eVar = (e) f();
            if (fVar != null && f10 != null && eVar != null) {
                eVar.f23230a.put(fVar.f23231a, f10.getValue());
                return false;
            }
            return false;
        } else if (f() instanceof d) {
            d dVar = (d) f();
            if (f10 != null && dVar != null) {
                dVar.f23229a.add(f10.getValue());
                return false;
            }
            return false;
        } else {
            return false;
        }
    }

    private boolean h(b bVar) {
        Object a10 = bVar.a();
        if (f() == null && a10 != null) {
            q(new g(a10));
            return true;
        } else if (f() instanceof f) {
            p();
            ((e) f()).f23230a.put(((f) f()).f23231a, a10);
            return false;
        } else if (f() instanceof d) {
            ((d) f()).f23229a.add(a10);
            return false;
        } else {
            return false;
        }
    }

    private boolean i() {
        if (this.f23227a.size() == 1) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object l(m1 m1Var) {
        return Boolean.valueOf(m1Var.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object m() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public Object k(m1 m1Var) {
        try {
            try {
                return Integer.valueOf(m1Var.j0());
            } catch (Exception unused) {
                return Double.valueOf(m1Var.S());
            }
        } catch (Exception unused2) {
            return Long.valueOf(m1Var.E0());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void o(final m1 m1Var) {
        boolean z10;
        switch (a.f23228a[m1Var.peek().ordinal()]) {
            case 1:
                m1Var.a();
                q(new d(null));
                z10 = false;
                break;
            case 2:
                m1Var.b();
                z10 = g();
                break;
            case 3:
                m1Var.t();
                q(new e(null));
                z10 = false;
                break;
            case 4:
                m1Var.r();
                z10 = g();
                break;
            case 5:
                q(new f(m1Var.f0()));
                z10 = false;
                break;
            case 6:
                z10 = h(new b() { // from class: io.sentry.h1
                    @Override // io.sentry.l1.b
                    public final Object a() {
                        Object C;
                        C = m1.this.C();
                        return C;
                    }
                });
                break;
            case 7:
                z10 = h(new b() { // from class: io.sentry.i1
                    @Override // io.sentry.l1.b
                    public final Object a() {
                        Object k10;
                        k10 = l1.this.k(m1Var);
                        return k10;
                    }
                });
                break;
            case 8:
                z10 = h(new b() { // from class: io.sentry.j1
                    @Override // io.sentry.l1.b
                    public final Object a() {
                        Object l10;
                        l10 = l1.l(m1.this);
                        return l10;
                    }
                });
                break;
            case 9:
                m1Var.f();
                z10 = h(new b() { // from class: io.sentry.k1
                    @Override // io.sentry.l1.b
                    public final Object a() {
                        Object m10;
                        m10 = l1.m();
                        return m10;
                    }
                });
                break;
            case 10:
                z10 = true;
                break;
            default:
                z10 = false;
                break;
        }
        if (!z10) {
            o(m1Var);
        }
    }

    private void p() {
        if (this.f23227a.isEmpty()) {
            return;
        }
        ArrayList arrayList = this.f23227a;
        arrayList.remove(arrayList.size() - 1);
    }

    private void q(c cVar) {
        this.f23227a.add(cVar);
    }

    public Object e(m1 m1Var) {
        o(m1Var);
        c f10 = f();
        if (f10 != null) {
            return f10.getValue();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d implements c {

        /* renamed from: a  reason: collision with root package name */
        final ArrayList f23229a;

        private d() {
            this.f23229a = new ArrayList();
        }

        @Override // io.sentry.l1.c
        public Object getValue() {
            return this.f23229a;
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        final HashMap f23230a;

        private e() {
            this.f23230a = new HashMap();
        }

        @Override // io.sentry.l1.c
        public Object getValue() {
            return this.f23230a;
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }
}
