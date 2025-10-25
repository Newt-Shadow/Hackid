package l9;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: h  reason: collision with root package name */
    public static final a f25377h = new a(4201, Base64Utils.IO_BUFFER_SIZE, 1);

    /* renamed from: i  reason: collision with root package name */
    public static final a f25378i = new a(1033, 1024, 1);

    /* renamed from: j  reason: collision with root package name */
    public static final a f25379j;

    /* renamed from: k  reason: collision with root package name */
    public static final a f25380k;

    /* renamed from: l  reason: collision with root package name */
    public static final a f25381l;

    /* renamed from: m  reason: collision with root package name */
    public static final a f25382m;

    /* renamed from: n  reason: collision with root package name */
    public static final a f25383n;

    /* renamed from: o  reason: collision with root package name */
    public static final a f25384o;

    /* renamed from: a  reason: collision with root package name */
    private final int[] f25385a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f25386b;

    /* renamed from: c  reason: collision with root package name */
    private final b f25387c;

    /* renamed from: d  reason: collision with root package name */
    private final b f25388d;

    /* renamed from: e  reason: collision with root package name */
    private final int f25389e;

    /* renamed from: f  reason: collision with root package name */
    private final int f25390f;

    /* renamed from: g  reason: collision with root package name */
    private final int f25391g;

    static {
        a aVar = new a(67, 64, 1);
        f25379j = aVar;
        f25380k = new a(19, 16, 1);
        f25381l = new a(285, 256, 0);
        a aVar2 = new a(301, 256, 1);
        f25382m = aVar2;
        f25383n = aVar2;
        f25384o = aVar;
    }

    public a(int i10, int i11, int i12) {
        this.f25390f = i10;
        this.f25389e = i11;
        this.f25391g = i12;
        this.f25385a = new int[i11];
        this.f25386b = new int[i11];
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            this.f25385a[i14] = i13;
            i13 *= 2;
            if (i13 >= i11) {
                i13 = (i13 ^ i10) & (i11 - 1);
            }
        }
        for (int i15 = 0; i15 < i11 - 1; i15++) {
            this.f25386b[this.f25385a[i15]] = i15;
        }
        this.f25387c = new b(this, new int[]{0});
        this.f25388d = new b(this, new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i10, int i11) {
        return i10 ^ i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b b(int i10, int i11) {
        if (i10 >= 0) {
            if (i11 == 0) {
                return this.f25387c;
            }
            int[] iArr = new int[i10 + 1];
            iArr[0] = i11;
            return new b(this, iArr);
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i10) {
        return this.f25385a[i10];
    }

    public int d() {
        return this.f25391g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b e() {
        return this.f25388d;
    }

    public int f() {
        return this.f25389e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b g() {
        return this.f25387c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h(int i10) {
        if (i10 != 0) {
            return this.f25385a[(this.f25389e - this.f25386b[i10]) - 1];
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i(int i10) {
        if (i10 != 0) {
            return this.f25386b[i10];
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j(int i10, int i11) {
        if (i10 != 0 && i11 != 0) {
            int[] iArr = this.f25385a;
            int[] iArr2 = this.f25386b;
            return iArr[(iArr2[i10] + iArr2[i11]) % (this.f25389e - 1)];
        }
        return 0;
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f25390f) + ',' + this.f25389e + ')';
    }
}
