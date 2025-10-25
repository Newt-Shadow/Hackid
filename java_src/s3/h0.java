package s3;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import s3.l;
import y4.n0;
import y4.q0;
/* loaded from: classes.dex */
public final class h0 implements l {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f29336a;

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer[] f29337b;

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer[] f29338c;

    /* loaded from: classes.dex */
    public static class b implements l.b {
        @Override // s3.l.b
        public l a(l.a aVar) {
            MediaCodec b10;
            MediaCodec mediaCodec = null;
            try {
                b10 = b(aVar);
            } catch (IOException e10) {
                e = e10;
            } catch (RuntimeException e11) {
                e = e11;
            }
            try {
                n0.a("configureCodec");
                b10.configure(aVar.f29350b, aVar.f29352d, aVar.f29353e, aVar.f29354f);
                n0.c();
                n0.a("startCodec");
                b10.start();
                n0.c();
                return new h0(b10);
            } catch (IOException | RuntimeException e12) {
                e = e12;
                mediaCodec = b10;
                if (mediaCodec != null) {
                    mediaCodec.release();
                }
                throw e;
            }
        }

        protected MediaCodec b(l.a aVar) {
            y4.a.e(aVar.f29349a);
            String str = aVar.f29349a.f29357a;
            n0.a("createCodec:" + str);
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            n0.c();
            return createByCodecName;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(l.c cVar, MediaCodec mediaCodec, long j10, long j11) {
        cVar.a(this, j10, j11);
    }

    @Override // s3.l
    public boolean a() {
        return false;
    }

    @Override // s3.l
    public MediaFormat b() {
        return this.f29336a.getOutputFormat();
    }

    @Override // s3.l
    public void c(Bundle bundle) {
        this.f29336a.setParameters(bundle);
    }

    @Override // s3.l
    public void d(int i10, long j10) {
        this.f29336a.releaseOutputBuffer(i10, j10);
    }

    @Override // s3.l
    public int e() {
        return this.f29336a.dequeueInputBuffer(0L);
    }

    @Override // s3.l
    public int f(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f29336a.dequeueOutputBuffer(bufferInfo, 0L);
            if (dequeueOutputBuffer == -3 && q0.f32946a < 21) {
                this.f29338c = this.f29336a.getOutputBuffers();
                continue;
            }
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // s3.l
    public void flush() {
        this.f29336a.flush();
    }

    @Override // s3.l
    public void g(int i10, boolean z10) {
        this.f29336a.releaseOutputBuffer(i10, z10);
    }

    @Override // s3.l
    public void h(final l.c cVar, Handler handler) {
        this.f29336a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: s3.g0
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                h0.this.p(cVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override // s3.l
    public void i(int i10) {
        this.f29336a.setVideoScalingMode(i10);
    }

    @Override // s3.l
    public void j(int i10, int i11, e3.c cVar, long j10, int i12) {
        this.f29336a.queueSecureInputBuffer(i10, i11, cVar.a(), j10, i12);
    }

    @Override // s3.l
    public ByteBuffer k(int i10) {
        if (q0.f32946a >= 21) {
            return this.f29336a.getInputBuffer(i10);
        }
        return ((ByteBuffer[]) q0.j(this.f29337b))[i10];
    }

    @Override // s3.l
    public void l(Surface surface) {
        this.f29336a.setOutputSurface(surface);
    }

    @Override // s3.l
    public void m(int i10, int i11, int i12, long j10, int i13) {
        this.f29336a.queueInputBuffer(i10, i11, i12, j10, i13);
    }

    @Override // s3.l
    public ByteBuffer n(int i10) {
        if (q0.f32946a >= 21) {
            return this.f29336a.getOutputBuffer(i10);
        }
        return ((ByteBuffer[]) q0.j(this.f29338c))[i10];
    }

    @Override // s3.l
    public void release() {
        this.f29337b = null;
        this.f29338c = null;
        this.f29336a.release();
    }

    private h0(MediaCodec mediaCodec) {
        this.f29336a = mediaCodec;
        if (q0.f32946a < 21) {
            this.f29337b = mediaCodec.getInputBuffers();
            this.f29338c = mediaCodec.getOutputBuffers();
        }
    }
}
