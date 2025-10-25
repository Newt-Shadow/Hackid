package q0;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected int f27936a;

    /* renamed from: b  reason: collision with root package name */
    protected ByteBuffer f27937b;

    /* renamed from: c  reason: collision with root package name */
    private int f27938c;

    /* renamed from: d  reason: collision with root package name */
    private int f27939d;

    /* renamed from: e  reason: collision with root package name */
    d f27940e = d.a();

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(int i10) {
        return i10 + this.f27937b.getInt(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int b(int i10) {
        if (i10 < this.f27939d) {
            return this.f27937b.getShort(this.f27938c + i10);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(int i10, ByteBuffer byteBuffer) {
        this.f27937b = byteBuffer;
        if (byteBuffer != null) {
            this.f27936a = i10;
            int i11 = i10 - byteBuffer.getInt(i10);
            this.f27938c = i11;
            this.f27939d = this.f27937b.getShort(i11);
            return;
        }
        this.f27936a = 0;
        this.f27938c = 0;
        this.f27939d = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int d(int i10) {
        int i11 = i10 + this.f27936a;
        return i11 + this.f27937b.getInt(i11) + 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int e(int i10) {
        int i11 = i10 + this.f27936a;
        return this.f27937b.getInt(i11 + this.f27937b.getInt(i11));
    }
}
