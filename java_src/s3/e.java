package s3;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import y4.q0;
/* loaded from: classes.dex */
class e {

    /* renamed from: g  reason: collision with root package name */
    private static final ArrayDeque f29293g = new ArrayDeque();

    /* renamed from: h  reason: collision with root package name */
    private static final Object f29294h = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f29295a;

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f29296b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f29297c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference f29298d;

    /* renamed from: e  reason: collision with root package name */
    private final y4.g f29299e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f29300f;

    /* loaded from: classes.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e.this.f(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f29302a;

        /* renamed from: b  reason: collision with root package name */
        public int f29303b;

        /* renamed from: c  reason: collision with root package name */
        public int f29304c;

        /* renamed from: d  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f29305d = new MediaCodec.CryptoInfo();

        /* renamed from: e  reason: collision with root package name */
        public long f29306e;

        /* renamed from: f  reason: collision with root package name */
        public int f29307f;

        b() {
        }

        public void a(int i10, int i11, int i12, long j10, int i13) {
            this.f29302a = i10;
            this.f29303b = i11;
            this.f29304c = i12;
            this.f29306e = j10;
            this.f29307f = i13;
        }
    }

    public e(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new y4.g());
    }

    private void b() {
        this.f29299e.c();
        ((Handler) y4.a.e(this.f29297c)).obtainMessage(2).sendToTarget();
        this.f29299e.a();
    }

    private static void c(e3.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.f15269f;
        cryptoInfo.numBytesOfClearData = e(cVar.f15267d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = e(cVar.f15268e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) y4.a.e(d(cVar.f15265b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) y4.a.e(d(cVar.f15264a, cryptoInfo.iv));
        cryptoInfo.mode = cVar.f15266c;
        if (q0.f32946a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(cVar.f15270g, cVar.f15271h));
        }
    }

    private static byte[] d(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 != null && bArr2.length >= bArr.length) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    private static int[] e(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 != null && iArr2.length >= iArr.length) {
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            return iArr2;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Message message) {
        b bVar;
        int i10 = message.what;
        if (i10 != 0) {
            if (i10 != 1) {
                bVar = null;
                if (i10 != 2) {
                    o1.c.a(this.f29298d, null, new IllegalStateException(String.valueOf(message.what)));
                } else {
                    this.f29299e.e();
                }
            } else {
                bVar = (b) message.obj;
                h(bVar.f29302a, bVar.f29303b, bVar.f29305d, bVar.f29306e, bVar.f29307f);
            }
        } else {
            bVar = (b) message.obj;
            g(bVar.f29302a, bVar.f29303b, bVar.f29304c, bVar.f29306e, bVar.f29307f);
        }
        if (bVar != null) {
            o(bVar);
        }
    }

    private void g(int i10, int i11, int i12, long j10, int i13) {
        try {
            this.f29295a.queueInputBuffer(i10, i11, i12, j10, i13);
        } catch (RuntimeException e10) {
            o1.c.a(this.f29298d, null, e10);
        }
    }

    private void h(int i10, int i11, MediaCodec.CryptoInfo cryptoInfo, long j10, int i12) {
        try {
            synchronized (f29294h) {
                this.f29295a.queueSecureInputBuffer(i10, i11, cryptoInfo, j10, i12);
            }
        } catch (RuntimeException e10) {
            o1.c.a(this.f29298d, null, e10);
        }
    }

    private void j() {
        ((Handler) y4.a.e(this.f29297c)).removeCallbacksAndMessages(null);
        b();
    }

    private static b k() {
        ArrayDeque arrayDeque = f29293g;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new b();
            }
            return (b) arrayDeque.removeFirst();
        }
    }

    private static void o(b bVar) {
        ArrayDeque arrayDeque = f29293g;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    public void i() {
        if (this.f29300f) {
            try {
                j();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    public void l() {
        RuntimeException runtimeException = (RuntimeException) this.f29298d.getAndSet(null);
        if (runtimeException == null) {
            return;
        }
        throw runtimeException;
    }

    public void m(int i10, int i11, int i12, long j10, int i13) {
        l();
        b k10 = k();
        k10.a(i10, i11, i12, j10, i13);
        ((Handler) q0.j(this.f29297c)).obtainMessage(0, k10).sendToTarget();
    }

    public void n(int i10, int i11, e3.c cVar, long j10, int i12) {
        l();
        b k10 = k();
        k10.a(i10, i11, 0, j10, i12);
        c(cVar, k10.f29305d);
        ((Handler) q0.j(this.f29297c)).obtainMessage(1, k10).sendToTarget();
    }

    public void p() {
        if (this.f29300f) {
            i();
            this.f29296b.quit();
        }
        this.f29300f = false;
    }

    public void q() {
        if (!this.f29300f) {
            this.f29296b.start();
            this.f29297c = new a(this.f29296b.getLooper());
            this.f29300f = true;
        }
    }

    public void r() {
        b();
    }

    e(MediaCodec mediaCodec, HandlerThread handlerThread, y4.g gVar) {
        this.f29295a = mediaCodec;
        this.f29296b = handlerThread;
        this.f29299e = gVar;
        this.f29298d = new AtomicReference();
    }
}
