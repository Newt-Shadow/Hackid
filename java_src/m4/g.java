package m4;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class g extends e3.j implements i {

    /* renamed from: n  reason: collision with root package name */
    private final String f25733n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends m {
        a() {
        }

        @Override // e3.h
        public void v() {
            g.this.r(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g(String str) {
        super(new l[2], new m[2]);
        this.f25733n = str;
        u(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e3.j
    /* renamed from: A */
    public final j j(l lVar, m mVar, boolean z10) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) y4.a.e(lVar.f15289c);
            mVar.w(lVar.f15291e, z(byteBuffer.array(), byteBuffer.limit(), z10), lVar.f25736i);
            mVar.m(Integer.MIN_VALUE);
            return null;
        } catch (j e10) {
            return e10;
        }
    }

    @Override // m4.i
    public void a(long j10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e3.j
    /* renamed from: w */
    public final l g() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e3.j
    /* renamed from: x */
    public final m h() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e3.j
    /* renamed from: y */
    public final j i(Throwable th) {
        return new j("Unexpected decode error", th);
    }

    protected abstract h z(byte[] bArr, int i10, boolean z10);
}
