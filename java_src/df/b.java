package df;

import df.a;
/* loaded from: classes2.dex */
public abstract class b extends e {

    /* renamed from: a  reason: collision with root package name */
    private a f15174a;

    protected static a.C0153a c(byte[] bArr) {
        return new a.C0153a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a b() {
        a aVar = this.f15174a;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("origin == null");
    }

    public b d(byte[] bArr) {
        return e(c(bArr));
    }

    protected b e(a aVar) {
        this.f15174a = aVar;
        return (b) a();
    }
}
