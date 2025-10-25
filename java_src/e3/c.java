package e3;

import android.media.MediaCodec;
import y4.q0;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f15264a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f15265b;

    /* renamed from: c  reason: collision with root package name */
    public int f15266c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f15267d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f15268e;

    /* renamed from: f  reason: collision with root package name */
    public int f15269f;

    /* renamed from: g  reason: collision with root package name */
    public int f15270g;

    /* renamed from: h  reason: collision with root package name */
    public int f15271h;

    /* renamed from: i  reason: collision with root package name */
    private final MediaCodec.CryptoInfo f15272i;

    /* renamed from: j  reason: collision with root package name */
    private final b f15273j;

    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final MediaCodec.CryptoInfo f15274a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaCodec.CryptoInfo.Pattern f15275b;

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i10, int i11) {
            this.f15275b.set(i10, i11);
            this.f15274a.setPattern(this.f15275b);
        }

        private b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f15274a = cryptoInfo;
            this.f15275b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f15272i = cryptoInfo;
        this.f15273j = q0.f32946a >= 24 ? new b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.f15272i;
    }

    public void b(int i10) {
        if (i10 == 0) {
            return;
        }
        if (this.f15267d == null) {
            int[] iArr = new int[1];
            this.f15267d = iArr;
            this.f15272i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f15267d;
        iArr2[0] = iArr2[0] + i10;
    }

    public void c(int i10, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i11, int i12, int i13) {
        this.f15269f = i10;
        this.f15267d = iArr;
        this.f15268e = iArr2;
        this.f15265b = bArr;
        this.f15264a = bArr2;
        this.f15266c = i11;
        this.f15270g = i12;
        this.f15271h = i13;
        MediaCodec.CryptoInfo cryptoInfo = this.f15272i;
        cryptoInfo.numSubSamples = i10;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i11;
        if (q0.f32946a >= 24) {
            ((b) y4.a.e(this.f15273j)).b(i12, i13);
        }
    }
}
