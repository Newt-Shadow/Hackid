package s3;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g extends MediaCodec.Callback {

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f29319b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f29320c;

    /* renamed from: h  reason: collision with root package name */
    private MediaFormat f29325h;

    /* renamed from: i  reason: collision with root package name */
    private MediaFormat f29326i;

    /* renamed from: j  reason: collision with root package name */
    private MediaCodec.CodecException f29327j;

    /* renamed from: k  reason: collision with root package name */
    private long f29328k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f29329l;

    /* renamed from: m  reason: collision with root package name */
    private IllegalStateException f29330m;

    /* renamed from: a  reason: collision with root package name */
    private final Object f29318a = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final k f29321d = new k();

    /* renamed from: e  reason: collision with root package name */
    private final k f29322e = new k();

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque f29323f = new ArrayDeque();

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque f29324g = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(HandlerThread handlerThread) {
        this.f29319b = handlerThread;
    }

    private void b(MediaFormat mediaFormat) {
        this.f29322e.a(-2);
        this.f29324g.add(mediaFormat);
    }

    private void f() {
        if (!this.f29324g.isEmpty()) {
            this.f29326i = (MediaFormat) this.f29324g.getLast();
        }
        this.f29321d.b();
        this.f29322e.b();
        this.f29323f.clear();
        this.f29324g.clear();
    }

    private boolean i() {
        if (this.f29328k <= 0 && !this.f29329l) {
            return false;
        }
        return true;
    }

    private void j() {
        k();
        l();
    }

    private void k() {
        IllegalStateException illegalStateException = this.f29330m;
        if (illegalStateException == null) {
            return;
        }
        this.f29330m = null;
        throw illegalStateException;
    }

    private void l() {
        MediaCodec.CodecException codecException = this.f29327j;
        if (codecException == null) {
            return;
        }
        this.f29327j = null;
        throw codecException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        synchronized (this.f29318a) {
            if (this.f29329l) {
                return;
            }
            long j10 = this.f29328k - 1;
            this.f29328k = j10;
            if (j10 > 0) {
                return;
            }
            if (j10 < 0) {
                n(new IllegalStateException());
            } else {
                f();
            }
        }
    }

    private void n(IllegalStateException illegalStateException) {
        synchronized (this.f29318a) {
            this.f29330m = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.f29318a) {
            int i10 = -1;
            if (i()) {
                return -1;
            }
            j();
            if (!this.f29321d.d()) {
                i10 = this.f29321d.e();
            }
            return i10;
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f29318a) {
            if (i()) {
                return -1;
            }
            j();
            if (this.f29322e.d()) {
                return -1;
            }
            int e10 = this.f29322e.e();
            if (e10 >= 0) {
                y4.a.h(this.f29325h);
                MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.f29323f.remove();
                bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
            } else if (e10 == -2) {
                this.f29325h = (MediaFormat) this.f29324g.remove();
            }
            return e10;
        }
    }

    public void e() {
        synchronized (this.f29318a) {
            this.f29328k++;
            ((Handler) q0.j(this.f29320c)).post(new Runnable() { // from class: s3.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.m();
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.f29318a) {
            mediaFormat = this.f29325h;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    public void h(MediaCodec mediaCodec) {
        boolean z10;
        if (this.f29320c == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        this.f29319b.start();
        Handler handler = new Handler(this.f29319b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f29320c = handler;
    }

    public void o() {
        synchronized (this.f29318a) {
            this.f29329l = true;
            this.f29319b.quit();
            f();
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f29318a) {
            this.f29327j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        synchronized (this.f29318a) {
            this.f29321d.a(i10);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f29318a) {
            MediaFormat mediaFormat = this.f29326i;
            if (mediaFormat != null) {
                b(mediaFormat);
                this.f29326i = null;
            }
            this.f29322e.a(i10);
            this.f29323f.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f29318a) {
            b(mediaFormat);
            this.f29326i = null;
        }
    }
}
