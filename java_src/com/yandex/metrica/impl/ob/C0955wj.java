package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.SparseArray;
@SuppressLint({"NewApi"})
/* renamed from: com.yandex.metrica.impl.ob.wj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0955wj implements Yj<C0907uj> {
    @SuppressLint({"InlineApi"})

    /* renamed from: d  reason: collision with root package name */
    private static final SparseArray<String> f13891d = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Ij f13892a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1021zd f13893b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1021zd f13894c;

    /* renamed from: com.yandex.metrica.impl.ob.wj$a */
    /* loaded from: classes2.dex */
    class a extends SparseArray<String> {
        a() {
            put(0, null);
            put(7, "1xRTT");
            put(4, "CDMA");
            put(2, "EDGE");
            put(14, "eHRPD");
            put(5, "EVDO rev.0");
            put(6, "EVDO rev.A");
            put(12, "EVDO rev.B");
            put(1, "GPRS");
            put(8, "HSDPA");
            put(10, "HSPA");
            put(15, "HSPA+");
            put(9, "HSUPA");
            put(11, "iDen");
            put(3, "UMTS");
            put(12, "EVDO rev.B");
            put(14, "eHRPD");
            put(13, "LTE");
            put(15, "HSPA+");
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wj$b */
    /* loaded from: classes2.dex */
    class b implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f13895a;

        b(C0955wj c0955wj, C0997yd c0997yd) {
            this.f13895a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            this.f13895a.getClass();
            return false;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wj$c */
    /* loaded from: classes2.dex */
    class c implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f13896a;

        c(C0955wj c0955wj, C0997yd c0997yd) {
            this.f13896a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            return this.f13896a.b(context);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wj$d */
    /* loaded from: classes2.dex */
    class d implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f13897a;

        d(C0955wj c0955wj, C0997yd c0997yd) {
            this.f13897a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            return this.f13897a.a(context);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wj$e */
    /* loaded from: classes2.dex */
    class e implements InterfaceC1021zd {
        e(C0955wj c0955wj) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            return true;
        }
    }

    public C0955wj(Ij ij, C0997yd c0997yd) {
        this.f13892a = ij;
        if (A2.a(29)) {
            this.f13893b = new b(this, c0997yd);
            this.f13894c = new c(this, c0997yd);
            return;
        }
        this.f13893b = new d(this, c0997yd);
        this.f13894c = new e(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b() {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0955wj.b():java.lang.Object");
    }
}
