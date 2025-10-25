package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.mc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0706mc {

    /* renamed from: a  reason: collision with root package name */
    public final long f12862a;

    /* renamed from: b  reason: collision with root package name */
    public final float f12863b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12864c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12865d;

    /* renamed from: e  reason: collision with root package name */
    public final long f12866e;

    /* renamed from: f  reason: collision with root package name */
    public final int f12867f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f12868g;

    /* renamed from: h  reason: collision with root package name */
    public final long f12869h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f12870i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f12871j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f12872k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f12873l;

    /* renamed from: m  reason: collision with root package name */
    public final Xb f12874m;

    /* renamed from: n  reason: collision with root package name */
    public final Xb f12875n;

    /* renamed from: o  reason: collision with root package name */
    public final Xb f12876o;

    /* renamed from: p  reason: collision with root package name */
    public final Xb f12877p;

    /* renamed from: q  reason: collision with root package name */
    public final C0457cc f12878q;

    public C0706mc(long j10, float f10, int i10, int i11, long j11, int i12, boolean z10, long j12, boolean z11, boolean z12, boolean z13, boolean z14, Xb xb2, Xb xb3, Xb xb4, Xb xb5, C0457cc c0457cc) {
        this.f12862a = j10;
        this.f12863b = f10;
        this.f12864c = i10;
        this.f12865d = i11;
        this.f12866e = j11;
        this.f12867f = i12;
        this.f12868g = z10;
        this.f12869h = j12;
        this.f12870i = z11;
        this.f12871j = z12;
        this.f12872k = z13;
        this.f12873l = z14;
        this.f12874m = xb2;
        this.f12875n = xb3;
        this.f12876o = xb4;
        this.f12877p = xb5;
        this.f12878q = c0457cc;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0706mc.class != obj.getClass()) {
            return false;
        }
        C0706mc c0706mc = (C0706mc) obj;
        if (this.f12862a != c0706mc.f12862a || Float.compare(c0706mc.f12863b, this.f12863b) != 0 || this.f12864c != c0706mc.f12864c || this.f12865d != c0706mc.f12865d || this.f12866e != c0706mc.f12866e || this.f12867f != c0706mc.f12867f || this.f12868g != c0706mc.f12868g || this.f12869h != c0706mc.f12869h || this.f12870i != c0706mc.f12870i || this.f12871j != c0706mc.f12871j || this.f12872k != c0706mc.f12872k || this.f12873l != c0706mc.f12873l) {
            return false;
        }
        Xb xb2 = this.f12874m;
        if (xb2 == null ? c0706mc.f12874m != null : !xb2.equals(c0706mc.f12874m)) {
            return false;
        }
        Xb xb3 = this.f12875n;
        if (xb3 == null ? c0706mc.f12875n != null : !xb3.equals(c0706mc.f12875n)) {
            return false;
        }
        Xb xb4 = this.f12876o;
        if (xb4 == null ? c0706mc.f12876o != null : !xb4.equals(c0706mc.f12876o)) {
            return false;
        }
        Xb xb5 = this.f12877p;
        if (xb5 == null ? c0706mc.f12877p != null : !xb5.equals(c0706mc.f12877p)) {
            return false;
        }
        C0457cc c0457cc = this.f12878q;
        C0457cc c0457cc2 = c0706mc.f12878q;
        if (c0457cc != null) {
            return c0457cc.equals(c0457cc2);
        }
        if (c0457cc2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        long j10 = this.f12862a;
        int i15 = ((int) (j10 ^ (j10 >>> 32))) * 31;
        float f10 = this.f12863b;
        int i16 = 0;
        if (f10 != 0.0f) {
            i10 = Float.floatToIntBits(f10);
        } else {
            i10 = 0;
        }
        long j11 = this.f12866e;
        long j12 = this.f12869h;
        int i17 = (((((((((((((((((((((i15 + i10) * 31) + this.f12864c) * 31) + this.f12865d) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f12867f) * 31) + (this.f12868g ? 1 : 0)) * 31) + ((int) ((j12 >>> 32) ^ j12))) * 31) + (this.f12870i ? 1 : 0)) * 31) + (this.f12871j ? 1 : 0)) * 31) + (this.f12872k ? 1 : 0)) * 31) + (this.f12873l ? 1 : 0)) * 31;
        Xb xb2 = this.f12874m;
        if (xb2 != null) {
            i11 = xb2.hashCode();
        } else {
            i11 = 0;
        }
        int i18 = (i17 + i11) * 31;
        Xb xb3 = this.f12875n;
        if (xb3 != null) {
            i12 = xb3.hashCode();
        } else {
            i12 = 0;
        }
        int i19 = (i18 + i12) * 31;
        Xb xb4 = this.f12876o;
        if (xb4 != null) {
            i13 = xb4.hashCode();
        } else {
            i13 = 0;
        }
        int i20 = (i19 + i13) * 31;
        Xb xb5 = this.f12877p;
        if (xb5 != null) {
            i14 = xb5.hashCode();
        } else {
            i14 = 0;
        }
        int i21 = (i20 + i14) * 31;
        C0457cc c0457cc = this.f12878q;
        if (c0457cc != null) {
            i16 = c0457cc.hashCode();
        }
        return i21 + i16;
    }

    public String toString() {
        return "LocationArguments{updateTimeInterval=" + this.f12862a + ", updateDistanceInterval=" + this.f12863b + ", recordsCountToForceFlush=" + this.f12864c + ", maxBatchSize=" + this.f12865d + ", maxAgeToForceFlush=" + this.f12866e + ", maxRecordsToStoreLocally=" + this.f12867f + ", collectionEnabled=" + this.f12868g + ", lbsUpdateTimeInterval=" + this.f12869h + ", lbsCollectionEnabled=" + this.f12870i + ", passiveCollectionEnabled=" + this.f12871j + ", allCellsCollectingEnabled=" + this.f12872k + ", connectedCellCollectingEnabled=" + this.f12873l + ", wifiAccessConfig=" + this.f12874m + ", lbsAccessConfig=" + this.f12875n + ", gpsAccessConfig=" + this.f12876o + ", passiveAccessConfig=" + this.f12877p + ", gplConfig=" + this.f12878q + '}';
    }
}
