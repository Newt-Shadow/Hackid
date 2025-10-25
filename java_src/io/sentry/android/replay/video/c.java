package io.sentry.android.replay.video;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.util.Range;
import android.view.Surface;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.s5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import rd.b0;
import xc.d;
import xc.f;
import xc.h;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22831a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.android.replay.video.a f22832b;

    /* renamed from: c  reason: collision with root package name */
    private final id.a f22833c;

    /* renamed from: d  reason: collision with root package name */
    private final d f22834d;

    /* renamed from: e  reason: collision with root package name */
    private final MediaCodec f22835e;

    /* renamed from: f  reason: collision with root package name */
    private final d f22836f;

    /* renamed from: g  reason: collision with root package name */
    private final MediaCodec.BufferInfo f22837g;

    /* renamed from: h  reason: collision with root package name */
    private final io.sentry.android.replay.video.b f22838h;

    /* renamed from: i  reason: collision with root package name */
    private Surface f22839i;

    /* loaded from: classes2.dex */
    static final class a extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f22840e = new a();

        a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Boolean invoke() {
            boolean N;
            boolean z10 = false;
            MediaCodecInfo[] codecInfos = new MediaCodecList(0).getCodecInfos();
            m.d(codecInfos, "MediaCodecList(MediaCode…)\n            .codecInfos");
            int length = codecInfos.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                String name = codecInfos[i10].getName();
                m.d(name, "it.name");
                N = b0.N(name, "c2.exynos", false, 2, null);
                if (N) {
                    z10 = true;
                    break;
                }
                i10++;
            }
            return Boolean.valueOf(z10);
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends n implements id.a {
        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final MediaFormat invoke() {
            int a10 = c.this.g().a();
            try {
                MediaCodecInfo.VideoCapabilities videoCapabilities = c.this.e().getCodecInfo().getCapabilitiesForType(c.this.g().d()).getVideoCapabilities();
                if (!videoCapabilities.getBitrateRange().contains((Range<Integer>) Integer.valueOf(a10))) {
                    ILogger logger = c.this.h().getLogger();
                    j5 j5Var = j5.DEBUG;
                    logger.c(j5Var, "Encoder doesn't support the provided bitRate: " + a10 + ", the value will be clamped to the closest one", new Object[0]);
                    Integer clamp = videoCapabilities.getBitrateRange().clamp(Integer.valueOf(a10));
                    m.d(clamp, "videoCapabilities.bitrateRange.clamp(bitRate)");
                    a10 = clamp.intValue();
                }
            } catch (Throwable th) {
                c.this.h().getLogger().b(j5.DEBUG, "Could not retrieve MediaCodec info", th);
            }
            MediaFormat createVideoFormat = MediaFormat.createVideoFormat(c.this.g().d(), c.this.g().f(), c.this.g().e());
            m.d(createVideoFormat, "createVideoFormat(\n     …recordingHeight\n        )");
            createVideoFormat.setInteger("color-format", 2130708361);
            createVideoFormat.setInteger(FFmpegKitFlutterPlugin.KEY_STATISTICS_BITRATE, a10);
            createVideoFormat.setFloat("frame-rate", c.this.g().c());
            createVideoFormat.setInteger("i-frame-interval", 6);
            return createVideoFormat;
        }
    }

    public c(s5 options, io.sentry.android.replay.video.a muxerConfig, id.a aVar) {
        d b10;
        MediaCodec createEncoderByType;
        d b11;
        m.e(options, "options");
        m.e(muxerConfig, "muxerConfig");
        this.f22831a = options;
        this.f22832b = muxerConfig;
        this.f22833c = aVar;
        h hVar = h.f32713c;
        b10 = f.b(hVar, a.f22840e);
        this.f22834d = b10;
        if (d()) {
            createEncoderByType = MediaCodec.createByCodecName("c2.android.avc.encoder");
        } else {
            createEncoderByType = MediaCodec.createEncoderByType(muxerConfig.d());
        }
        m.d(createEncoderByType, "if (hasExynosCodec) {\n  …onfig.mimeType)\n        }");
        this.f22835e = createEncoderByType;
        b11 = f.b(hVar, new b());
        this.f22836f = b11;
        this.f22837g = new MediaCodec.BufferInfo();
        String absolutePath = muxerConfig.b().getAbsolutePath();
        m.d(absolutePath, "muxerConfig.file.absolutePath");
        this.f22838h = new io.sentry.android.replay.video.b(absolutePath, muxerConfig.c());
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x017e, code lost:
        throw new java.lang.RuntimeException("encoderOutputBuffer " + r1 + " was null");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void a(boolean r9) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.replay.video.c.a(boolean):void");
    }

    private final boolean d() {
        return ((Boolean) this.f22834d.getValue()).booleanValue();
    }

    private final MediaFormat f() {
        return (MediaFormat) this.f22836f.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.graphics.Bitmap r6) {
        /*
            r5 = this;
            java.lang.String r0 = "image"
            kotlin.jvm.internal.m.e(r6, r0)
            java.lang.String r0 = android.os.Build.MANUFACTURER
            java.lang.String r1 = "MANUFACTURER"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r2 = "xiaomi"
            r3 = 1
            boolean r2 = rd.n.L(r0, r2, r3)
            r4 = 0
            if (r2 != 0) goto L2b
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "motorola"
            boolean r0 = rd.n.L(r0, r1, r3)
            if (r0 == 0) goto L22
            goto L2b
        L22:
            android.view.Surface r0 = r5.f22839i
            if (r0 == 0) goto L34
            android.graphics.Canvas r0 = r0.lockHardwareCanvas()
            goto L35
        L2b:
            android.view.Surface r0 = r5.f22839i
            if (r0 == 0) goto L34
            android.graphics.Canvas r0 = r0.lockCanvas(r4)
            goto L35
        L34:
            r0 = r4
        L35:
            if (r0 == 0) goto L3b
            r1 = 0
            r0.drawBitmap(r6, r1, r1, r4)
        L3b:
            android.view.Surface r6 = r5.f22839i
            if (r6 == 0) goto L42
            r6.unlockCanvasAndPost(r0)
        L42:
            r6 = 0
            r5.a(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.replay.video.c.b(android.graphics.Bitmap):void");
    }

    public final long c() {
        return this.f22838h.a();
    }

    public final MediaCodec e() {
        return this.f22835e;
    }

    public final io.sentry.android.replay.video.a g() {
        return this.f22832b;
    }

    public final s5 h() {
        return this.f22831a;
    }

    public final void i() {
        try {
            id.a aVar = this.f22833c;
            if (aVar != null) {
                aVar.invoke();
            }
            a(true);
            this.f22835e.stop();
            this.f22835e.release();
            Surface surface = this.f22839i;
            if (surface != null) {
                surface.release();
            }
            this.f22838h.d();
        } catch (Throwable th) {
            this.f22831a.getLogger().b(j5.DEBUG, "Failed to properly release video encoder", th);
        }
    }

    public final void j() {
        this.f22835e.configure(f(), (Surface) null, (MediaCrypto) null, 1);
        this.f22839i = this.f22835e.createInputSurface();
        this.f22835e.start();
        a(false);
    }

    public /* synthetic */ c(s5 s5Var, io.sentry.android.replay.video.a aVar, id.a aVar2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(s5Var, aVar, (i10 & 4) != 0 ? null : aVar2);
    }
}
