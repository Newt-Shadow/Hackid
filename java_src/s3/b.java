package s3;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import java.nio.ByteBuffer;
import s3.b;
import s3.l;
import y4.n0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements l {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f29281a;

    /* renamed from: b  reason: collision with root package name */
    private final g f29282b;

    /* renamed from: c  reason: collision with root package name */
    private final e f29283c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f29284d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f29285e;

    /* renamed from: f  reason: collision with root package name */
    private int f29286f;

    /* renamed from: s3.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0305b implements l.b {

        /* renamed from: a  reason: collision with root package name */
        private final n6.s f29287a;

        /* renamed from: b  reason: collision with root package name */
        private final n6.s f29288b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f29289c;

        public C0305b(final int i10, boolean z10) {
            this(new n6.s() { // from class: s3.c
                @Override // n6.s
                public final Object get() {
                    HandlerThread e10;
                    e10 = b.C0305b.e(i10);
                    return e10;
                }
            }, new n6.s() { // from class: s3.d
                @Override // n6.s
                public final Object get() {
                    HandlerThread f10;
                    f10 = b.C0305b.f(i10);
                    return f10;
                }
            }, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread e(int i10) {
            return new HandlerThread(b.s(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread f(int i10) {
            return new HandlerThread(b.t(i10));
        }

        @Override // s3.l.b
        /* renamed from: d */
        public b a(l.a aVar) {
            MediaCodec mediaCodec;
            b bVar;
            String str = aVar.f29349a.f29357a;
            b bVar2 = null;
            try {
                n0.a("createCodec:" + str);
                mediaCodec = MediaCodec.createByCodecName(str);
                try {
                    bVar = new b(mediaCodec, (HandlerThread) this.f29287a.get(), (HandlerThread) this.f29288b.get(), this.f29289c);
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Exception e11) {
                e = e11;
                mediaCodec = null;
            }
            try {
                n0.c();
                bVar.v(aVar.f29350b, aVar.f29352d, aVar.f29353e, aVar.f29354f);
                return bVar;
            } catch (Exception e12) {
                e = e12;
                bVar2 = bVar;
                if (bVar2 == null) {
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                } else {
                    bVar2.release();
                }
                throw e;
            }
        }

        C0305b(n6.s sVar, n6.s sVar2, boolean z10) {
            this.f29287a = sVar;
            this.f29288b = sVar2;
            this.f29289c = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String s(int i10) {
        return u(i10, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String t(int i10) {
        return u(i10, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String u(int i10, String str) {
        StringBuilder sb2 = new StringBuilder(str);
        if (i10 == 1) {
            sb2.append("Audio");
        } else if (i10 == 2) {
            sb2.append("Video");
        } else {
            sb2.append("Unknown(");
            sb2.append(i10);
            sb2.append(")");
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i10) {
        this.f29282b.h(this.f29281a);
        n0.a("configureCodec");
        this.f29281a.configure(mediaFormat, surface, mediaCrypto, i10);
        n0.c();
        this.f29283c.q();
        n0.a("startCodec");
        this.f29281a.start();
        n0.c();
        this.f29286f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(l.c cVar, MediaCodec mediaCodec, long j10, long j11) {
        cVar.a(this, j10, j11);
    }

    private void x() {
        if (this.f29284d) {
            try {
                this.f29283c.r();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    @Override // s3.l
    public boolean a() {
        return false;
    }

    @Override // s3.l
    public MediaFormat b() {
        return this.f29282b.g();
    }

    @Override // s3.l
    public void c(Bundle bundle) {
        x();
        this.f29281a.setParameters(bundle);
    }

    @Override // s3.l
    public void d(int i10, long j10) {
        this.f29281a.releaseOutputBuffer(i10, j10);
    }

    @Override // s3.l
    public int e() {
        this.f29283c.l();
        return this.f29282b.c();
    }

    @Override // s3.l
    public int f(MediaCodec.BufferInfo bufferInfo) {
        this.f29283c.l();
        return this.f29282b.d(bufferInfo);
    }

    @Override // s3.l
    public void flush() {
        this.f29283c.i();
        this.f29281a.flush();
        this.f29282b.e();
        this.f29281a.start();
    }

    @Override // s3.l
    public void g(int i10, boolean z10) {
        this.f29281a.releaseOutputBuffer(i10, z10);
    }

    @Override // s3.l
    public void h(final l.c cVar, Handler handler) {
        x();
        this.f29281a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: s3.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                b.this.w(cVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override // s3.l
    public void i(int i10) {
        x();
        this.f29281a.setVideoScalingMode(i10);
    }

    @Override // s3.l
    public void j(int i10, int i11, e3.c cVar, long j10, int i12) {
        this.f29283c.n(i10, i11, cVar, j10, i12);
    }

    @Override // s3.l
    public ByteBuffer k(int i10) {
        return this.f29281a.getInputBuffer(i10);
    }

    @Override // s3.l
    public void l(Surface surface) {
        x();
        this.f29281a.setOutputSurface(surface);
    }

    @Override // s3.l
    public void m(int i10, int i11, int i12, long j10, int i13) {
        this.f29283c.m(i10, i11, i12, j10, i13);
    }

    @Override // s3.l
    public ByteBuffer n(int i10) {
        return this.f29281a.getOutputBuffer(i10);
    }

    @Override // s3.l
    public void release() {
        try {
            if (this.f29286f == 1) {
                this.f29283c.p();
                this.f29282b.o();
            }
            this.f29286f = 2;
        } finally {
            if (!this.f29285e) {
                this.f29281a.release();
                this.f29285e = true;
            }
        }
    }

    private b(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z10) {
        this.f29281a = mediaCodec;
        this.f29282b = new g(handlerThread);
        this.f29283c = new e(mediaCodec, handlerThread2);
        this.f29284d = z10;
        this.f29286f = 0;
    }
}
