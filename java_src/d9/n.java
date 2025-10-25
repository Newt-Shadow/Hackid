package d9;

import java.util.EnumMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final String f15105a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f15106b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15107c;

    /* renamed from: d  reason: collision with root package name */
    private p[] f15108d;

    /* renamed from: e  reason: collision with root package name */
    private final a f15109e;

    /* renamed from: f  reason: collision with root package name */
    private Map f15110f;

    /* renamed from: g  reason: collision with root package name */
    private final long f15111g;

    public n(String str, byte[] bArr, p[] pVarArr, a aVar) {
        this(str, bArr, pVarArr, aVar, System.currentTimeMillis());
    }

    public void a(p[] pVarArr) {
        p[] pVarArr2 = this.f15108d;
        if (pVarArr2 == null) {
            this.f15108d = pVarArr;
        } else if (pVarArr != null && pVarArr.length > 0) {
            p[] pVarArr3 = new p[pVarArr2.length + pVarArr.length];
            System.arraycopy(pVarArr2, 0, pVarArr3, 0, pVarArr2.length);
            System.arraycopy(pVarArr, 0, pVarArr3, pVarArr2.length, pVarArr.length);
            this.f15108d = pVarArr3;
        }
    }

    public a b() {
        return this.f15109e;
    }

    public byte[] c() {
        return this.f15106b;
    }

    public Map d() {
        return this.f15110f;
    }

    public p[] e() {
        return this.f15108d;
    }

    public String f() {
        return this.f15105a;
    }

    public void g(Map map) {
        if (map != null) {
            Map map2 = this.f15110f;
            if (map2 == null) {
                this.f15110f = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    public void h(o oVar, Object obj) {
        if (this.f15110f == null) {
            this.f15110f = new EnumMap(o.class);
        }
        this.f15110f.put(oVar, obj);
    }

    public String toString() {
        return this.f15105a;
    }

    public n(String str, byte[] bArr, p[] pVarArr, a aVar, long j10) {
        this(str, bArr, bArr == null ? 0 : bArr.length * 8, pVarArr, aVar, j10);
    }

    public n(String str, byte[] bArr, int i10, p[] pVarArr, a aVar, long j10) {
        this.f15105a = str;
        this.f15106b = bArr;
        this.f15107c = i10;
        this.f15108d = pVarArr;
        this.f15109e = aVar;
        this.f15110f = null;
        this.f15111g = j10;
    }
}
