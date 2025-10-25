package com.google.android.gms.measurement.internal;

import java.math.BigInteger;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public final class f5 extends e5 {

    /* renamed from: c  reason: collision with root package name */
    private String f7503c;

    /* renamed from: d  reason: collision with root package name */
    private String f7504d;

    /* renamed from: e  reason: collision with root package name */
    private int f7505e;

    /* renamed from: f  reason: collision with root package name */
    private String f7506f;

    /* renamed from: g  reason: collision with root package name */
    private String f7507g;

    /* renamed from: h  reason: collision with root package name */
    private long f7508h;

    /* renamed from: i  reason: collision with root package name */
    private final long f7509i;

    /* renamed from: j  reason: collision with root package name */
    private final long f7510j;

    /* renamed from: k  reason: collision with root package name */
    private List f7511k;

    /* renamed from: l  reason: collision with root package name */
    private String f7512l;

    /* renamed from: m  reason: collision with root package name */
    private int f7513m;

    /* renamed from: n  reason: collision with root package name */
    private String f7514n;

    /* renamed from: o  reason: collision with root package name */
    private String f7515o;

    /* renamed from: p  reason: collision with root package name */
    private long f7516p;

    /* renamed from: q  reason: collision with root package name */
    private String f7517q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f5(w6 w6Var, long j10, long j11) {
        super(w6Var);
        this.f7516p = 0L;
        this.f7517q = null;
        this.f7509i = j10;
        this.f7510j = j11;
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean m() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:1|(1:3)(6:58|59|(1:61)(2:76|(1:78))|62|63|(16:65|(1:67)(1:74)|68|69|5|(2:7|(2:9|(2:11|(2:13|(2:15|(2:17|(1:19)(1:51))(1:52))(1:53))(1:54))(1:55))(1:56))(1:57)|20|21|22|(1:24)(1:48)|25|(1:27)|29|(3:31|(1:33)(3:40|(3:43|(1:45)|41)|46)|(2:35|36)(2:38|39))|47|(0)(0)))|4|5|(0)(0)|20|21|22|(0)(0)|25|(0)|29|(0)|47|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0199, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x019a, code lost:
        r11.f8322a.a().o().c("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.p5.x(r1), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0187 A[Catch: IllegalStateException -> 0x0199, TRY_LEAVE, TryCatch #2 {IllegalStateException -> 0x0199, blocks: (B:49:0x016d, B:53:0x0183, B:55:0x0187), top: B:81:0x016d }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0202  */
    @Override // com.google.android.gms.measurement.internal.e5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void n() {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.f5.n():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0257 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.ae o(java.lang.String r51) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.f5.o(java.lang.String):com.google.android.gms.measurement.internal.ae");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void p() {
        String format;
        String str;
        h();
        w6 w6Var = this.f8322a;
        if (!w6Var.x().w().o(i6.s.ANALYTICS_STORAGE)) {
            w6Var.a().v().a("Analytics Storage consent is not granted");
            format = null;
        } else {
            byte[] bArr = new byte[16];
            w6Var.C().q0().nextBytes(bArr);
            format = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        }
        n5 v10 = w6Var.a().v();
        Object[] objArr = new Object[1];
        if (format == null) {
            str = "null";
        } else {
            str = "not null";
        }
        objArr[0] = str;
        v10.a(String.format("Resetting session stitching token to %s", objArr));
        this.f7515o = format;
        this.f7516p = w6Var.f().currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String q() {
        j();
        n5.q.k(this.f7503c);
        return this.f7503c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String r() {
        h();
        j();
        n5.q.k(this.f7514n);
        return this.f7514n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String s() {
        j();
        n5.q.k(this.f7507g);
        return this.f7507g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int t() {
        j();
        return this.f7505e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long u() {
        return this.f7510j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int v() {
        j();
        return this.f7513m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List w() {
        return this.f7511k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean x(String str) {
        String str2 = this.f7517q;
        boolean z10 = false;
        if (str2 != null && !str2.equals(str)) {
            z10 = true;
        }
        this.f7517q = str;
        return z10;
    }
}
