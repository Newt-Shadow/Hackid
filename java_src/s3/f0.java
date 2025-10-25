package s3;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import b3.x1;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.tika.pipes.PipesConfigBase;
import s3.f0;
import y4.q0;
/* loaded from: classes.dex */
public abstract class f0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f29310a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap f29311b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static int f29312c = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f29313a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f29314b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f29315c;

        public b(String str, boolean z10, boolean z11) {
            this.f29313a = str;
            this.f29314b = z10;
            this.f29315c = z11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            if (TextUtils.equals(this.f29313a, bVar.f29313a) && this.f29314b == bVar.f29314b && this.f29315c == bVar.f29315c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int hashCode = (this.f29313a.hashCode() + 31) * 31;
            int i11 = 1231;
            if (this.f29314b) {
                i10 = 1231;
            } else {
                i10 = 1237;
            }
            int i12 = (hashCode + i10) * 31;
            if (!this.f29315c) {
                i11 = 1237;
            }
            return i12 + i11;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends Exception {
        private c(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface d {
        MediaCodecInfo a(int i10);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int d();

        boolean e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e implements d {
        private e() {
        }

        @Override // s3.f0.d
        public MediaCodecInfo a(int i10) {
            return MediaCodecList.getCodecInfoAt(i10);
        }

        @Override // s3.f0.d
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            if ("secure-playback".equals(str) && "video/avc".equals(str2)) {
                return true;
            }
            return false;
        }

        @Override // s3.f0.d
        public boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // s3.f0.d
        public int d() {
            return MediaCodecList.getCodecCount();
        }

        @Override // s3.f0.d
        public boolean e() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class f implements d {

        /* renamed from: a  reason: collision with root package name */
        private final int f29316a;

        /* renamed from: b  reason: collision with root package name */
        private MediaCodecInfo[] f29317b;

        public f(boolean z10, boolean z11) {
            int i10;
            if (!z10 && !z11) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            this.f29316a = i10;
        }

        private void f() {
            if (this.f29317b == null) {
                this.f29317b = new MediaCodecList(this.f29316a).getCodecInfos();
            }
        }

        @Override // s3.f0.d
        public MediaCodecInfo a(int i10) {
            f();
            return this.f29317b[i10];
        }

        @Override // s3.f0.d
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // s3.f0.d
        public boolean c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // s3.f0.d
        public int d() {
            f();
            return this.f29317b.length;
        }

        @Override // s3.f0.d
        public boolean e() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface g {
        int a(Object obj);
    }

    private static boolean A(MediaCodecInfo mediaCodecInfo) {
        if (q0.f32946a >= 29 && B(mediaCodecInfo)) {
            return true;
        }
        return false;
    }

    private static boolean B(MediaCodecInfo mediaCodecInfo) {
        boolean isAlias;
        isAlias = mediaCodecInfo.isAlias();
        return isAlias;
    }

    private static boolean C(MediaCodecInfo mediaCodecInfo, String str, boolean z10, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z10 && str.endsWith(".secure"))) {
            return false;
        }
        int i10 = q0.f32946a;
        if (i10 < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i10 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = q0.f32947b;
            if ("a70".equals(str3) || ("Xiaomi".equals(q0.f32948c) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = q0.f32947b;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = q0.f32947b;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i10 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(q0.f32948c))) {
            String str6 = q0.f32947b;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i10 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(q0.f32948c)) {
            String str7 = q0.f32947b;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i10 <= 19 && q0.f32947b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        if (i10 <= 23 && "audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) {
            return false;
        }
        return true;
    }

    private static boolean D(MediaCodecInfo mediaCodecInfo, String str) {
        if (q0.f32946a >= 29) {
            return E(mediaCodecInfo);
        }
        return !F(mediaCodecInfo, str);
    }

    private static boolean E(MediaCodecInfo mediaCodecInfo) {
        boolean isHardwareAccelerated;
        isHardwareAccelerated = mediaCodecInfo.isHardwareAccelerated();
        return isHardwareAccelerated;
    }

    private static boolean F(MediaCodecInfo mediaCodecInfo, String str) {
        if (q0.f32946a >= 29) {
            return G(mediaCodecInfo);
        }
        if (y4.v.o(str)) {
            return true;
        }
        String e10 = n6.c.e(mediaCodecInfo.getName());
        if (e10.startsWith("arc.")) {
            return false;
        }
        if (e10.startsWith("omx.google.") || e10.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((e10.startsWith("omx.sec.") && e10.contains(".sw.")) || e10.equals("omx.qcom.video.decoder.hevcswvdec") || e10.startsWith("c2.android.") || e10.startsWith("c2.google.")) {
            return true;
        }
        if (!e10.startsWith("omx.") && !e10.startsWith("c2.")) {
            return true;
        }
        return false;
    }

    private static boolean G(MediaCodecInfo mediaCodecInfo) {
        boolean isSoftwareOnly;
        isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
        return isSoftwareOnly;
    }

    private static boolean H(MediaCodecInfo mediaCodecInfo) {
        if (q0.f32946a >= 29) {
            return I(mediaCodecInfo);
        }
        String e10 = n6.c.e(mediaCodecInfo.getName());
        if (!e10.startsWith("omx.google.") && !e10.startsWith("c2.android.") && !e10.startsWith("c2.google.")) {
            return true;
        }
        return false;
    }

    private static boolean I(MediaCodecInfo mediaCodecInfo) {
        boolean isVendor;
        isVendor = mediaCodecInfo.isVendor();
        return isVendor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int J(s sVar) {
        String str = sVar.f29357a;
        if (!str.startsWith("OMX.google") && !str.startsWith("c2.android")) {
            if (q0.f32946a < 26 && str.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                return -1;
            }
            return 0;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int K(s sVar) {
        return sVar.f29357a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int L(x1 x1Var, s sVar) {
        return sVar.n(x1Var) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int M(g gVar, Object obj, Object obj2) {
        return gVar.a(obj2) - gVar.a(obj);
    }

    public static int N() {
        int i10;
        if (f29312c == -1) {
            int i11 = 0;
            s r10 = r("video/avc", false, false);
            if (r10 != null) {
                MediaCodecInfo.CodecProfileLevel[] h10 = r10.h();
                int length = h10.length;
                int i12 = 0;
                while (i11 < length) {
                    i12 = Math.max(h(h10[i11].level), i12);
                    i11++;
                }
                if (q0.f32946a >= 21) {
                    i10 = 345600;
                } else {
                    i10 = 172800;
                }
                i11 = Math.max(i12, i10);
            }
            f29312c = i11;
        }
        return f29312c;
    }

    private static int O(int i10) {
        int i11 = 17;
        if (i10 != 17) {
            i11 = 20;
            if (i10 != 20) {
                i11 = 23;
                if (i10 != 23) {
                    i11 = 29;
                    if (i10 != 29) {
                        i11 = 39;
                        if (i10 != 39) {
                            i11 = 42;
                            if (i10 != 42) {
                                switch (i10) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i11;
    }

    private static void P(List list, final g gVar) {
        Collections.sort(list, new Comparator() { // from class: s3.e0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int M;
                M = f0.M(f0.g.this, obj, obj2);
                return M;
            }
        });
    }

    private static int Q(int i10) {
        if (i10 != 10) {
            if (i10 != 11) {
                if (i10 != 20) {
                    if (i10 != 21) {
                        if (i10 != 30) {
                            if (i10 != 31) {
                                if (i10 != 40) {
                                    if (i10 != 41) {
                                        if (i10 != 50) {
                                            if (i10 != 51) {
                                                switch (i10) {
                                                    case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                                                        return 2048;
                                                    case 61:
                                                        return Base64Utils.IO_BUFFER_SIZE;
                                                    case 62:
                                                        return 8192;
                                                    default:
                                                        return -1;
                                                }
                                            }
                                            return 512;
                                        }
                                        return 256;
                                    }
                                    return 128;
                                }
                                return 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int R(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return i10 != 3 ? -1 : 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static void e(String str, List list) {
        if ("audio/raw".equals(str)) {
            if (q0.f32946a < 26 && q0.f32947b.equals("R9") && list.size() == 1 && ((s) list.get(0)).f29357a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(s.F("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            P(list, new g() { // from class: s3.b0
                @Override // s3.f0.g
                public final int a(Object obj) {
                    int J;
                    J = f0.J((s) obj);
                    return J;
                }
            });
        }
        int i10 = q0.f32946a;
        if (i10 < 21 && list.size() > 1) {
            String str2 = ((s) list.get(0)).f29357a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                P(list, new g() { // from class: s3.c0
                    @Override // s3.f0.g
                    public final int a(Object obj) {
                        int K;
                        K = f0.K((s) obj);
                        return K;
                    }
                });
            }
        }
        if (i10 < 32 && list.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((s) list.get(0)).f29357a)) {
            list.add((s) list.remove(0));
        }
    }

    private static int f(int i10) {
        switch (i10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return Base64Utils.IO_BUFFER_SIZE;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case C1415p9.C /* 19 */:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case Build.API_LEVELS.API_22 /* 22 */:
                return 4194304;
            case Build.API_LEVELS.API_23 /* 23 */:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int g(int i10) {
        switch (i10) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i10) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case Build.API_LEVELS.API_22 /* 22 */:
                        return 128;
                    default:
                        switch (i10) {
                            case Build.API_LEVELS.API_30 /* 30 */:
                                return 256;
                            case Build.API_LEVELS.API_31 /* 31 */:
                                return 512;
                            case Build.API_LEVELS.API_32 /* 32 */:
                                return 1024;
                            default:
                                switch (i10) {
                                    case C1415p9.L /* 40 */:
                                        return 2048;
                                    case 41:
                                        return Base64Utils.IO_BUFFER_SIZE;
                                    case C1415p9.M /* 42 */:
                                        return 8192;
                                    default:
                                        switch (i10) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int h(int i10) {
        if (i10 == 1 || i10 == 2) {
            return 25344;
        }
        switch (i10) {
            case 8:
            case 16:
            case Build.API_LEVELS.API_32 /* 32 */:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case Base64Utils.IO_BUFFER_SIZE /* 4096 */:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    private static int i(int i10) {
        if (i10 != 66) {
            if (i10 != 77) {
                if (i10 != 88) {
                    if (i10 != 100) {
                        if (i10 != 110) {
                            if (i10 != 122) {
                                return i10 != 244 ? -1 : 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static Integer j(String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals("01")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            case '\n':
                return 1024;
            case 11:
                return 2048;
            case '\f':
                return Integer.valueOf((int) Base64Utils.IO_BUFFER_SIZE);
            default:
                return null;
        }
    }

    private static Integer k(String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1536:
                if (str.equals("00")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1537:
                if (str.equals("01")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\t';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            default:
                return null;
        }
    }

    private static Pair l(String str, String[] strArr) {
        int O;
        if (strArr.length != 3) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if ("audio/mp4a-latm".equals(y4.v.h(Integer.parseInt(strArr[1], 16))) && (O = O(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair(Integer.valueOf(O), 0);
            }
        } catch (NumberFormatException unused) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    public static String m(x1 x1Var) {
        Pair q10;
        if ("audio/eac3-joc".equals(x1Var.f4514l)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(x1Var.f4514l) && (q10 = q(x1Var)) != null) {
            int intValue = ((Integer) q10.first).intValue();
            if (intValue != 16 && intValue != 256) {
                if (intValue == 512) {
                    return "video/avc";
                }
                return null;
            }
            return "video/hevc";
        }
        return null;
    }

    private static Pair n(String str, String[] strArr, z4.c cVar) {
        int i10;
        if (strArr.length < 4) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i11 = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                y4.r.i("MediaCodecUtil", "Unknown AV1 profile: " + parseInt);
                return null;
            } else if (parseInt3 != 8 && parseInt3 != 10) {
                y4.r.i("MediaCodecUtil", "Unknown AV1 bit depth: " + parseInt3);
                return null;
            } else {
                if (parseInt3 != 8) {
                    if (cVar != null && (cVar.f33417d != null || (i10 = cVar.f33416c) == 7 || i10 == 6)) {
                        i11 = Base64Utils.IO_BUFFER_SIZE;
                    } else {
                        i11 = 2;
                    }
                }
                int f10 = f(parseInt2);
                if (f10 == -1) {
                    y4.r.i("MediaCodecUtil", "Unknown AV1 level: " + parseInt2);
                    return null;
                }
                return new Pair(Integer.valueOf(i11), Integer.valueOf(f10));
            }
        } catch (NumberFormatException unused) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    private static Pair o(String str, String[] strArr) {
        int parseInt;
        int i10;
        if (strArr.length < 2) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i10 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                parseInt = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length >= 3) {
                int parseInt2 = Integer.parseInt(strArr[1]);
                parseInt = Integer.parseInt(strArr[2]);
                i10 = parseInt2;
            } else {
                y4.r.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                return null;
            }
            int i11 = i(i10);
            if (i11 == -1) {
                y4.r.i("MediaCodecUtil", "Unknown AVC profile: " + i10);
                return null;
            }
            int g10 = g(parseInt);
            if (g10 == -1) {
                y4.r.i("MediaCodecUtil", "Unknown AVC level: " + parseInt);
                return null;
            }
            return new Pair(Integer.valueOf(i11), Integer.valueOf(g10));
        } catch (NumberFormatException unused) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    private static String p(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        String[] supportedTypes;
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        } else if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
                return "audio/x-lg-flac";
            }
            if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
                return "audio/lg-ac3";
            }
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0075, code lost:
        if (r3.equals("av01") == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair q(b3.x1 r6) {
        /*
            java.lang.String r0 = r6.f4511i
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.lang.String r2 = "\\."
            java.lang.String[] r0 = r0.split(r2)
            java.lang.String r2 = "video/dolby-vision"
            java.lang.String r3 = r6.f4514l
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L1d
            java.lang.String r6 = r6.f4511i
            android.util.Pair r6 = w(r6, r0)
            return r6
        L1d:
            r2 = 0
            r3 = r0[r2]
            r3.hashCode()
            int r4 = r3.hashCode()
            r5 = -1
            switch(r4) {
                case 3004662: goto L6f;
                case 3006243: goto L64;
                case 3006244: goto L59;
                case 3199032: goto L4e;
                case 3214780: goto L43;
                case 3356560: goto L38;
                case 3624515: goto L2d;
                default: goto L2b;
            }
        L2b:
            r2 = r5
            goto L78
        L2d:
            java.lang.String r2 = "vp09"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L36
            goto L2b
        L36:
            r2 = 6
            goto L78
        L38:
            java.lang.String r2 = "mp4a"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L41
            goto L2b
        L41:
            r2 = 5
            goto L78
        L43:
            java.lang.String r2 = "hvc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L4c
            goto L2b
        L4c:
            r2 = 4
            goto L78
        L4e:
            java.lang.String r2 = "hev1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L57
            goto L2b
        L57:
            r2 = 3
            goto L78
        L59:
            java.lang.String r2 = "avc2"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L62
            goto L2b
        L62:
            r2 = 2
            goto L78
        L64:
            java.lang.String r2 = "avc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L6d
            goto L2b
        L6d:
            r2 = 1
            goto L78
        L6f:
            java.lang.String r4 = "av01"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L78
            goto L2b
        L78:
            switch(r2) {
                case 0: goto L9a;
                case 1: goto L93;
                case 2: goto L93;
                case 3: goto L8a;
                case 4: goto L8a;
                case 5: goto L83;
                case 6: goto L7c;
                default: goto L7b;
            }
        L7b:
            return r1
        L7c:
            java.lang.String r6 = r6.f4511i
            android.util.Pair r6 = y(r6, r0)
            return r6
        L83:
            java.lang.String r6 = r6.f4511i
            android.util.Pair r6 = l(r6, r0)
            return r6
        L8a:
            java.lang.String r1 = r6.f4511i
            z4.c r6 = r6.f4526x
            android.util.Pair r6 = x(r1, r0, r6)
            return r6
        L93:
            java.lang.String r6 = r6.f4511i
            android.util.Pair r6 = o(r6, r0)
            return r6
        L9a:
            java.lang.String r1 = r6.f4511i
            z4.c r6 = r6.f4526x
            android.util.Pair r6 = n(r1, r0, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: s3.f0.q(b3.x1):android.util.Pair");
    }

    public static s r(String str, boolean z10, boolean z11) {
        List s10 = s(str, z10, z11);
        if (s10.isEmpty()) {
            return null;
        }
        return (s) s10.get(0);
    }

    public static synchronized List s(String str, boolean z10, boolean z11) {
        d eVar;
        synchronized (f0.class) {
            b bVar = new b(str, z10, z11);
            HashMap hashMap = f29311b;
            List list = (List) hashMap.get(bVar);
            if (list != null) {
                return list;
            }
            int i10 = q0.f32946a;
            if (i10 >= 21) {
                eVar = new f(z10, z11);
            } else {
                eVar = new e();
            }
            ArrayList t10 = t(bVar, eVar);
            if (z10 && t10.isEmpty() && 21 <= i10 && i10 <= 23) {
                t10 = t(bVar, new e());
                if (!t10.isEmpty()) {
                    y4.r.i("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((s) t10.get(0)).f29357a);
                }
            }
            e(str, t10);
            o6.q t11 = o6.q.t(t10);
            hashMap.put(bVar, t11);
            return t11;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:28|(4:(2:72|73)|53|(9:56|57|58|59|60|61|62|64|65)|9)|32|33|34|36|9) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007f, code lost:
        if (r1.f29314b == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a4, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a5, code lost:
        r1 = r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0101 A[Catch: Exception -> 0x014f, TRY_ENTER, TryCatch #1 {Exception -> 0x014f, blocks: (B:3:0x0008, B:5:0x001b, B:60:0x0120, B:8:0x002d, B:11:0x0038, B:54:0x00f9, B:57:0x0101, B:59:0x0107, B:61:0x012a, B:62:0x014d), top: B:69:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012a A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList t(s3.f0.b r24, s3.f0.d r25) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s3.f0.t(s3.f0$b, s3.f0$d):java.util.ArrayList");
    }

    public static List u(List list, final x1 x1Var) {
        ArrayList arrayList = new ArrayList(list);
        P(arrayList, new g() { // from class: s3.d0
            @Override // s3.f0.g
            public final int a(Object obj) {
                int L;
                L = f0.L(x1.this, (s) obj);
                return L;
            }
        });
        return arrayList;
    }

    public static s v() {
        return r("audio/raw", false, false);
    }

    private static Pair w(String str, String[] strArr) {
        if (strArr.length < 3) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f29310a.matcher(strArr[1]);
        if (!matcher.matches()) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        Integer k10 = k(group);
        if (k10 == null) {
            y4.r.i("MediaCodecUtil", "Unknown Dolby Vision profile string: " + group);
            return null;
        }
        String str2 = strArr[2];
        Integer j10 = j(str2);
        if (j10 == null) {
            y4.r.i("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
            return null;
        }
        return new Pair(k10, j10);
    }

    private static Pair x(String str, String[] strArr, z4.c cVar) {
        if (strArr.length < 4) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i10 = 1;
        Matcher matcher = f29310a.matcher(strArr[1]);
        if (!matcher.matches()) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if ("2".equals(group)) {
                if (cVar != null && cVar.f33416c == 6) {
                    i10 = Base64Utils.IO_BUFFER_SIZE;
                } else {
                    i10 = 2;
                }
            } else {
                y4.r.i("MediaCodecUtil", "Unknown HEVC profile string: " + group);
                return null;
            }
        }
        String str2 = strArr[3];
        Integer z10 = z(str2);
        if (z10 == null) {
            y4.r.i("MediaCodecUtil", "Unknown HEVC level string: " + str2);
            return null;
        }
        return new Pair(Integer.valueOf(i10), z10);
    }

    private static Pair y(String str, String[] strArr) {
        if (strArr.length < 3) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int R = R(parseInt);
            if (R == -1) {
                y4.r.i("MediaCodecUtil", "Unknown VP9 profile: " + parseInt);
                return null;
            }
            int Q = Q(parseInt2);
            if (Q == -1) {
                y4.r.i("MediaCodecUtil", "Unknown VP9 level: " + parseInt2);
                return null;
            }
            return new Pair(Integer.valueOf(R), Integer.valueOf(Q));
        } catch (NumberFormatException unused) {
            y4.r.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    private static Integer z(String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    c10 = 0;
                    break;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    c10 = 1;
                    break;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    c10 = 2;
                    break;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    c10 = 3;
                    break;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    c10 = 4;
                    break;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    c10 = 5;
                    break;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    c10 = 6;
                    break;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    c10 = 7;
                    break;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    c10 = 11;
                    break;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    c10 = 14;
                    break;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    c10 = 15;
                    break;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    c10 = 16;
                    break;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    c10 = 17;
                    break;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    c10 = 18;
                    break;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    c10 = 19;
                    break;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    c10 = 20;
                    break;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    c10 = 21;
                    break;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    c10 = 22;
                    break;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    c10 = 23;
                    break;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    c10 = 24;
                    break;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    c10 = 25;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 32;
            case 3:
                return 128;
            case 4:
                return 512;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case '\b':
                return 64;
            case '\t':
                return 256;
            case '\n':
                return 2048;
            case 11:
                return 8192;
            case '\f':
                return 32768;
            case '\r':
                return 131072;
            case 14:
                return 524288;
            case 15:
                return 2097152;
            case 16:
                return 8388608;
            case 17:
                return 33554432;
            case 18:
                return 1024;
            case C1415p9.C /* 19 */:
                return Integer.valueOf((int) Base64Utils.IO_BUFFER_SIZE);
            case 20:
                return 16384;
            case 21:
                return 65536;
            case Build.API_LEVELS.API_22 /* 22 */:
                return 262144;
            case Build.API_LEVELS.API_23 /* 23 */:
                return 1048576;
            case Build.API_LEVELS.API_24 /* 24 */:
                return 4194304;
            case 25:
                return 16777216;
            default:
                return null;
        }
    }
}
