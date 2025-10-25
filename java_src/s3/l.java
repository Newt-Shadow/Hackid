package s3;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import b3.x1;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface l {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final s f29349a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaFormat f29350b;

        /* renamed from: c  reason: collision with root package name */
        public final x1 f29351c;

        /* renamed from: d  reason: collision with root package name */
        public final Surface f29352d;

        /* renamed from: e  reason: collision with root package name */
        public final MediaCrypto f29353e;

        /* renamed from: f  reason: collision with root package name */
        public final int f29354f;

        private a(s sVar, MediaFormat mediaFormat, x1 x1Var, Surface surface, MediaCrypto mediaCrypto, int i10) {
            this.f29349a = sVar;
            this.f29350b = mediaFormat;
            this.f29351c = x1Var;
            this.f29352d = surface;
            this.f29353e = mediaCrypto;
            this.f29354f = i10;
        }

        public static a a(s sVar, MediaFormat mediaFormat, x1 x1Var, MediaCrypto mediaCrypto) {
            return new a(sVar, mediaFormat, x1Var, null, mediaCrypto, 0);
        }

        public static a b(s sVar, MediaFormat mediaFormat, x1 x1Var, Surface surface, MediaCrypto mediaCrypto) {
            return new a(sVar, mediaFormat, x1Var, surface, mediaCrypto, 0);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        l a(a aVar);
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(l lVar, long j10, long j11);
    }

    boolean a();

    MediaFormat b();

    void c(Bundle bundle);

    void d(int i10, long j10);

    int e();

    int f(MediaCodec.BufferInfo bufferInfo);

    void flush();

    void g(int i10, boolean z10);

    void h(c cVar, Handler handler);

    void i(int i10);

    void j(int i10, int i11, e3.c cVar, long j10, int i12);

    ByteBuffer k(int i10);

    void l(Surface surface);

    void m(int i10, int i11, int i12, long j10, int i13);

    ByteBuffer n(int i10);

    void release();
}
