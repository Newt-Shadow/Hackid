package l5;

import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
abstract class a0 extends y {

    /* renamed from: h  reason: collision with root package name */
    private static final WeakReference f25258h = new WeakReference(null);

    /* renamed from: g  reason: collision with root package name */
    private WeakReference f25259g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(byte[] bArr) {
        super(bArr);
        this.f25259g = f25258h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // l5.y
    public final byte[] e1() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.f25259g.get();
            if (bArr == null) {
                bArr = f1();
                this.f25259g = new WeakReference(bArr);
            }
        }
        return bArr;
    }

    protected abstract byte[] f1();
}
