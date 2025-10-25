package zb;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final e f33611a;

    /* renamed from: b  reason: collision with root package name */
    public final String f33612b;

    /* renamed from: c  reason: collision with root package name */
    public final int f33613c;

    /* renamed from: d  reason: collision with root package name */
    public final long f33614d;

    /* renamed from: e  reason: collision with root package name */
    public final String f33615e;

    /* renamed from: f  reason: collision with root package name */
    public final long f33616f;

    /* renamed from: g  reason: collision with root package name */
    public final c f33617g;

    /* renamed from: h  reason: collision with root package name */
    public final int f33618h;

    /* renamed from: i  reason: collision with root package name */
    public final c f33619i;

    /* renamed from: j  reason: collision with root package name */
    public final String f33620j;

    /* renamed from: k  reason: collision with root package name */
    public final String f33621k;

    /* renamed from: l  reason: collision with root package name */
    public final long f33622l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f33623m;

    /* renamed from: n  reason: collision with root package name */
    public final String f33624n;

    public d(e eVar, String str, int i10, long j10, String str2, long j11, c cVar, int i11, c cVar2, String str3, String str4, long j12, boolean z10, String str5) {
        this.f33611a = eVar;
        this.f33612b = str;
        this.f33613c = i10;
        this.f33614d = j10;
        this.f33615e = str2;
        this.f33616f = j11;
        this.f33617g = cVar;
        this.f33618h = i11;
        this.f33619i = cVar2;
        this.f33620j = str3;
        this.f33621k = str4;
        this.f33622l = j12;
        this.f33623m = z10;
        this.f33624n = str5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f33613c != dVar.f33613c || this.f33614d != dVar.f33614d || this.f33616f != dVar.f33616f || this.f33618h != dVar.f33618h || this.f33622l != dVar.f33622l || this.f33623m != dVar.f33623m || this.f33611a != dVar.f33611a || !this.f33612b.equals(dVar.f33612b) || !this.f33615e.equals(dVar.f33615e)) {
            return false;
        }
        c cVar = this.f33617g;
        if (cVar == null ? dVar.f33617g != null : !cVar.equals(dVar.f33617g)) {
            return false;
        }
        c cVar2 = this.f33619i;
        if (cVar2 == null ? dVar.f33619i != null : !cVar2.equals(dVar.f33619i)) {
            return false;
        }
        if (!this.f33620j.equals(dVar.f33620j) || !this.f33621k.equals(dVar.f33621k)) {
            return false;
        }
        return this.f33624n.equals(dVar.f33624n);
    }

    public int hashCode() {
        int i10;
        long j10 = this.f33614d;
        long j11 = this.f33616f;
        int hashCode = ((((((((((this.f33611a.hashCode() * 31) + this.f33612b.hashCode()) * 31) + this.f33613c) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f33615e.hashCode()) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        c cVar = this.f33617g;
        int i11 = 0;
        if (cVar != null) {
            i10 = cVar.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (((hashCode + i10) * 31) + this.f33618h) * 31;
        c cVar2 = this.f33619i;
        if (cVar2 != null) {
            i11 = cVar2.hashCode();
        }
        long j12 = this.f33622l;
        return ((((((((((i12 + i11) * 31) + this.f33620j.hashCode()) * 31) + this.f33621k.hashCode()) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f33623m ? 1 : 0)) * 31) + this.f33624n.hashCode();
    }

    public String toString() {
        return "ProductInfo{type=" + this.f33611a + ", sku='" + this.f33612b + "', quantity=" + this.f33613c + ", priceMicros=" + this.f33614d + ", priceCurrency='" + this.f33615e + "', introductoryPriceMicros=" + this.f33616f + ", introductoryPricePeriod=" + this.f33617g + ", introductoryPriceCycles=" + this.f33618h + ", subscriptionPeriod=" + this.f33619i + ", signature='" + this.f33620j + "', purchaseToken='" + this.f33621k + "', purchaseTime=" + this.f33622l + ", autoRenewing=" + this.f33623m + ", purchaseOriginalJson='" + this.f33624n + "'}";
    }
}
