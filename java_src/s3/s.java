package s3;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import b3.x1;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public final String f29357a;

    /* renamed from: b  reason: collision with root package name */
    public final String f29358b;

    /* renamed from: c  reason: collision with root package name */
    public final String f29359c;

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f29360d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f29361e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f29362f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f29363g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f29364h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f29365i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f29366j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f29367k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
            List supportedPerformancePoints;
            boolean covers;
            supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
            if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty() || s.a()) {
                return 0;
            }
            o.a();
            MediaCodecInfo.VideoCapabilities.PerformancePoint a10 = n.a(i10, i11, (int) d10);
            for (int i12 = 0; i12 < supportedPerformancePoints.size(); i12++) {
                covers = q.a(supportedPerformancePoints.get(i12)).covers(a10);
                if (covers) {
                    return 2;
                }
            }
            return 1;
        }
    }

    s(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        this.f29357a = (String) y4.a.e(str);
        this.f29358b = str2;
        this.f29359c = str3;
        this.f29360d = codecCapabilities;
        this.f29364h = z10;
        this.f29365i = z11;
        this.f29366j = z12;
        this.f29361e = z13;
        this.f29362f = z14;
        this.f29363g = z15;
        this.f29367k = y4.v.s(str2);
    }

    private static boolean A(String str) {
        if (q0.f32949d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str)) {
            return true;
        }
        return false;
    }

    private static boolean B(String str) {
        if (q0.f32946a <= 22) {
            String str2 = q0.f32949d;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    private static boolean C() {
        String str = q0.f32947b;
        if (!str.equals("sabrina") && !str.equals("boreal")) {
            String str2 = q0.f32949d;
            if (!str2.startsWith("Lenovo TB-X605") && !str2.startsWith("Lenovo TB-X606") && !str2.startsWith("Lenovo TB-X616")) {
                return false;
            }
        }
        return true;
    }

    private static boolean D(String str, int i10) {
        if ("video/hevc".equals(str) && 2 == i10) {
            String str2 = q0.f32947b;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean E(String str) {
        if ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(q0.f32947b)) {
            return false;
        }
        return true;
    }

    public static s F(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        boolean z15;
        boolean z16;
        boolean z17;
        if (!z13 && codecCapabilities != null && i(codecCapabilities) && !B(str)) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (codecCapabilities != null && u(codecCapabilities)) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (!z14 && (codecCapabilities == null || !s(codecCapabilities))) {
            z17 = false;
        } else {
            z17 = true;
        }
        return new s(str, str2, str3, codecCapabilities, z10, z11, z12, z15, z16, z17);
    }

    static /* synthetic */ boolean a() {
        return C();
    }

    private static int b(String str, String str2, int i10) {
        int i11;
        if (i10 <= 1 && ((q0.f32946a < 26 || i10 <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
            if ("audio/ac3".equals(str2)) {
                i11 = 6;
            } else if ("audio/eac3".equals(str2)) {
                i11 = 16;
            } else {
                i11 = 30;
            }
            y4.r.i("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + i10 + " to " + i11 + "]");
            return i11;
        }
        return i10;
    }

    private static Point d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(q0.l(i10, widthAlignment) * widthAlignment, q0.l(i11, heightAlignment) * heightAlignment);
    }

    private static boolean e(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        Point d11 = d(videoCapabilities, i10, i11);
        int i12 = d11.x;
        int i13 = d11.y;
        if (d10 != -1.0d && d10 >= 1.0d) {
            return videoCapabilities.areSizeAndRateSupported(i12, i13, Math.floor(d10));
        }
        return videoCapabilities.isSizeSupported(i12, i13);
    }

    private static MediaCodecInfo.CodecProfileLevel[] g(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        int i10;
        int i11;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
            i10 = videoCapabilities.getBitrateRange().getUpper().intValue();
        } else {
            i10 = 0;
        }
        if (i10 >= 180000000) {
            i11 = 1024;
        } else if (i10 >= 120000000) {
            i11 = 512;
        } else if (i10 >= 60000000) {
            i11 = 256;
        } else if (i10 >= 30000000) {
            i11 = 128;
        } else if (i10 >= 18000000) {
            i11 = 64;
        } else if (i10 >= 12000000) {
            i11 = 32;
        } else if (i10 >= 7200000) {
            i11 = 16;
        } else if (i10 >= 3600000) {
            i11 = 8;
        } else if (i10 >= 1800000) {
            i11 = 4;
        } else if (i10 >= 800000) {
            i11 = 2;
        } else {
            i11 = 1;
        }
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i11;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    private static boolean i(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (q0.f32946a >= 19 && j(codecCapabilities)) {
            return true;
        }
        return false;
    }

    private static boolean j(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private boolean m(x1 x1Var, boolean z10) {
        Pair q10 = f0.q(x1Var);
        if (q10 == null) {
            return true;
        }
        int intValue = ((Integer) q10.first).intValue();
        int intValue2 = ((Integer) q10.second).intValue();
        if ("video/dolby-vision".equals(x1Var.f4514l)) {
            if ("video/avc".equals(this.f29358b)) {
                intValue = 8;
            } else {
                intValue = "video/hevc".equals(this.f29358b) ? 2 : 2;
            }
            intValue2 = 0;
        }
        if (!this.f29367k && intValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] h10 = h();
        if (q0.f32946a <= 23 && "video/x-vnd.on2.vp9".equals(this.f29358b) && h10.length == 0) {
            h10 = g(this.f29360d);
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : h10) {
            if (codecProfileLevel.profile == intValue && ((codecProfileLevel.level >= intValue2 || !z10) && !D(this.f29358b, intValue))) {
                return true;
            }
        }
        y("codec.profileLevel, " + x1Var.f4511i + ", " + this.f29359c);
        return false;
    }

    private boolean q(x1 x1Var) {
        if (!this.f29358b.equals(x1Var.f4514l) && !this.f29358b.equals(f0.m(x1Var))) {
            return false;
        }
        return true;
    }

    private static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (q0.f32946a >= 21 && t(codecCapabilities)) {
            return true;
        }
        return false;
    }

    private static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean u(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (q0.f32946a >= 21 && v(codecCapabilities)) {
            return true;
        }
        return false;
    }

    private static boolean v(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void x(String str) {
        y4.r.b("MediaCodecInfo", "AssumedSupport [" + str + "] [" + this.f29357a + ", " + this.f29358b + "] [" + q0.f32950e + "]");
    }

    private void y(String str) {
        y4.r.b("MediaCodecInfo", "NoSupport [" + str + "] [" + this.f29357a + ", " + this.f29358b + "] [" + q0.f32950e + "]");
    }

    private static boolean z(String str) {
        return "audio/opus".equals(str);
    }

    public Point c(int i10, int i11) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f29360d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return d(videoCapabilities, i10, i11);
    }

    public e3.i f(x1 x1Var, x1 x1Var2) {
        int i10;
        int i11;
        if (!q0.c(x1Var.f4514l, x1Var2.f4514l)) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        if (this.f29367k) {
            if (x1Var.f4522t != x1Var2.f4522t) {
                i10 |= 1024;
            }
            if (!this.f29361e && (x1Var.f4519q != x1Var2.f4519q || x1Var.f4520r != x1Var2.f4520r)) {
                i10 |= 512;
            }
            if (!q0.c(x1Var.f4526x, x1Var2.f4526x)) {
                i10 |= 2048;
            }
            if (A(this.f29357a) && !x1Var.g(x1Var2)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                String str = this.f29357a;
                if (x1Var.g(x1Var2)) {
                    i11 = 3;
                } else {
                    i11 = 2;
                }
                return new e3.i(str, x1Var, x1Var2, i11, 0);
            }
        } else {
            if (x1Var.f4527y != x1Var2.f4527y) {
                i10 |= Base64Utils.IO_BUFFER_SIZE;
            }
            if (x1Var.f4528z != x1Var2.f4528z) {
                i10 |= 8192;
            }
            if (x1Var.A != x1Var2.A) {
                i10 |= 16384;
            }
            if (i10 == 0 && "audio/mp4a-latm".equals(this.f29358b)) {
                Pair q10 = f0.q(x1Var);
                Pair q11 = f0.q(x1Var2);
                if (q10 != null && q11 != null) {
                    int intValue = ((Integer) q10.first).intValue();
                    int intValue2 = ((Integer) q11.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new e3.i(this.f29357a, x1Var, x1Var2, 3, 0);
                    }
                }
            }
            if (!x1Var.g(x1Var2)) {
                i10 |= 32;
            }
            if (z(this.f29358b)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new e3.i(this.f29357a, x1Var, x1Var2, 1, 0);
            }
        }
        return new e3.i(this.f29357a, x1Var, x1Var2, 0, i10);
    }

    public MediaCodecInfo.CodecProfileLevel[] h() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f29360d;
        if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
            return new MediaCodecInfo.CodecProfileLevel[0];
        }
        return codecProfileLevelArr;
    }

    public boolean k(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f29360d;
        if (codecCapabilities == null) {
            y("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            y("channelCount.aCaps");
            return false;
        } else if (b(this.f29357a, this.f29358b, audioCapabilities.getMaxInputChannelCount()) < i10) {
            y("channelCount.support, " + i10);
            return false;
        } else {
            return true;
        }
    }

    public boolean l(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f29360d;
        if (codecCapabilities == null) {
            y("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            y("sampleRate.aCaps");
            return false;
        } else if (!audioCapabilities.isSampleRateSupported(i10)) {
            y("sampleRate.support, " + i10);
            return false;
        } else {
            return true;
        }
    }

    public boolean n(x1 x1Var) {
        if (!q(x1Var) || !m(x1Var, false)) {
            return false;
        }
        return true;
    }

    public boolean o(x1 x1Var) {
        int i10;
        boolean z10 = false;
        if (!q(x1Var) || !m(x1Var, true)) {
            return false;
        }
        if (this.f29367k) {
            int i11 = x1Var.f4519q;
            if (i11 <= 0 || (i10 = x1Var.f4520r) <= 0) {
                return true;
            }
            if (q0.f32946a >= 21) {
                return w(i11, i10, x1Var.f4521s);
            }
            if (i11 * i10 <= f0.N()) {
                z10 = true;
            }
            if (!z10) {
                y("legacyFrameSize, " + x1Var.f4519q + "x" + x1Var.f4520r);
            }
            return z10;
        }
        if (q0.f32946a >= 21) {
            int i12 = x1Var.f4528z;
            if (i12 != -1 && !l(i12)) {
                return false;
            }
            int i13 = x1Var.f4527y;
            if (i13 != -1 && !k(i13)) {
                return false;
            }
        }
        return true;
    }

    public boolean p() {
        if (q0.f32946a >= 29 && "video/x-vnd.on2.vp9".equals(this.f29358b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : h()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean r(x1 x1Var) {
        if (this.f29367k) {
            return this.f29361e;
        }
        Pair q10 = f0.q(x1Var);
        if (q10 != null && ((Integer) q10.first).intValue() == 42) {
            return true;
        }
        return false;
    }

    public String toString() {
        return this.f29357a;
    }

    public boolean w(int i10, int i11, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f29360d;
        if (codecCapabilities == null) {
            y("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            y("sizeAndRate.vCaps");
            return false;
        }
        if (q0.f32946a >= 29) {
            int a10 = a.a(videoCapabilities, i10, i11, d10);
            if (a10 == 2) {
                return true;
            }
            if (a10 == 1) {
                y("sizeAndRate.cover, " + i10 + "x" + i11 + "@" + d10);
                return false;
            }
        }
        if (!e(videoCapabilities, i10, i11, d10)) {
            if (i10 < i11 && E(this.f29357a) && e(videoCapabilities, i11, i10, d10)) {
                x("sizeAndRate.rotated, " + i10 + "x" + i11 + "@" + d10);
            } else {
                y("sizeAndRate.support, " + i10 + "x" + i11 + "@" + d10);
                return false;
            }
        }
        return true;
    }
}
