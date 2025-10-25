package androidx.exifinterface.media;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.OsConstants;
import android.util.Log;
import android.util.Pair;
import androidx.exifinterface.media.b;
import com.arthenica.ffmpegkit.AbstractSession;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.flutter.embedding.android.KeyboardMap;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
public class a {
    private static SimpleDateFormat U;
    private static SimpleDateFormat V;
    private static final e[] Z;

    /* renamed from: a0  reason: collision with root package name */
    private static final e[] f2484a0;

    /* renamed from: b0  reason: collision with root package name */
    private static final e[] f2485b0;

    /* renamed from: c0  reason: collision with root package name */
    private static final e[] f2486c0;

    /* renamed from: d0  reason: collision with root package name */
    private static final e[] f2487d0;

    /* renamed from: e0  reason: collision with root package name */
    private static final e f2488e0;

    /* renamed from: f0  reason: collision with root package name */
    private static final e[] f2489f0;

    /* renamed from: g0  reason: collision with root package name */
    private static final e[] f2490g0;

    /* renamed from: h0  reason: collision with root package name */
    private static final e[] f2491h0;

    /* renamed from: i0  reason: collision with root package name */
    private static final e[] f2492i0;

    /* renamed from: j0  reason: collision with root package name */
    static final e[][] f2493j0;

    /* renamed from: k0  reason: collision with root package name */
    private static final e[] f2494k0;

    /* renamed from: l0  reason: collision with root package name */
    private static final HashMap[] f2495l0;

    /* renamed from: m0  reason: collision with root package name */
    private static final HashMap[] f2496m0;

    /* renamed from: n0  reason: collision with root package name */
    private static final HashSet f2497n0;

    /* renamed from: o0  reason: collision with root package name */
    private static final HashMap f2498o0;

    /* renamed from: p0  reason: collision with root package name */
    static final Charset f2499p0;

    /* renamed from: q0  reason: collision with root package name */
    static final byte[] f2500q0;

    /* renamed from: r0  reason: collision with root package name */
    private static final byte[] f2501r0;

    /* renamed from: s0  reason: collision with root package name */
    private static final Pattern f2502s0;

    /* renamed from: t0  reason: collision with root package name */
    private static final Pattern f2503t0;

    /* renamed from: u0  reason: collision with root package name */
    private static final Pattern f2504u0;

    /* renamed from: v0  reason: collision with root package name */
    private static final Pattern f2506v0;

    /* renamed from: a  reason: collision with root package name */
    private String f2511a;

    /* renamed from: b  reason: collision with root package name */
    private FileDescriptor f2512b;

    /* renamed from: c  reason: collision with root package name */
    private AssetManager.AssetInputStream f2513c;

    /* renamed from: d  reason: collision with root package name */
    private int f2514d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2515e;

    /* renamed from: f  reason: collision with root package name */
    private final HashMap[] f2516f;

    /* renamed from: g  reason: collision with root package name */
    private Set f2517g;

    /* renamed from: h  reason: collision with root package name */
    private ByteOrder f2518h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f2519i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f2520j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f2521k;

    /* renamed from: l  reason: collision with root package name */
    private int f2522l;

    /* renamed from: m  reason: collision with root package name */
    private int f2523m;

    /* renamed from: n  reason: collision with root package name */
    private byte[] f2524n;

    /* renamed from: o  reason: collision with root package name */
    private int f2525o;

    /* renamed from: p  reason: collision with root package name */
    private int f2526p;

    /* renamed from: q  reason: collision with root package name */
    private int f2527q;

    /* renamed from: r  reason: collision with root package name */
    private int f2528r;

    /* renamed from: s  reason: collision with root package name */
    private int f2529s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f2530t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f2531u;

    /* renamed from: v  reason: collision with root package name */
    private static final boolean f2505v = Log.isLoggable("ExifInterface", 3);

    /* renamed from: w  reason: collision with root package name */
    private static final List f2507w = Arrays.asList(1, 6, 3, 8);

    /* renamed from: x  reason: collision with root package name */
    private static final List f2508x = Arrays.asList(2, 7, 4, 5);

    /* renamed from: y  reason: collision with root package name */
    public static final int[] f2509y = {8, 8, 8};

    /* renamed from: z  reason: collision with root package name */
    public static final int[] f2510z = {4};
    public static final int[] A = {8};
    static final byte[] B = {-1, -40, -1};
    private static final byte[] C = {102, 116, 121, 112};
    private static final byte[] D = {109, 105, 102, 49};
    private static final byte[] E = {104, 101, 105, 99};
    private static final byte[] F = {79, 76, 89, 77, 80, 0};
    private static final byte[] G = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    private static final byte[] H = {-119, 80, 78, 71, 13, 10, 26, 10};
    private static final byte[] I = {101, 88, 73, 102};
    private static final byte[] J = {73, 72, 68, 82};
    private static final byte[] K = {73, 69, 78, 68};
    private static final byte[] L = {82, 73, 70, 70};
    private static final byte[] M = {87, 69, 66, 80};
    private static final byte[] N = {69, 88, 73, 70};
    private static final byte[] O = {-99, 1, 42};
    private static final byte[] P = "VP8X".getBytes(Charset.defaultCharset());
    private static final byte[] Q = "VP8L".getBytes(Charset.defaultCharset());
    private static final byte[] R = "VP8 ".getBytes(Charset.defaultCharset());
    private static final byte[] S = "ANIM".getBytes(Charset.defaultCharset());
    private static final byte[] T = "ANMF".getBytes(Charset.defaultCharset());
    static final String[] W = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    static final int[] X = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final byte[] Y = {65, 83, 67, 73, 73, 0, 0, 0};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.exifinterface.media.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0039a extends MediaDataSource {

        /* renamed from: a  reason: collision with root package name */
        long f2532a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g f2533b;

        C0039a(g gVar) {
            this.f2533b = gVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // android.media.MediaDataSource
        public long getSize() {
            return -1L;
        }

        @Override // android.media.MediaDataSource
        public int readAt(long j10, byte[] bArr, int i10, int i11) {
            if (i11 == 0) {
                return 0;
            }
            if (j10 < 0) {
                return -1;
            }
            try {
                long j11 = this.f2532a;
                if (j11 != j10) {
                    if (j11 >= 0 && j10 >= j11 + this.f2533b.available()) {
                        return -1;
                    }
                    this.f2533b.g(j10);
                    this.f2532a = j10;
                }
                if (i11 > this.f2533b.available()) {
                    i11 = this.f2533b.available();
                }
                int read = this.f2533b.read(bArr, i10, i11);
                if (read >= 0) {
                    this.f2532a += read;
                    return read;
                }
            } catch (IOException unused) {
            }
            this.f2532a = -1L;
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c extends FilterOutputStream {

        /* renamed from: a  reason: collision with root package name */
        final OutputStream f2540a;

        /* renamed from: b  reason: collision with root package name */
        private ByteOrder f2541b;

        public c(OutputStream outputStream, ByteOrder byteOrder) {
            super(outputStream);
            this.f2540a = outputStream;
            this.f2541b = byteOrder;
        }

        public void a(ByteOrder byteOrder) {
            this.f2541b = byteOrder;
        }

        public void b(int i10) {
            this.f2540a.write(i10);
        }

        public void c(int i10) {
            ByteOrder byteOrder = this.f2541b;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.f2540a.write((i10 >>> 0) & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f2540a.write((i10 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f2540a.write((i10 >>> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f2540a.write((i10 >>> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.f2540a.write((i10 >>> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f2540a.write((i10 >>> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f2540a.write((i10 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f2540a.write((i10 >>> 0) & KotlinVersion.MAX_COMPONENT_VALUE);
            }
        }

        public void e(short s10) {
            ByteOrder byteOrder = this.f2541b;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.f2540a.write((s10 >>> 0) & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f2540a.write((s10 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.f2540a.write((s10 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f2540a.write((s10 >>> 0) & KotlinVersion.MAX_COMPONENT_VALUE);
            }
        }

        public void f(long j10) {
            if (j10 <= KeyboardMap.kValueMask) {
                c((int) j10);
                return;
            }
            throw new IllegalArgumentException("val is larger than the maximum value of a 32-bit unsigned integer");
        }

        public void g(int i10) {
            if (i10 <= 65535) {
                e((short) i10);
                return;
            }
            throw new IllegalArgumentException("val is larger than the maximum value of a 16-bit unsigned integer");
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr) {
            this.f2540a.write(bArr);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) {
            this.f2540a.write(bArr, i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f2542a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2543b;

        /* renamed from: c  reason: collision with root package name */
        public final long f2544c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f2545d;

        d(int i10, int i11, byte[] bArr) {
            this(i10, i11, -1L, bArr);
        }

        public static d a(String str) {
            if (str.length() == 1 && str.charAt(0) >= '0' && str.charAt(0) <= '1') {
                return new d(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
            }
            byte[] bytes = str.getBytes(a.f2499p0);
            return new d(1, bytes.length, bytes);
        }

        public static d b(double[] dArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.X[12] * dArr.length]);
            wrap.order(byteOrder);
            for (double d10 : dArr) {
                wrap.putDouble(d10);
            }
            return new d(12, dArr.length, wrap.array());
        }

        public static d c(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.X[9] * iArr.length]);
            wrap.order(byteOrder);
            for (int i10 : iArr) {
                wrap.putInt(i10);
            }
            return new d(9, iArr.length, wrap.array());
        }

        public static d d(f[] fVarArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.X[10] * fVarArr.length]);
            wrap.order(byteOrder);
            for (f fVar : fVarArr) {
                wrap.putInt((int) fVar.f2550a);
                wrap.putInt((int) fVar.f2551b);
            }
            return new d(10, fVarArr.length, wrap.array());
        }

        public static d e(String str) {
            byte[] bytes = (str + (char) 0).getBytes(a.f2499p0);
            return new d(2, bytes.length, bytes);
        }

        public static d f(long j10, ByteOrder byteOrder) {
            return g(new long[]{j10}, byteOrder);
        }

        public static d g(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.X[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j10 : jArr) {
                wrap.putInt((int) j10);
            }
            return new d(4, jArr.length, wrap.array());
        }

        public static d h(f fVar, ByteOrder byteOrder) {
            return i(new f[]{fVar}, byteOrder);
        }

        public static d i(f[] fVarArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.X[5] * fVarArr.length]);
            wrap.order(byteOrder);
            for (f fVar : fVarArr) {
                wrap.putInt((int) fVar.f2550a);
                wrap.putInt((int) fVar.f2551b);
            }
            return new d(5, fVarArr.length, wrap.array());
        }

        public static d j(int i10, ByteOrder byteOrder) {
            return k(new int[]{i10}, byteOrder);
        }

        public static d k(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.X[3] * iArr.length]);
            wrap.order(byteOrder);
            for (int i10 : iArr) {
                wrap.putShort((short) i10);
            }
            return new d(3, iArr.length, wrap.array());
        }

        public double l(ByteOrder byteOrder) {
            Object o10 = o(byteOrder);
            if (o10 != null) {
                if (o10 instanceof String) {
                    return Double.parseDouble((String) o10);
                }
                if (o10 instanceof long[]) {
                    long[] jArr = (long[]) o10;
                    if (jArr.length == 1) {
                        return jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (o10 instanceof int[]) {
                    int[] iArr = (int[]) o10;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (o10 instanceof double[]) {
                    double[] dArr = (double[]) o10;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (o10 instanceof f[]) {
                    f[] fVarArr = (f[]) o10;
                    if (fVarArr.length == 1) {
                        return fVarArr[0].a();
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a double value");
                }
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        public int m(ByteOrder byteOrder) {
            Object o10 = o(byteOrder);
            if (o10 != null) {
                if (o10 instanceof String) {
                    return Integer.parseInt((String) o10);
                }
                if (o10 instanceof long[]) {
                    long[] jArr = (long[]) o10;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (o10 instanceof int[]) {
                    int[] iArr = (int[]) o10;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a integer value");
                }
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        public String n(ByteOrder byteOrder) {
            Object o10 = o(byteOrder);
            if (o10 == null) {
                return null;
            }
            if (o10 instanceof String) {
                return (String) o10;
            }
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            if (o10 instanceof long[]) {
                long[] jArr = (long[]) o10;
                while (i10 < jArr.length) {
                    sb2.append(jArr[i10]);
                    i10++;
                    if (i10 != jArr.length) {
                        sb2.append(StringUtils.COMMA);
                    }
                }
                return sb2.toString();
            } else if (o10 instanceof int[]) {
                int[] iArr = (int[]) o10;
                while (i10 < iArr.length) {
                    sb2.append(iArr[i10]);
                    i10++;
                    if (i10 != iArr.length) {
                        sb2.append(StringUtils.COMMA);
                    }
                }
                return sb2.toString();
            } else if (o10 instanceof double[]) {
                double[] dArr = (double[]) o10;
                while (i10 < dArr.length) {
                    sb2.append(dArr[i10]);
                    i10++;
                    if (i10 != dArr.length) {
                        sb2.append(StringUtils.COMMA);
                    }
                }
                return sb2.toString();
            } else if (!(o10 instanceof f[])) {
                return null;
            } else {
                f[] fVarArr = (f[]) o10;
                while (i10 < fVarArr.length) {
                    sb2.append(fVarArr[i10].f2550a);
                    sb2.append('/');
                    sb2.append(fVarArr[i10].f2551b);
                    i10++;
                    if (i10 != fVarArr.length) {
                        sb2.append(StringUtils.COMMA);
                    }
                }
                return sb2.toString();
            }
        }

        /* JADX WARN: Not initialized variable reg: 3, insn: 0x0198: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:151:0x0198 */
        /* JADX WARN: Removed duplicated region for block: B:182:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        java.lang.Object o(java.nio.ByteOrder r11) {
            /*
                Method dump skipped, instructions count: 448
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.a.d.o(java.nio.ByteOrder):java.lang.Object");
        }

        public int p() {
            return a.X[this.f2542a] * this.f2543b;
        }

        public String toString() {
            return "(" + a.W[this.f2542a] + ", data length:" + this.f2545d.length + ")";
        }

        d(int i10, int i11, long j10, byte[] bArr) {
            this.f2542a = i10;
            this.f2543b = i11;
            this.f2544c = j10;
            this.f2545d = bArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        public final long f2550a;

        /* renamed from: b  reason: collision with root package name */
        public final long f2551b;

        f(double d10) {
            this((long) (d10 * 10000.0d), 10000L);
        }

        public double a() {
            return this.f2550a / this.f2551b;
        }

        public String toString() {
            return this.f2550a + "/" + this.f2551b;
        }

        f(long j10, long j11) {
            if (j11 == 0) {
                this.f2550a = 0L;
                this.f2551b = 1L;
                return;
            }
            this.f2550a = j10;
            this.f2551b = j11;
        }
    }

    static {
        e[] eVarArr;
        e[] eVarArr2 = {new e("NewSubfileType", 254, 4), new e("SubfileType", KotlinVersion.MAX_COMPONENT_VALUE, 4), new e("ImageWidth", 256, 3, 4), new e("ImageLength", 257, 3, 4), new e("BitsPerSample", 258, 3), new e("Compression", 259, 3), new e("PhotometricInterpretation", 262, 3), new e("ImageDescription", 270, 2), new e("Make", 271, 2), new e("Model", 272, 2), new e("StripOffsets", 273, 3, 4), new e("Orientation", 274, 3), new e("SamplesPerPixel", 277, 3), new e("RowsPerStrip", 278, 3, 4), new e("StripByteCounts", 279, 3, 4), new e("XResolution", 282, 5), new e("YResolution", 283, 5), new e("PlanarConfiguration", 284, 3), new e("ResolutionUnit", 296, 3), new e("TransferFunction", 301, 3), new e("Software", 305, 2), new e("DateTime", 306, 2), new e("Artist", 315, 2), new e("WhitePoint", 318, 5), new e("PrimaryChromaticities", 319, 5), new e("SubIFDPointer", 330, 4), new e("JPEGInterchangeFormat", 513, 4), new e("JPEGInterchangeFormatLength", 514, 4), new e("YCbCrCoefficients", 529, 5), new e("YCbCrSubSampling", 530, 3), new e("YCbCrPositioning", 531, 3), new e("ReferenceBlackWhite", 532, 5), new e("Copyright", 33432, 2), new e("ExifIFDPointer", 34665, 4), new e("GPSInfoIFDPointer", 34853, 4), new e("SensorTopBorder", 4, 4), new e("SensorLeftBorder", 5, 4), new e("SensorBottomBorder", 6, 4), new e("SensorRightBorder", 7, 4), new e("ISO", 23, 3), new e("JpgFromRaw", 46, 7), new e("Xmp", 700, 1)};
        Z = eVarArr2;
        e[] eVarArr3 = {new e("ExposureTime", 33434, 5), new e("FNumber", 33437, 5), new e("ExposureProgram", 34850, 3), new e("SpectralSensitivity", 34852, 2), new e("PhotographicSensitivity", 34855, 3), new e("OECF", 34856, 7), new e("SensitivityType", 34864, 3), new e("StandardOutputSensitivity", 34865, 4), new e("RecommendedExposureIndex", 34866, 4), new e("ISOSpeed", 34867, 4), new e("ISOSpeedLatitudeyyy", 34868, 4), new e("ISOSpeedLatitudezzz", 34869, 4), new e("ExifVersion", 36864, 2), new e("DateTimeOriginal", 36867, 2), new e("DateTimeDigitized", 36868, 2), new e("OffsetTime", 36880, 2), new e("OffsetTimeOriginal", 36881, 2), new e("OffsetTimeDigitized", 36882, 2), new e("ComponentsConfiguration", 37121, 7), new e("CompressedBitsPerPixel", 37122, 5), new e("ShutterSpeedValue", 37377, 10), new e("ApertureValue", 37378, 5), new e("BrightnessValue", 37379, 10), new e("ExposureBiasValue", 37380, 10), new e("MaxApertureValue", 37381, 5), new e("SubjectDistance", 37382, 5), new e("MeteringMode", 37383, 3), new e("LightSource", 37384, 3), new e("Flash", 37385, 3), new e("FocalLength", 37386, 5), new e("SubjectArea", 37396, 3), new e("MakerNote", 37500, 7), new e("UserComment", 37510, 7), new e("SubSecTime", 37520, 2), new e("SubSecTimeOriginal", 37521, 2), new e("SubSecTimeDigitized", 37522, 2), new e("FlashpixVersion", 40960, 7), new e("ColorSpace", 40961, 3), new e("PixelXDimension", 40962, 3, 4), new e("PixelYDimension", 40963, 3, 4), new e("RelatedSoundFile", 40964, 2), new e("InteroperabilityIFDPointer", 40965, 4), new e("FlashEnergy", 41483, 5), new e("SpatialFrequencyResponse", 41484, 7), new e("FocalPlaneXResolution", 41486, 5), new e("FocalPlaneYResolution", 41487, 5), new e("FocalPlaneResolutionUnit", 41488, 3), new e("SubjectLocation", 41492, 3), new e("ExposureIndex", 41493, 5), new e("SensingMethod", 41495, 3), new e("FileSource", 41728, 7), new e("SceneType", 41729, 7), new e("CFAPattern", 41730, 7), new e("CustomRendered", 41985, 3), new e("ExposureMode", 41986, 3), new e("WhiteBalance", 41987, 3), new e("DigitalZoomRatio", 41988, 5), new e("FocalLengthIn35mmFilm", 41989, 3), new e("SceneCaptureType", 41990, 3), new e("GainControl", 41991, 3), new e("Contrast", 41992, 3), new e("Saturation", 41993, 3), new e("Sharpness", 41994, 3), new e("DeviceSettingDescription", 41995, 7), new e("SubjectDistanceRange", 41996, 3), new e("ImageUniqueID", 42016, 2), new e("CameraOwnerName", 42032, 2), new e("BodySerialNumber", 42033, 2), new e("LensSpecification", 42034, 5), new e("LensMake", 42035, 2), new e("LensModel", 42036, 2), new e("Gamma", 42240, 5), new e("DNGVersion", 50706, 1), new e("DefaultCropSize", 50720, 3, 4)};
        f2484a0 = eVarArr3;
        e[] eVarArr4 = {new e("GPSVersionID", 0, 1), new e("GPSLatitudeRef", 1, 2), new e("GPSLatitude", 2, 5, 10), new e("GPSLongitudeRef", 3, 2), new e("GPSLongitude", 4, 5, 10), new e("GPSAltitudeRef", 5, 1), new e("GPSAltitude", 6, 5), new e("GPSTimeStamp", 7, 5), new e("GPSSatellites", 8, 2), new e("GPSStatus", 9, 2), new e("GPSMeasureMode", 10, 2), new e("GPSDOP", 11, 5), new e("GPSSpeedRef", 12, 2), new e("GPSSpeed", 13, 5), new e("GPSTrackRef", 14, 2), new e("GPSTrack", 15, 5), new e("GPSImgDirectionRef", 16, 2), new e("GPSImgDirection", 17, 5), new e("GPSMapDatum", 18, 2), new e("GPSDestLatitudeRef", 19, 2), new e("GPSDestLatitude", 20, 5), new e("GPSDestLongitudeRef", 21, 2), new e("GPSDestLongitude", 22, 5), new e("GPSDestBearingRef", 23, 2), new e("GPSDestBearing", 24, 5), new e("GPSDestDistanceRef", 25, 2), new e("GPSDestDistance", 26, 5), new e("GPSProcessingMethod", 27, 7), new e("GPSAreaInformation", 28, 7), new e("GPSDateStamp", 29, 2), new e("GPSDifferential", 30, 3), new e("GPSHPositioningError", 31, 5)};
        f2485b0 = eVarArr4;
        e[] eVarArr5 = {new e("InteroperabilityIndex", 1, 2)};
        f2486c0 = eVarArr5;
        e[] eVarArr6 = {new e("NewSubfileType", 254, 4), new e("SubfileType", KotlinVersion.MAX_COMPONENT_VALUE, 4), new e("ThumbnailImageWidth", 256, 3, 4), new e("ThumbnailImageLength", 257, 3, 4), new e("BitsPerSample", 258, 3), new e("Compression", 259, 3), new e("PhotometricInterpretation", 262, 3), new e("ImageDescription", 270, 2), new e("Make", 271, 2), new e("Model", 272, 2), new e("StripOffsets", 273, 3, 4), new e("ThumbnailOrientation", 274, 3), new e("SamplesPerPixel", 277, 3), new e("RowsPerStrip", 278, 3, 4), new e("StripByteCounts", 279, 3, 4), new e("XResolution", 282, 5), new e("YResolution", 283, 5), new e("PlanarConfiguration", 284, 3), new e("ResolutionUnit", 296, 3), new e("TransferFunction", 301, 3), new e("Software", 305, 2), new e("DateTime", 306, 2), new e("Artist", 315, 2), new e("WhitePoint", 318, 5), new e("PrimaryChromaticities", 319, 5), new e("SubIFDPointer", 330, 4), new e("JPEGInterchangeFormat", 513, 4), new e("JPEGInterchangeFormatLength", 514, 4), new e("YCbCrCoefficients", 529, 5), new e("YCbCrSubSampling", 530, 3), new e("YCbCrPositioning", 531, 3), new e("ReferenceBlackWhite", 532, 5), new e("Copyright", 33432, 2), new e("ExifIFDPointer", 34665, 4), new e("GPSInfoIFDPointer", 34853, 4), new e("DNGVersion", 50706, 1), new e("DefaultCropSize", 50720, 3, 4)};
        f2487d0 = eVarArr6;
        f2488e0 = new e("StripOffsets", 273, 3);
        e[] eVarArr7 = {new e("ThumbnailImage", 256, 7), new e("CameraSettingsIFDPointer", 8224, 4), new e("ImageProcessingIFDPointer", 8256, 4)};
        f2489f0 = eVarArr7;
        e[] eVarArr8 = {new e("PreviewImageStart", 257, 4), new e("PreviewImageLength", 258, 4)};
        f2490g0 = eVarArr8;
        e[] eVarArr9 = {new e("AspectFrame", 4371, 3)};
        f2491h0 = eVarArr9;
        e[] eVarArr10 = {new e("ColorSpace", 55, 3)};
        f2492i0 = eVarArr10;
        e[][] eVarArr11 = {eVarArr2, eVarArr3, eVarArr4, eVarArr5, eVarArr6, eVarArr2, eVarArr7, eVarArr8, eVarArr9, eVarArr10};
        f2493j0 = eVarArr11;
        f2494k0 = new e[]{new e("SubIFDPointer", 330, 4), new e("ExifIFDPointer", 34665, 4), new e("GPSInfoIFDPointer", 34853, 4), new e("InteroperabilityIFDPointer", 40965, 4), new e("CameraSettingsIFDPointer", 8224, 1), new e("ImageProcessingIFDPointer", 8256, 1)};
        f2495l0 = new HashMap[eVarArr11.length];
        f2496m0 = new HashMap[eVarArr11.length];
        f2497n0 = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        f2498o0 = new HashMap();
        Charset forName = Charset.forName("US-ASCII");
        f2499p0 = forName;
        f2500q0 = "Exif\u0000\u0000".getBytes(forName);
        f2501r0 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(forName);
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale);
        U = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale);
        V = simpleDateFormat2;
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i10 = 0;
        while (true) {
            e[][] eVarArr12 = f2493j0;
            if (i10 < eVarArr12.length) {
                f2495l0[i10] = new HashMap();
                f2496m0[i10] = new HashMap();
                for (e eVar : eVarArr12[i10]) {
                    f2495l0[i10].put(Integer.valueOf(eVar.f2546a), eVar);
                    f2496m0[i10].put(eVar.f2547b, eVar);
                }
                i10++;
            } else {
                HashMap hashMap = f2498o0;
                e[] eVarArr13 = f2494k0;
                hashMap.put(Integer.valueOf(eVarArr13[0].f2546a), 5);
                hashMap.put(Integer.valueOf(eVarArr13[1].f2546a), 1);
                hashMap.put(Integer.valueOf(eVarArr13[2].f2546a), 2);
                hashMap.put(Integer.valueOf(eVarArr13[3].f2546a), 3);
                hashMap.put(Integer.valueOf(eVarArr13[4].f2546a), 7);
                hashMap.put(Integer.valueOf(eVarArr13[5].f2546a), 8);
                f2502s0 = Pattern.compile(".*[1-9].*");
                f2503t0 = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                f2504u0 = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                f2506v0 = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
        }
    }

    public a(String str) {
        e[][] eVarArr = f2493j0;
        this.f2516f = new HashMap[eVarArr.length];
        this.f2517g = new HashSet(eVarArr.length);
        this.f2518h = ByteOrder.BIG_ENDIAN;
        if (str != null) {
            u(str);
            return;
        }
        throw new NullPointerException("filename cannot be null");
    }

    private boolean A(byte[] bArr) {
        boolean z10 = false;
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                ByteOrder J2 = J(bVar2);
                this.f2518h = J2;
                bVar2.e(J2);
                if (bVar2.readShort() == 85) {
                    z10 = true;
                }
                bVar2.close();
                return z10;
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                return false;
            } catch (Throwable th) {
                th = th;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static boolean B(FileDescriptor fileDescriptor) {
        try {
            b.a.c(fileDescriptor, 0L, OsConstants.SEEK_CUR);
            return true;
        } catch (Exception unused) {
            if (f2505v) {
                Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                return false;
            }
            return false;
        }
    }

    private boolean C(HashMap hashMap) {
        d dVar;
        int m10;
        d dVar2 = (d) hashMap.get("BitsPerSample");
        if (dVar2 != null) {
            int[] iArr = (int[]) dVar2.o(this.f2518h);
            int[] iArr2 = f2509y;
            if (Arrays.equals(iArr2, iArr)) {
                return true;
            }
            if (this.f2514d == 3 && (dVar = (d) hashMap.get("PhotometricInterpretation")) != null && (((m10 = dVar.m(this.f2518h)) == 1 && Arrays.equals(iArr, A)) || (m10 == 6 && Arrays.equals(iArr, iArr2)))) {
                return true;
            }
        }
        if (f2505v) {
            Log.d("ExifInterface", "Unsupported data type value");
            return false;
        }
        return false;
    }

    private static boolean D(int i10) {
        return i10 == 4 || i10 == 13 || i10 == 14;
    }

    private boolean E(HashMap hashMap) {
        d dVar = (d) hashMap.get("ImageLength");
        d dVar2 = (d) hashMap.get("ImageWidth");
        if (dVar != null && dVar2 != null) {
            int m10 = dVar.m(this.f2518h);
            int m11 = dVar2.m(this.f2518h);
            if (m10 <= 512 && m11 <= 512) {
                return true;
            }
            return false;
        }
        return false;
    }

    private boolean F(byte[] bArr) {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = L;
            if (i10 < bArr2.length) {
                if (bArr[i10] != bArr2[i10]) {
                    return false;
                }
                i10++;
            } else {
                int i11 = 0;
                while (true) {
                    byte[] bArr3 = M;
                    if (i11 < bArr3.length) {
                        if (bArr[L.length + i11 + 4] != bArr3[i11]) {
                            return false;
                        }
                        i11++;
                    } else {
                        return true;
                    }
                }
            }
        }
    }

    private void G(InputStream inputStream) {
        boolean z10;
        if (inputStream != null) {
            for (int i10 = 0; i10 < f2493j0.length; i10++) {
                try {
                    try {
                        this.f2516f[i10] = new HashMap();
                    } finally {
                        a();
                        if (f2505v) {
                            I();
                        }
                    }
                } catch (IOException | UnsupportedOperationException e10) {
                    boolean z11 = f2505v;
                    if (z11) {
                        Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e10);
                    }
                    a();
                    if (!z11) {
                        return;
                    }
                }
            }
            if (!this.f2515e) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT);
                this.f2514d = h(bufferedInputStream);
                inputStream = bufferedInputStream;
            }
            if (V(this.f2514d)) {
                g gVar = new g(inputStream);
                if (this.f2515e) {
                    n(gVar);
                } else {
                    int i11 = this.f2514d;
                    if (i11 == 12) {
                        f(gVar);
                    } else if (i11 == 7) {
                        i(gVar);
                    } else if (i11 == 10) {
                        m(gVar);
                    } else {
                        l(gVar);
                    }
                }
                gVar.g(this.f2526p);
                U(gVar);
            } else {
                b bVar = new b(inputStream);
                int i12 = this.f2514d;
                if (i12 == 4) {
                    g(bVar, 0, 0);
                } else if (i12 == 13) {
                    j(bVar);
                } else if (i12 == 9) {
                    k(bVar);
                } else if (i12 == 14) {
                    q(bVar);
                }
            }
            if (!z10) {
                return;
            }
            return;
        }
        throw new NullPointerException("inputstream shouldn't be null");
    }

    private void H(b bVar) {
        ByteOrder J2 = J(bVar);
        this.f2518h = J2;
        bVar.e(J2);
        int readUnsignedShort = bVar.readUnsignedShort();
        int i10 = this.f2514d;
        if (i10 != 7 && i10 != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = bVar.readInt();
        if (readInt >= 8) {
            int i11 = readInt - 8;
            if (i11 > 0) {
                bVar.f(i11);
                return;
            }
            return;
        }
        throw new IOException("Invalid first Ifd offset: " + readInt);
    }

    private void I() {
        for (int i10 = 0; i10 < this.f2516f.length; i10++) {
            Log.d("ExifInterface", "The size of tag group[" + i10 + "]: " + this.f2516f[i10].size());
            for (Map.Entry entry : this.f2516f[i10].entrySet()) {
                d dVar = (d) entry.getValue();
                Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + dVar.toString() + ", tagValue: '" + dVar.n(this.f2518h) + "'");
            }
        }
    }

    private ByteOrder J(b bVar) {
        short readShort = bVar.readShort();
        if (readShort != 18761) {
            if (readShort == 19789) {
                if (f2505v) {
                    Log.d("ExifInterface", "readExifSegment: Byte Align MM");
                }
                return ByteOrder.BIG_ENDIAN;
            }
            throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
        }
        if (f2505v) {
            Log.d("ExifInterface", "readExifSegment: Byte Align II");
        }
        return ByteOrder.LITTLE_ENDIAN;
    }

    private void K(byte[] bArr, int i10) {
        g gVar = new g(bArr);
        H(gVar);
        L(gVar, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0283  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void L(androidx.exifinterface.media.a.g r28, int r29) {
        /*
            Method dump skipped, instructions count: 963
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.a.L(androidx.exifinterface.media.a$g, int):void");
    }

    private void M(String str) {
        for (int i10 = 0; i10 < f2493j0.length; i10++) {
            this.f2516f[i10].remove(str);
        }
    }

    private void N(int i10, String str, String str2) {
        if (!this.f2516f[i10].isEmpty() && this.f2516f[i10].get(str) != null) {
            HashMap hashMap = this.f2516f[i10];
            hashMap.put(str2, hashMap.get(str));
            this.f2516f[i10].remove(str);
        }
    }

    private void O(g gVar, int i10) {
        d dVar = (d) this.f2516f[i10].get("ImageLength");
        d dVar2 = (d) this.f2516f[i10].get("ImageWidth");
        if (dVar == null || dVar2 == null) {
            d dVar3 = (d) this.f2516f[i10].get("JPEGInterchangeFormat");
            d dVar4 = (d) this.f2516f[i10].get("JPEGInterchangeFormatLength");
            if (dVar3 != null && dVar4 != null) {
                int m10 = dVar3.m(this.f2518h);
                int m11 = dVar3.m(this.f2518h);
                gVar.g(m10);
                byte[] bArr = new byte[m11];
                gVar.readFully(bArr);
                g(new b(bArr), m10, i10);
            }
        }
    }

    private void Q(InputStream inputStream, OutputStream outputStream) {
        d dVar;
        if (f2505v) {
            Log.d("ExifInterface", "saveJpegAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        b bVar = new b(inputStream);
        c cVar = new c(outputStream, ByteOrder.BIG_ENDIAN);
        if (bVar.readByte() == -1) {
            cVar.b(-1);
            if (bVar.readByte() == -40) {
                cVar.b(-40);
                if (d("Xmp") != null && this.f2531u) {
                    dVar = (d) this.f2516f[0].remove("Xmp");
                } else {
                    dVar = null;
                }
                cVar.b(-1);
                cVar.b(-31);
                Z(cVar);
                if (dVar != null) {
                    this.f2516f[0].put("Xmp", dVar);
                }
                byte[] bArr = new byte[Base64Utils.IO_BUFFER_SIZE];
                while (bVar.readByte() == -1) {
                    byte readByte = bVar.readByte();
                    if (readByte != -39 && readByte != -38) {
                        if (readByte != -31) {
                            cVar.b(-1);
                            cVar.b(readByte);
                            int readUnsignedShort = bVar.readUnsignedShort();
                            cVar.g(readUnsignedShort);
                            int i10 = readUnsignedShort - 2;
                            if (i10 >= 0) {
                                while (i10 > 0) {
                                    int read = bVar.read(bArr, 0, Math.min(i10, (int) Base64Utils.IO_BUFFER_SIZE));
                                    if (read >= 0) {
                                        cVar.write(bArr, 0, read);
                                        i10 -= read;
                                    }
                                }
                            } else {
                                throw new IOException("Invalid length");
                            }
                        } else {
                            int readUnsignedShort2 = bVar.readUnsignedShort() - 2;
                            if (readUnsignedShort2 >= 0) {
                                byte[] bArr2 = new byte[6];
                                if (readUnsignedShort2 >= 6) {
                                    bVar.readFully(bArr2);
                                    if (Arrays.equals(bArr2, f2500q0)) {
                                        bVar.f(readUnsignedShort2 - 6);
                                    }
                                }
                                cVar.b(-1);
                                cVar.b(readByte);
                                cVar.g(readUnsignedShort2 + 2);
                                if (readUnsignedShort2 >= 6) {
                                    readUnsignedShort2 -= 6;
                                    cVar.write(bArr2);
                                }
                                while (readUnsignedShort2 > 0) {
                                    int read2 = bVar.read(bArr, 0, Math.min(readUnsignedShort2, (int) Base64Utils.IO_BUFFER_SIZE));
                                    if (read2 >= 0) {
                                        cVar.write(bArr, 0, read2);
                                        readUnsignedShort2 -= read2;
                                    }
                                }
                            } else {
                                throw new IOException("Invalid length");
                            }
                        }
                    } else {
                        cVar.b(-1);
                        cVar.b(readByte);
                        androidx.exifinterface.media.b.d(bVar, cVar);
                        return;
                    }
                }
                throw new IOException("Invalid marker");
            }
            throw new IOException("Invalid marker");
        }
        throw new IOException("Invalid marker");
    }

    private void R(InputStream inputStream, OutputStream outputStream) {
        ByteArrayOutputStream byteArrayOutputStream;
        if (f2505v) {
            Log.d("ExifInterface", "savePngAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        b bVar = new b(inputStream);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        c cVar = new c(outputStream, byteOrder);
        byte[] bArr = H;
        androidx.exifinterface.media.b.e(bVar, cVar, bArr.length);
        int i10 = this.f2526p;
        if (i10 == 0) {
            int readInt = bVar.readInt();
            cVar.c(readInt);
            androidx.exifinterface.media.b.e(bVar, cVar, readInt + 4 + 4);
        } else {
            androidx.exifinterface.media.b.e(bVar, cVar, ((i10 - bArr.length) - 4) - 4);
            bVar.f(bVar.readInt() + 4 + 4);
        }
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (Throwable th) {
            th = th;
        }
        try {
            c cVar2 = new c(byteArrayOutputStream, byteOrder);
            Z(cVar2);
            byte[] byteArray = ((ByteArrayOutputStream) cVar2.f2540a).toByteArray();
            cVar.write(byteArray);
            CRC32 crc32 = new CRC32();
            crc32.update(byteArray, 4, byteArray.length - 4);
            cVar.c((int) crc32.getValue());
            androidx.exifinterface.media.b.b(byteArrayOutputStream);
            androidx.exifinterface.media.b.d(bVar, cVar);
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            androidx.exifinterface.media.b.b(byteArrayOutputStream2);
            throw th;
        }
    }

    private void S(InputStream inputStream, OutputStream outputStream) {
        ByteArrayOutputStream byteArrayOutputStream;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z10;
        if (f2505v) {
            Log.d("ExifInterface", "saveWebpAttributes starting with (inputStream: " + inputStream + ", outputStream: " + outputStream + ")");
        }
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        b bVar = new b(inputStream, byteOrder);
        c cVar = new c(outputStream, byteOrder);
        byte[] bArr = L;
        androidx.exifinterface.media.b.e(bVar, cVar, bArr.length);
        byte[] bArr2 = M;
        bVar.f(bArr2.length + 4);
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            c cVar2 = new c(byteArrayOutputStream, byteOrder);
            int i15 = this.f2526p;
            if (i15 != 0) {
                androidx.exifinterface.media.b.e(bVar, cVar2, ((i15 - ((bArr.length + 4) + bArr2.length)) - 4) - 4);
                bVar.f(4);
                int readInt = bVar.readInt();
                if (readInt % 2 != 0) {
                    readInt++;
                }
                bVar.f(readInt);
                Z(cVar2);
            } else {
                byte[] bArr3 = new byte[4];
                bVar.readFully(bArr3);
                byte[] bArr4 = P;
                boolean z11 = false;
                boolean z12 = true;
                if (Arrays.equals(bArr3, bArr4)) {
                    int readInt2 = bVar.readInt();
                    if (readInt2 % 2 == 1) {
                        i14 = readInt2 + 1;
                    } else {
                        i14 = readInt2;
                    }
                    byte[] bArr5 = new byte[i14];
                    bVar.readFully(bArr5);
                    byte b10 = (byte) (8 | bArr5[0]);
                    bArr5[0] = b10;
                    if (((b10 >> 1) & 1) == 1) {
                        z11 = true;
                    }
                    cVar2.write(bArr4);
                    cVar2.c(readInt2);
                    cVar2.write(bArr5);
                    if (z11) {
                        b(bVar, cVar2, S, null);
                        while (true) {
                            byte[] bArr6 = new byte[4];
                            try {
                                bVar.readFully(bArr6);
                                z10 = !Arrays.equals(bArr6, T);
                            } catch (EOFException unused) {
                                z10 = true;
                            }
                            if (z10) {
                                break;
                            }
                            c(bVar, cVar2, bArr6);
                        }
                        Z(cVar2);
                    } else {
                        b(bVar, cVar2, R, Q);
                        Z(cVar2);
                    }
                } else {
                    byte[] bArr7 = R;
                    if (Arrays.equals(bArr3, bArr7) || Arrays.equals(bArr3, Q)) {
                        int readInt3 = bVar.readInt();
                        if (readInt3 % 2 == 1) {
                            i10 = readInt3 + 1;
                        } else {
                            i10 = readInt3;
                        }
                        byte[] bArr8 = new byte[3];
                        if (Arrays.equals(bArr3, bArr7)) {
                            bVar.readFully(bArr8);
                            byte[] bArr9 = new byte[3];
                            bVar.readFully(bArr9);
                            if (Arrays.equals(O, bArr9)) {
                                int readInt4 = bVar.readInt();
                                i13 = (readInt4 << 2) >> 18;
                                i10 -= 10;
                                i11 = (readInt4 << 18) >> 18;
                                i12 = readInt4;
                                z12 = false;
                            } else {
                                throw new IOException("Error checking VP8 signature");
                            }
                        } else if (Arrays.equals(bArr3, Q)) {
                            if (bVar.readByte() == 47) {
                                i12 = bVar.readInt();
                                i11 = (i12 & 16383) + 1;
                                i13 = ((i12 & 268419072) >>> 14) + 1;
                                if ((i12 & 268435456) == 0) {
                                    z12 = false;
                                }
                                i10 -= 5;
                            } else {
                                throw new IOException("Error checking VP8L signature");
                            }
                        } else {
                            i11 = 0;
                            z12 = false;
                            i12 = 0;
                            i13 = 0;
                        }
                        cVar2.write(bArr4);
                        cVar2.c(10);
                        byte[] bArr10 = new byte[10];
                        if (z12) {
                            bArr10[0] = (byte) (bArr10[0] | 16);
                        }
                        bArr10[0] = (byte) (bArr10[0] | 8);
                        int i16 = i11 - 1;
                        int i17 = i13 - 1;
                        bArr10[4] = (byte) i16;
                        bArr10[5] = (byte) (i16 >> 8);
                        bArr10[6] = (byte) (i16 >> 16);
                        bArr10[7] = (byte) i17;
                        bArr10[8] = (byte) (i17 >> 8);
                        bArr10[9] = (byte) (i17 >> 16);
                        cVar2.write(bArr10);
                        cVar2.write(bArr3);
                        cVar2.c(readInt3);
                        if (Arrays.equals(bArr3, bArr7)) {
                            cVar2.write(bArr8);
                            cVar2.write(O);
                            cVar2.c(i12);
                        } else if (Arrays.equals(bArr3, Q)) {
                            cVar2.write(47);
                            cVar2.c(i12);
                        }
                        androidx.exifinterface.media.b.e(bVar, cVar2, i10);
                        Z(cVar2);
                    }
                }
            }
            androidx.exifinterface.media.b.d(bVar, cVar2);
            int size = byteArrayOutputStream.size();
            byte[] bArr11 = M;
            cVar.c(size + bArr11.length);
            cVar.write(bArr11);
            byteArrayOutputStream.writeTo(cVar);
            androidx.exifinterface.media.b.b(byteArrayOutputStream);
        } catch (Exception e11) {
            e = e11;
            byteArrayOutputStream2 = byteArrayOutputStream;
            throw new IOException("Failed to save WebP file", e);
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            androidx.exifinterface.media.b.b(byteArrayOutputStream2);
            throw th;
        }
    }

    private void U(b bVar) {
        HashMap hashMap = this.f2516f[4];
        d dVar = (d) hashMap.get("Compression");
        if (dVar != null) {
            int m10 = dVar.m(this.f2518h);
            this.f2525o = m10;
            if (m10 != 1) {
                if (m10 != 6) {
                    if (m10 != 7) {
                        return;
                    }
                } else {
                    s(bVar, hashMap);
                    return;
                }
            }
            if (C(hashMap)) {
                t(bVar, hashMap);
                return;
            }
            return;
        }
        this.f2525o = 6;
        s(bVar, hashMap);
    }

    private static boolean V(int i10) {
        return (i10 == 4 || i10 == 9 || i10 == 13 || i10 == 14) ? false : true;
    }

    private void W(int i10, int i11) {
        if (!this.f2516f[i10].isEmpty() && !this.f2516f[i11].isEmpty()) {
            d dVar = (d) this.f2516f[i10].get("ImageLength");
            d dVar2 = (d) this.f2516f[i10].get("ImageWidth");
            d dVar3 = (d) this.f2516f[i11].get("ImageLength");
            d dVar4 = (d) this.f2516f[i11].get("ImageWidth");
            if (dVar != null && dVar2 != null) {
                if (dVar3 != null && dVar4 != null) {
                    int m10 = dVar.m(this.f2518h);
                    int m11 = dVar2.m(this.f2518h);
                    int m12 = dVar3.m(this.f2518h);
                    int m13 = dVar4.m(this.f2518h);
                    if (m10 < m12 && m11 < m13) {
                        HashMap[] hashMapArr = this.f2516f;
                        HashMap hashMap = hashMapArr[i10];
                        hashMapArr[i10] = hashMapArr[i11];
                        hashMapArr[i11] = hashMap;
                    }
                } else if (f2505v) {
                    Log.d("ExifInterface", "Second image does not contain valid size information");
                }
            } else if (f2505v) {
                Log.d("ExifInterface", "First image does not contain valid size information");
            }
        } else if (f2505v) {
            Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
        }
    }

    private void X(g gVar, int i10) {
        d j10;
        d j11;
        d dVar = (d) this.f2516f[i10].get("DefaultCropSize");
        d dVar2 = (d) this.f2516f[i10].get("SensorTopBorder");
        d dVar3 = (d) this.f2516f[i10].get("SensorLeftBorder");
        d dVar4 = (d) this.f2516f[i10].get("SensorBottomBorder");
        d dVar5 = (d) this.f2516f[i10].get("SensorRightBorder");
        if (dVar != null) {
            if (dVar.f2542a == 5) {
                f[] fVarArr = (f[]) dVar.o(this.f2518h);
                if (fVarArr != null && fVarArr.length == 2) {
                    j10 = d.h(fVarArr[0], this.f2518h);
                    j11 = d.h(fVarArr[1], this.f2518h);
                } else {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(fVarArr));
                    return;
                }
            } else {
                int[] iArr = (int[]) dVar.o(this.f2518h);
                if (iArr != null && iArr.length == 2) {
                    j10 = d.j(iArr[0], this.f2518h);
                    j11 = d.j(iArr[1], this.f2518h);
                } else {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
            }
            this.f2516f[i10].put("ImageWidth", j10);
            this.f2516f[i10].put("ImageLength", j11);
        } else if (dVar2 != null && dVar3 != null && dVar4 != null && dVar5 != null) {
            int m10 = dVar2.m(this.f2518h);
            int m11 = dVar4.m(this.f2518h);
            int m12 = dVar5.m(this.f2518h);
            int m13 = dVar3.m(this.f2518h);
            if (m11 > m10 && m12 > m13) {
                d j12 = d.j(m11 - m10, this.f2518h);
                d j13 = d.j(m12 - m13, this.f2518h);
                this.f2516f[i10].put("ImageLength", j12);
                this.f2516f[i10].put("ImageWidth", j13);
            }
        } else {
            O(gVar, i10);
        }
    }

    private void Y() {
        W(0, 5);
        W(0, 4);
        W(5, 4);
        d dVar = (d) this.f2516f[1].get("PixelXDimension");
        d dVar2 = (d) this.f2516f[1].get("PixelYDimension");
        if (dVar != null && dVar2 != null) {
            this.f2516f[0].put("ImageWidth", dVar);
            this.f2516f[0].put("ImageLength", dVar2);
        }
        if (this.f2516f[4].isEmpty() && E(this.f2516f[5])) {
            HashMap[] hashMapArr = this.f2516f;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap();
        }
        if (!E(this.f2516f[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        N(0, "ThumbnailOrientation", "Orientation");
        N(0, "ThumbnailImageLength", "ImageLength");
        N(0, "ThumbnailImageWidth", "ImageWidth");
        N(5, "ThumbnailOrientation", "Orientation");
        N(5, "ThumbnailImageLength", "ImageLength");
        N(5, "ThumbnailImageWidth", "ImageWidth");
        N(4, "Orientation", "ThumbnailOrientation");
        N(4, "ImageLength", "ThumbnailImageLength");
        N(4, "ImageWidth", "ThumbnailImageWidth");
    }

    private int Z(c cVar) {
        short s10;
        e[][] eVarArr = f2493j0;
        int[] iArr = new int[eVarArr.length];
        int[] iArr2 = new int[eVarArr.length];
        for (e eVar : f2494k0) {
            M(eVar.f2547b);
        }
        if (this.f2519i) {
            if (this.f2520j) {
                M("StripOffsets");
                M("StripByteCounts");
            } else {
                M("JPEGInterchangeFormat");
                M("JPEGInterchangeFormatLength");
            }
        }
        for (int i10 = 0; i10 < f2493j0.length; i10++) {
            for (Object obj : this.f2516f[i10].entrySet().toArray()) {
                Map.Entry entry = (Map.Entry) obj;
                if (entry.getValue() == null) {
                    this.f2516f[i10].remove(entry.getKey());
                }
            }
        }
        if (!this.f2516f[1].isEmpty()) {
            this.f2516f[0].put(f2494k0[1].f2547b, d.f(0L, this.f2518h));
        }
        if (!this.f2516f[2].isEmpty()) {
            this.f2516f[0].put(f2494k0[2].f2547b, d.f(0L, this.f2518h));
        }
        if (!this.f2516f[3].isEmpty()) {
            this.f2516f[1].put(f2494k0[3].f2547b, d.f(0L, this.f2518h));
        }
        if (this.f2519i) {
            if (this.f2520j) {
                this.f2516f[4].put("StripOffsets", d.j(0, this.f2518h));
                this.f2516f[4].put("StripByteCounts", d.j(this.f2523m, this.f2518h));
            } else {
                this.f2516f[4].put("JPEGInterchangeFormat", d.f(0L, this.f2518h));
                this.f2516f[4].put("JPEGInterchangeFormatLength", d.f(this.f2523m, this.f2518h));
            }
        }
        for (int i11 = 0; i11 < f2493j0.length; i11++) {
            int i12 = 0;
            for (Map.Entry entry2 : this.f2516f[i11].entrySet()) {
                int p10 = ((d) entry2.getValue()).p();
                if (p10 > 4) {
                    i12 += p10;
                }
            }
            iArr2[i11] = iArr2[i11] + i12;
        }
        int i13 = 8;
        for (int i14 = 0; i14 < f2493j0.length; i14++) {
            if (!this.f2516f[i14].isEmpty()) {
                iArr[i14] = i13;
                i13 += (this.f2516f[i14].size() * 12) + 2 + 4 + iArr2[i14];
            }
        }
        if (this.f2519i) {
            if (this.f2520j) {
                this.f2516f[4].put("StripOffsets", d.j(i13, this.f2518h));
            } else {
                this.f2516f[4].put("JPEGInterchangeFormat", d.f(i13, this.f2518h));
            }
            this.f2522l = i13;
            i13 += this.f2523m;
        }
        if (this.f2514d == 4) {
            i13 += 8;
        }
        if (f2505v) {
            for (int i15 = 0; i15 < f2493j0.length; i15++) {
                Log.d("ExifInterface", String.format("index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d", Integer.valueOf(i15), Integer.valueOf(iArr[i15]), Integer.valueOf(this.f2516f[i15].size()), Integer.valueOf(iArr2[i15]), Integer.valueOf(i13)));
            }
        }
        if (!this.f2516f[1].isEmpty()) {
            this.f2516f[0].put(f2494k0[1].f2547b, d.f(iArr[1], this.f2518h));
        }
        if (!this.f2516f[2].isEmpty()) {
            this.f2516f[0].put(f2494k0[2].f2547b, d.f(iArr[2], this.f2518h));
        }
        if (!this.f2516f[3].isEmpty()) {
            this.f2516f[1].put(f2494k0[3].f2547b, d.f(iArr[3], this.f2518h));
        }
        int i16 = this.f2514d;
        if (i16 != 4) {
            if (i16 != 13) {
                if (i16 == 14) {
                    cVar.write(N);
                    cVar.c(i13);
                }
            } else {
                cVar.c(i13);
                cVar.write(I);
            }
        } else if (i13 <= 65535) {
            cVar.g(i13);
            cVar.write(f2500q0);
        } else {
            throw new IllegalStateException("Size of exif data (" + i13 + " bytes) exceeds the max size of a JPEG APP1 segment (65536 bytes)");
        }
        if (this.f2518h == ByteOrder.BIG_ENDIAN) {
            s10 = 19789;
        } else {
            s10 = 18761;
        }
        cVar.e(s10);
        cVar.a(this.f2518h);
        cVar.g(42);
        cVar.f(8L);
        for (int i17 = 0; i17 < f2493j0.length; i17++) {
            if (!this.f2516f[i17].isEmpty()) {
                cVar.g(this.f2516f[i17].size());
                int size = iArr[i17] + 2 + (this.f2516f[i17].size() * 12) + 4;
                for (Map.Entry entry3 : this.f2516f[i17].entrySet()) {
                    int i18 = ((e) f2496m0[i17].get(entry3.getKey())).f2546a;
                    d dVar = (d) entry3.getValue();
                    int p11 = dVar.p();
                    cVar.g(i18);
                    cVar.g(dVar.f2542a);
                    cVar.c(dVar.f2543b);
                    if (p11 > 4) {
                        cVar.f(size);
                        size += p11;
                    } else {
                        cVar.write(dVar.f2545d);
                        if (p11 < 4) {
                            while (p11 < 4) {
                                cVar.b(0);
                                p11++;
                            }
                        }
                    }
                }
                if (i17 == 0 && !this.f2516f[4].isEmpty()) {
                    cVar.f(iArr[4]);
                } else {
                    cVar.f(0L);
                }
                for (Map.Entry entry4 : this.f2516f[i17].entrySet()) {
                    byte[] bArr = ((d) entry4.getValue()).f2545d;
                    if (bArr.length > 4) {
                        cVar.write(bArr, 0, bArr.length);
                    }
                }
            }
        }
        if (this.f2519i) {
            cVar.write(p());
        }
        if (this.f2514d == 14 && i13 % 2 == 1) {
            cVar.b(0);
        }
        cVar.a(ByteOrder.BIG_ENDIAN);
        return i13;
    }

    private void a() {
        String d10 = d("DateTimeOriginal");
        if (d10 != null && d("DateTime") == null) {
            this.f2516f[0].put("DateTime", d.e(d10));
        }
        if (d("ImageWidth") == null) {
            this.f2516f[0].put("ImageWidth", d.f(0L, this.f2518h));
        }
        if (d("ImageLength") == null) {
            this.f2516f[0].put("ImageLength", d.f(0L, this.f2518h));
        }
        if (d("Orientation") == null) {
            this.f2516f[0].put("Orientation", d.f(0L, this.f2518h));
        }
        if (d("LightSource") == null) {
            this.f2516f[1].put("LightSource", d.f(0L, this.f2518h));
        }
    }

    private void b(b bVar, c cVar, byte[] bArr, byte[] bArr2) {
        while (true) {
            byte[] bArr3 = new byte[4];
            bVar.readFully(bArr3);
            c(bVar, cVar, bArr3);
            if (!Arrays.equals(bArr3, bArr)) {
                if (bArr2 != null && Arrays.equals(bArr3, bArr2)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void c(b bVar, c cVar, byte[] bArr) {
        int readInt = bVar.readInt();
        cVar.write(bArr);
        cVar.c(readInt);
        if (readInt % 2 == 1) {
            readInt++;
        }
        androidx.exifinterface.media.b.e(bVar, cVar, readInt);
    }

    private d e(String str) {
        if (str != null) {
            if ("ISOSpeedRatings".equals(str)) {
                if (f2505v) {
                    Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
                }
                str = "PhotographicSensitivity";
            }
            for (int i10 = 0; i10 < f2493j0.length; i10++) {
                d dVar = (d) this.f2516f[i10].get(str);
                if (dVar != null) {
                    return dVar;
                }
            }
            return null;
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    private void f(g gVar) {
        String str;
        String str2;
        String str3;
        int i10;
        if (Build.VERSION.SDK_INT >= 28) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                try {
                    b.C0040b.a(mediaMetadataRetriever, new C0039a(gVar));
                    String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
                    String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
                    String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
                    String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
                    if ("yes".equals(extractMetadata3)) {
                        str = mediaMetadataRetriever.extractMetadata(29);
                        str2 = mediaMetadataRetriever.extractMetadata(30);
                        str3 = mediaMetadataRetriever.extractMetadata(31);
                    } else if ("yes".equals(extractMetadata4)) {
                        str = mediaMetadataRetriever.extractMetadata(18);
                        str2 = mediaMetadataRetriever.extractMetadata(19);
                        str3 = mediaMetadataRetriever.extractMetadata(24);
                    } else {
                        str = null;
                        str2 = null;
                        str3 = null;
                    }
                    if (str != null) {
                        this.f2516f[0].put("ImageWidth", d.j(Integer.parseInt(str), this.f2518h));
                    }
                    if (str2 != null) {
                        this.f2516f[0].put("ImageLength", d.j(Integer.parseInt(str2), this.f2518h));
                    }
                    if (str3 != null) {
                        int parseInt = Integer.parseInt(str3);
                        if (parseInt != 90) {
                            if (parseInt != 180) {
                                if (parseInt != 270) {
                                    i10 = 1;
                                } else {
                                    i10 = 8;
                                }
                            } else {
                                i10 = 3;
                            }
                        } else {
                            i10 = 6;
                        }
                        this.f2516f[0].put("Orientation", d.j(i10, this.f2518h));
                    }
                    if (extractMetadata != null && extractMetadata2 != null) {
                        int parseInt2 = Integer.parseInt(extractMetadata);
                        int parseInt3 = Integer.parseInt(extractMetadata2);
                        if (parseInt3 > 6) {
                            gVar.g(parseInt2);
                            byte[] bArr = new byte[6];
                            gVar.readFully(bArr);
                            int i11 = parseInt2 + 6;
                            int i12 = parseInt3 - 6;
                            if (Arrays.equals(bArr, f2500q0)) {
                                byte[] bArr2 = new byte[i12];
                                gVar.readFully(bArr2);
                                this.f2526p = i11;
                                K(bArr2, 0);
                            } else {
                                throw new IOException("Invalid identifier");
                            }
                        } else {
                            throw new IOException("Invalid exif length");
                        }
                    }
                    if (f2505v) {
                        Log.d("ExifInterface", "Heif meta: " + str + "x" + str2 + ", rotation " + str3);
                    }
                    return;
                } catch (RuntimeException unused) {
                    throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
                }
            } finally {
                mediaMetadataRetriever.release();
            }
        }
        throw new UnsupportedOperationException("Reading EXIF from HEIF files is supported from SDK 28 and above");
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x018f, code lost:
        r22.e(r21.f2518h);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0194, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ba A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0179 A[LOOP:0: B:10:0x0038->B:59:0x0179, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0183 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g(androidx.exifinterface.media.a.b r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.a.g(androidx.exifinterface.media.a$b, int, int):void");
    }

    private int h(BufferedInputStream bufferedInputStream) {
        bufferedInputStream.mark(AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT);
        byte[] bArr = new byte[AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (w(bArr)) {
            return 4;
        }
        if (z(bArr)) {
            return 9;
        }
        if (v(bArr)) {
            return 12;
        }
        if (x(bArr)) {
            return 7;
        }
        if (A(bArr)) {
            return 10;
        }
        if (y(bArr)) {
            return 13;
        }
        if (F(bArr)) {
            return 14;
        }
        return 0;
    }

    private void i(g gVar) {
        int i10;
        int i11;
        l(gVar);
        d dVar = (d) this.f2516f[1].get("MakerNote");
        if (dVar != null) {
            g gVar2 = new g(dVar.f2545d);
            gVar2.e(this.f2518h);
            byte[] bArr = F;
            byte[] bArr2 = new byte[bArr.length];
            gVar2.readFully(bArr2);
            gVar2.g(0L);
            byte[] bArr3 = G;
            byte[] bArr4 = new byte[bArr3.length];
            gVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                gVar2.g(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                gVar2.g(12L);
            }
            L(gVar2, 6);
            d dVar2 = (d) this.f2516f[7].get("PreviewImageStart");
            d dVar3 = (d) this.f2516f[7].get("PreviewImageLength");
            if (dVar2 != null && dVar3 != null) {
                this.f2516f[5].put("JPEGInterchangeFormat", dVar2);
                this.f2516f[5].put("JPEGInterchangeFormatLength", dVar3);
            }
            d dVar4 = (d) this.f2516f[8].get("AspectFrame");
            if (dVar4 != null) {
                int[] iArr = (int[]) dVar4.o(this.f2518h);
                if (iArr != null && iArr.length == 4) {
                    int i12 = iArr[2];
                    int i13 = iArr[0];
                    if (i12 > i13 && (i10 = iArr[3]) > (i11 = iArr[1])) {
                        int i14 = (i12 - i13) + 1;
                        int i15 = (i10 - i11) + 1;
                        if (i14 < i15) {
                            int i16 = i14 + i15;
                            i15 = i16 - i15;
                            i14 = i16 - i15;
                        }
                        d j10 = d.j(i14, this.f2518h);
                        d j11 = d.j(i15, this.f2518h);
                        this.f2516f[0].put("ImageWidth", j10);
                        this.f2516f[0].put("ImageLength", j11);
                        return;
                    }
                    return;
                }
                Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
            }
        }
    }

    private void j(b bVar) {
        if (f2505v) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + bVar);
        }
        bVar.e(ByteOrder.BIG_ENDIAN);
        byte[] bArr = H;
        bVar.f(bArr.length);
        int length = bArr.length + 0;
        while (true) {
            try {
                int readInt = bVar.readInt();
                byte[] bArr2 = new byte[4];
                bVar.readFully(bArr2);
                int i10 = length + 4 + 4;
                if (i10 == 16 && !Arrays.equals(bArr2, J)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (!Arrays.equals(bArr2, K)) {
                    if (Arrays.equals(bArr2, I)) {
                        byte[] bArr3 = new byte[readInt];
                        bVar.readFully(bArr3);
                        int readInt2 = bVar.readInt();
                        CRC32 crc32 = new CRC32();
                        crc32.update(bArr2);
                        crc32.update(bArr3);
                        if (((int) crc32.getValue()) == readInt2) {
                            this.f2526p = i10;
                            K(bArr3, 0);
                            Y();
                            U(new b(bArr3));
                            return;
                        }
                        throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                    }
                    int i11 = readInt + 4;
                    bVar.f(i11);
                    length = i10 + i11;
                } else {
                    return;
                }
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    private void k(b bVar) {
        boolean z10 = f2505v;
        if (z10) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + bVar);
        }
        bVar.f(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        bVar.readFully(bArr);
        bVar.readFully(bArr2);
        bVar.readFully(bArr3);
        int i10 = ByteBuffer.wrap(bArr).getInt();
        int i11 = ByteBuffer.wrap(bArr2).getInt();
        int i12 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i11];
        bVar.f(i10 - bVar.b());
        bVar.readFully(bArr4);
        g(new b(bArr4), i10, 5);
        bVar.f(i12 - bVar.b());
        bVar.e(ByteOrder.BIG_ENDIAN);
        int readInt = bVar.readInt();
        if (z10) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + readInt);
        }
        for (int i13 = 0; i13 < readInt; i13++) {
            int readUnsignedShort = bVar.readUnsignedShort();
            int readUnsignedShort2 = bVar.readUnsignedShort();
            if (readUnsignedShort == f2488e0.f2546a) {
                short readShort = bVar.readShort();
                short readShort2 = bVar.readShort();
                d j10 = d.j(readShort, this.f2518h);
                d j11 = d.j(readShort2, this.f2518h);
                this.f2516f[0].put("ImageLength", j10);
                this.f2516f[0].put("ImageWidth", j11);
                if (f2505v) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) readShort) + ", width: " + ((int) readShort2));
                    return;
                }
                return;
            }
            bVar.f(readUnsignedShort2);
        }
    }

    private void l(g gVar) {
        d dVar;
        H(gVar);
        L(gVar, 0);
        X(gVar, 0);
        X(gVar, 5);
        X(gVar, 4);
        Y();
        if (this.f2514d == 8 && (dVar = (d) this.f2516f[1].get("MakerNote")) != null) {
            g gVar2 = new g(dVar.f2545d);
            gVar2.e(this.f2518h);
            gVar2.f(6);
            L(gVar2, 9);
            d dVar2 = (d) this.f2516f[9].get("ColorSpace");
            if (dVar2 != null) {
                this.f2516f[1].put("ColorSpace", dVar2);
            }
        }
    }

    private void m(g gVar) {
        if (f2505v) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + gVar);
        }
        l(gVar);
        d dVar = (d) this.f2516f[0].get("JpgFromRaw");
        if (dVar != null) {
            g(new b(dVar.f2545d), (int) dVar.f2544c, 5);
        }
        d dVar2 = (d) this.f2516f[0].get("ISO");
        d dVar3 = (d) this.f2516f[1].get("PhotographicSensitivity");
        if (dVar2 != null && dVar3 == null) {
            this.f2516f[1].put("PhotographicSensitivity", dVar2);
        }
    }

    private void n(g gVar) {
        byte[] bArr = f2500q0;
        gVar.f(bArr.length);
        byte[] bArr2 = new byte[gVar.available()];
        gVar.readFully(bArr2);
        this.f2526p = bArr.length;
        K(bArr2, 0);
    }

    private void q(b bVar) {
        if (f2505v) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + bVar);
        }
        bVar.e(ByteOrder.LITTLE_ENDIAN);
        bVar.f(L.length);
        int readInt = bVar.readInt() + 8;
        byte[] bArr = M;
        bVar.f(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                bVar.readFully(bArr2);
                int readInt2 = bVar.readInt();
                int i10 = length + 4 + 4;
                if (Arrays.equals(N, bArr2)) {
                    byte[] bArr3 = new byte[readInt2];
                    bVar.readFully(bArr3);
                    this.f2526p = i10;
                    K(bArr3, 0);
                    U(new b(bArr3));
                    return;
                }
                if (readInt2 % 2 == 1) {
                    readInt2++;
                }
                length = i10 + readInt2;
                if (length == readInt) {
                    return;
                }
                if (length <= readInt) {
                    bVar.f(readInt2);
                } else {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    private static Pair r(String str) {
        int intValue;
        int i10;
        if (str.contains(StringUtils.COMMA)) {
            String[] split = str.split(StringUtils.COMMA, -1);
            Pair r10 = r(split[0]);
            if (((Integer) r10.first).intValue() == 2) {
                return r10;
            }
            for (int i11 = 1; i11 < split.length; i11++) {
                Pair r11 = r(split[i11]);
                if (!((Integer) r11.first).equals(r10.first) && !((Integer) r11.second).equals(r10.first)) {
                    intValue = -1;
                } else {
                    intValue = ((Integer) r10.first).intValue();
                }
                if (((Integer) r10.second).intValue() != -1 && (((Integer) r11.first).equals(r10.second) || ((Integer) r11.second).equals(r10.second))) {
                    i10 = ((Integer) r10.second).intValue();
                } else {
                    i10 = -1;
                }
                if (intValue == -1 && i10 == -1) {
                    return new Pair(2, -1);
                }
                if (intValue == -1) {
                    r10 = new Pair(Integer.valueOf(i10), -1);
                } else if (i10 == -1) {
                    r10 = new Pair(Integer.valueOf(intValue), -1);
                }
            }
            return r10;
        } else if (str.contains("/")) {
            String[] split2 = str.split("/", -1);
            if (split2.length == 2) {
                try {
                    long parseDouble = (long) Double.parseDouble(split2[0]);
                    long parseDouble2 = (long) Double.parseDouble(split2[1]);
                    if (parseDouble >= 0 && parseDouble2 >= 0) {
                        if (parseDouble <= 2147483647L && parseDouble2 <= 2147483647L) {
                            return new Pair(10, 5);
                        }
                        return new Pair(5, -1);
                    }
                    return new Pair(10, -1);
                } catch (NumberFormatException unused) {
                }
            }
            return new Pair(2, -1);
        } else {
            try {
                try {
                    Long valueOf = Long.valueOf(Long.parseLong(str));
                    if (valueOf.longValue() >= 0 && valueOf.longValue() <= 65535) {
                        return new Pair(3, 4);
                    }
                    if (valueOf.longValue() < 0) {
                        return new Pair(9, -1);
                    }
                    return new Pair(4, -1);
                } catch (NumberFormatException unused2) {
                    return new Pair(2, -1);
                }
            } catch (NumberFormatException unused3) {
                Double.parseDouble(str);
                return new Pair(12, -1);
            }
        }
    }

    private void s(b bVar, HashMap hashMap) {
        d dVar = (d) hashMap.get("JPEGInterchangeFormat");
        d dVar2 = (d) hashMap.get("JPEGInterchangeFormatLength");
        if (dVar != null && dVar2 != null) {
            int m10 = dVar.m(this.f2518h);
            int m11 = dVar2.m(this.f2518h);
            if (this.f2514d == 7) {
                m10 += this.f2527q;
            }
            if (m10 > 0 && m11 > 0) {
                this.f2519i = true;
                if (this.f2511a == null && this.f2513c == null && this.f2512b == null) {
                    byte[] bArr = new byte[m11];
                    bVar.f(m10);
                    bVar.readFully(bArr);
                    this.f2524n = bArr;
                }
                this.f2522l = m10;
                this.f2523m = m11;
            }
            if (f2505v) {
                Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + m10 + ", length: " + m11);
            }
        }
    }

    private void t(b bVar, HashMap hashMap) {
        byte[] bArr;
        d dVar = (d) hashMap.get("StripOffsets");
        d dVar2 = (d) hashMap.get("StripByteCounts");
        if (dVar != null && dVar2 != null) {
            long[] c10 = androidx.exifinterface.media.b.c(dVar.o(this.f2518h));
            long[] c11 = androidx.exifinterface.media.b.c(dVar2.o(this.f2518h));
            if (c10 != null && c10.length != 0) {
                if (c11 != null && c11.length != 0) {
                    if (c10.length != c11.length) {
                        Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                        return;
                    }
                    long j10 = 0;
                    for (long j11 : c11) {
                        j10 += j11;
                    }
                    int i10 = (int) j10;
                    byte[] bArr2 = new byte[i10];
                    this.f2521k = true;
                    this.f2520j = true;
                    this.f2519i = true;
                    int i11 = 0;
                    int i12 = 0;
                    for (int i13 = 0; i13 < c10.length; i13++) {
                        int i14 = (int) c10[i13];
                        int i15 = (int) c11[i13];
                        if (i13 < c10.length - 1) {
                            bArr = bArr2;
                            if (i14 + i15 != c10[i13 + 1]) {
                                this.f2521k = false;
                            }
                        } else {
                            bArr = bArr2;
                        }
                        int i16 = i14 - i11;
                        if (i16 < 0) {
                            Log.d("ExifInterface", "Invalid strip offset value");
                            return;
                        }
                        try {
                            bVar.f(i16);
                            int i17 = i11 + i16;
                            byte[] bArr3 = new byte[i15];
                            try {
                                bVar.readFully(bArr3);
                                i11 = i17 + i15;
                                bArr2 = bArr;
                                System.arraycopy(bArr3, 0, bArr2, i12, i15);
                                i12 += i15;
                            } catch (EOFException unused) {
                                Log.d("ExifInterface", "Failed to read " + i15 + " bytes.");
                                return;
                            }
                        } catch (EOFException unused2) {
                            Log.d("ExifInterface", "Failed to skip " + i16 + " bytes.");
                            return;
                        }
                    }
                    this.f2524n = bArr2;
                    if (this.f2521k) {
                        this.f2522l = (int) c10[0];
                        this.f2523m = i10;
                        return;
                    }
                    return;
                }
                Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                return;
            }
            Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
        }
    }

    private void u(String str) {
        if (str != null) {
            FileInputStream fileInputStream = null;
            this.f2513c = null;
            this.f2511a = str;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    if (B(fileInputStream2.getFD())) {
                        this.f2512b = fileInputStream2.getFD();
                    } else {
                        this.f2512b = null;
                    }
                    G(fileInputStream2);
                    androidx.exifinterface.media.b.b(fileInputStream2);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    androidx.exifinterface.media.b.b(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            throw new NullPointerException("filename cannot be null");
        }
    }

    private boolean v(byte[] bArr) {
        b bVar;
        long readInt;
        byte[] bArr2;
        long j10;
        b bVar2 = null;
        try {
            try {
                bVar = new b(bArr);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            readInt = bVar.readInt();
            bArr2 = new byte[4];
            bVar.readFully(bArr2);
        } catch (Exception e11) {
            e = e11;
            bVar2 = bVar;
            if (f2505v) {
                Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
            }
            if (bVar2 != null) {
                bVar2.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            bVar2 = bVar;
            if (bVar2 != null) {
                bVar2.close();
            }
            throw th;
        }
        if (!Arrays.equals(bArr2, C)) {
            bVar.close();
            return false;
        }
        if (readInt == 1) {
            readInt = bVar.readLong();
            j10 = 16;
            if (readInt < 16) {
                bVar.close();
                return false;
            }
        } else {
            j10 = 8;
        }
        if (readInt > bArr.length) {
            readInt = bArr.length;
        }
        long j11 = readInt - j10;
        if (j11 < 8) {
            bVar.close();
            return false;
        }
        byte[] bArr3 = new byte[4];
        boolean z10 = false;
        boolean z11 = false;
        for (long j12 = 0; j12 < j11 / 4; j12++) {
            try {
                bVar.readFully(bArr3);
                if (j12 != 1) {
                    if (Arrays.equals(bArr3, D)) {
                        z10 = true;
                    } else if (Arrays.equals(bArr3, E)) {
                        z11 = true;
                    }
                    if (z10 && z11) {
                        bVar.close();
                        return true;
                    }
                }
            } catch (EOFException unused) {
                bVar.close();
                return false;
            }
        }
        bVar.close();
        return false;
    }

    private static boolean w(byte[] bArr) {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = B;
            if (i10 < bArr2.length) {
                if (bArr[i10] != bArr2[i10]) {
                    return false;
                }
                i10++;
            } else {
                return true;
            }
        }
    }

    private boolean x(byte[] bArr) {
        boolean z10 = false;
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                ByteOrder J2 = J(bVar2);
                this.f2518h = J2;
                bVar2.e(J2);
                short readShort = bVar2.readShort();
                z10 = (readShort == 20306 || readShort == 21330) ? true : true;
                bVar2.close();
                return z10;
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                return false;
            } catch (Throwable th) {
                th = th;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean y(byte[] bArr) {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = H;
            if (i10 < bArr2.length) {
                if (bArr[i10] != bArr2[i10]) {
                    return false;
                }
                i10++;
            } else {
                return true;
            }
        }
    }

    private boolean z(byte[] bArr) {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i10 = 0; i10 < bytes.length; i10++) {
            if (bArr[i10] != bytes[i10]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00e4 A[Catch: all -> 0x010c, Exception -> 0x010e, TryCatch #20 {Exception -> 0x010e, all -> 0x010c, blocks: (B:62:0x00e0, B:64:0x00e4, B:66:0x00fa, B:65:0x00f3), top: B:122:0x00e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f3 A[Catch: all -> 0x010c, Exception -> 0x010e, TryCatch #20 {Exception -> 0x010e, all -> 0x010c, blocks: (B:62:0x00e0, B:64:0x00e4, B:66:0x00fa, B:65:0x00f3), top: B:122:0x00e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void P() {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.a.P():void");
    }

    public void T(String str, String str2) {
        e eVar;
        int i10;
        int i11;
        String str3;
        Matcher matcher;
        String str4 = str;
        String str5 = str2;
        if (str4 != null) {
            if (("DateTime".equals(str4) || "DateTimeOriginal".equals(str4) || "DateTimeDigitized".equals(str4)) && str5 != null) {
                boolean find = f2504u0.matcher(str5).find();
                boolean find2 = f2506v0.matcher(str5).find();
                if (str2.length() == 19 && (find || find2)) {
                    if (find2) {
                        str5 = str5.replaceAll("-", ":");
                    }
                } else {
                    Log.w("ExifInterface", "Invalid value for " + str4 + " : " + str5);
                    return;
                }
            }
            if ("ISOSpeedRatings".equals(str4)) {
                if (f2505v) {
                    Log.d("ExifInterface", "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
                }
                str4 = "PhotographicSensitivity";
            }
            int i12 = 2;
            int i13 = 1;
            if (str5 != null && f2497n0.contains(str4)) {
                if (str4.equals("GPSTimeStamp")) {
                    if (!f2503t0.matcher(str5).find()) {
                        Log.w("ExifInterface", "Invalid value for " + str4 + " : " + str5);
                        return;
                    }
                    str5 = Integer.parseInt(matcher.group(1)) + "/1," + Integer.parseInt(matcher.group(2)) + "/1," + Integer.parseInt(matcher.group(3)) + "/1";
                } else {
                    try {
                        str5 = new f(Double.parseDouble(str5)).toString();
                    } catch (NumberFormatException unused) {
                        Log.w("ExifInterface", "Invalid value for " + str4 + " : " + str5);
                        return;
                    }
                }
            }
            int i14 = 0;
            int i15 = 0;
            while (i15 < f2493j0.length) {
                if ((i15 != 4 || this.f2519i) && (eVar = (e) f2496m0[i15].get(str4)) != null) {
                    if (str5 == null) {
                        this.f2516f[i15].remove(str4);
                    } else {
                        Pair r10 = r(str5);
                        int i16 = -1;
                        if (eVar.f2548c != ((Integer) r10.first).intValue() && eVar.f2548c != ((Integer) r10.second).intValue()) {
                            int i17 = eVar.f2549d;
                            if (i17 != -1 && (i17 == ((Integer) r10.first).intValue() || eVar.f2549d == ((Integer) r10.second).intValue())) {
                                i10 = eVar.f2549d;
                            } else {
                                int i18 = eVar.f2548c;
                                if (i18 != i13 && i18 != 7 && i18 != i12) {
                                    if (f2505v) {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("Given tag (");
                                        sb2.append(str4);
                                        sb2.append(") value didn't match with one of expected formats: ");
                                        String[] strArr = W;
                                        sb2.append(strArr[eVar.f2548c]);
                                        String str6 = "";
                                        if (eVar.f2549d == -1) {
                                            str3 = "";
                                        } else {
                                            str3 = ", " + strArr[eVar.f2549d];
                                        }
                                        sb2.append(str3);
                                        sb2.append(" (guess: ");
                                        sb2.append(strArr[((Integer) r10.first).intValue()]);
                                        if (((Integer) r10.second).intValue() != -1) {
                                            str6 = ", " + strArr[((Integer) r10.second).intValue()];
                                        }
                                        sb2.append(str6);
                                        sb2.append(")");
                                        Log.d("ExifInterface", sb2.toString());
                                    }
                                } else {
                                    i10 = i18;
                                }
                            }
                        } else {
                            i10 = eVar.f2548c;
                        }
                        switch (i10) {
                            case 1:
                                i11 = i13;
                                this.f2516f[i15].put(str4, d.a(str5));
                                break;
                            case 2:
                            case 7:
                                i11 = i13;
                                this.f2516f[i15].put(str4, d.e(str5));
                                break;
                            case 3:
                                i11 = i13;
                                String[] split = str5.split(StringUtils.COMMA, -1);
                                int[] iArr = new int[split.length];
                                for (int i19 = 0; i19 < split.length; i19++) {
                                    iArr[i19] = Integer.parseInt(split[i19]);
                                }
                                this.f2516f[i15].put(str4, d.k(iArr, this.f2518h));
                                break;
                            case 4:
                                i11 = i13;
                                String[] split2 = str5.split(StringUtils.COMMA, -1);
                                long[] jArr = new long[split2.length];
                                for (int i20 = 0; i20 < split2.length; i20++) {
                                    jArr[i20] = Long.parseLong(split2[i20]);
                                }
                                this.f2516f[i15].put(str4, d.g(jArr, this.f2518h));
                                break;
                            case 5:
                                String[] split3 = str5.split(StringUtils.COMMA, -1);
                                f[] fVarArr = new f[split3.length];
                                int i21 = 0;
                                while (i21 < split3.length) {
                                    String[] split4 = split3[i21].split("/", i16);
                                    fVarArr[i21] = new f((long) Double.parseDouble(split4[0]), (long) Double.parseDouble(split4[1]));
                                    i21++;
                                    i16 = -1;
                                }
                                i11 = 1;
                                this.f2516f[i15].put(str4, d.i(fVarArr, this.f2518h));
                                break;
                            case 6:
                            case 8:
                            case 11:
                            default:
                                i11 = i13;
                                if (f2505v) {
                                    Log.d("ExifInterface", "Data format isn't one of expected formats: " + i10);
                                    break;
                                } else {
                                    break;
                                }
                            case 9:
                                String[] split5 = str5.split(StringUtils.COMMA, -1);
                                int[] iArr2 = new int[split5.length];
                                for (int i22 = 0; i22 < split5.length; i22++) {
                                    iArr2[i22] = Integer.parseInt(split5[i22]);
                                }
                                this.f2516f[i15].put(str4, d.c(iArr2, this.f2518h));
                                i11 = 1;
                                break;
                            case 10:
                                String[] split6 = str5.split(StringUtils.COMMA, -1);
                                f[] fVarArr2 = new f[split6.length];
                                int i23 = i14;
                                while (i23 < split6.length) {
                                    String[] split7 = split6[i23].split("/", -1);
                                    fVarArr2[i23] = new f((long) Double.parseDouble(split7[i14]), (long) Double.parseDouble(split7[i13]));
                                    i23++;
                                    split6 = split6;
                                    i14 = 0;
                                    i13 = 1;
                                }
                                this.f2516f[i15].put(str4, d.d(fVarArr2, this.f2518h));
                                i11 = 1;
                                break;
                            case 12:
                                String[] split8 = str5.split(StringUtils.COMMA, -1);
                                double[] dArr = new double[split8.length];
                                for (int i24 = i14; i24 < split8.length; i24++) {
                                    dArr[i24] = Double.parseDouble(split8[i24]);
                                }
                                this.f2516f[i15].put(str4, d.b(dArr, this.f2518h));
                                break;
                        }
                        i15++;
                        i13 = i11;
                        i12 = 2;
                        i14 = 0;
                    }
                }
                i11 = i13;
                i15++;
                i13 = i11;
                i12 = 2;
                i14 = 0;
            }
            return;
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    public String d(String str) {
        if (str != null) {
            d e10 = e(str);
            if (e10 != null) {
                if (!f2497n0.contains(str)) {
                    return e10.n(this.f2518h);
                }
                if (str.equals("GPSTimeStamp")) {
                    int i10 = e10.f2542a;
                    if (i10 != 5 && i10 != 10) {
                        Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + e10.f2542a);
                        return null;
                    }
                    f[] fVarArr = (f[]) e10.o(this.f2518h);
                    if (fVarArr != null && fVarArr.length == 3) {
                        f fVar = fVarArr[0];
                        Integer valueOf = Integer.valueOf((int) (((float) fVar.f2550a) / ((float) fVar.f2551b)));
                        f fVar2 = fVarArr[1];
                        Integer valueOf2 = Integer.valueOf((int) (((float) fVar2.f2550a) / ((float) fVar2.f2551b)));
                        f fVar3 = fVarArr[2];
                        return String.format("%02d:%02d:%02d", valueOf, valueOf2, Integer.valueOf((int) (((float) fVar3.f2550a) / ((float) fVar3.f2551b))));
                    }
                    Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(fVarArr));
                    return null;
                }
                try {
                    return Double.toString(e10.l(this.f2518h));
                } catch (NumberFormatException unused) {
                }
            }
            return null;
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    public byte[] o() {
        int i10 = this.f2525o;
        if (i10 != 6 && i10 != 7) {
            return null;
        }
        return p();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] p() {
        /*
            r8 = this;
            java.lang.String r0 = "ExifInterface"
            boolean r1 = r8.f2519i
            r2 = 0
            if (r1 != 0) goto L8
            return r2
        L8:
            byte[] r1 = r8.f2524n
            if (r1 == 0) goto Ld
            return r1
        Ld:
            android.content.res.AssetManager$AssetInputStream r1 = r8.f2513c     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            if (r1 == 0) goto L2d
            boolean r3 = r1.markSupported()     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L29
            if (r3 == 0) goto L1c
            r1.reset()     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L29
        L1a:
            r3 = r2
            goto L4e
        L1c:
            java.lang.String r3 = "Cannot read thumbnail from inputstream without mark/reset support"
            android.util.Log.d(r0, r3)     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L29
            androidx.exifinterface.media.b.b(r1)
            return r2
        L25:
            r0 = move-exception
            r3 = r2
            goto L8d
        L29:
            r3 = move-exception
            r4 = r3
            r3 = r2
            goto L7e
        L2d:
            java.lang.String r1 = r8.f2511a     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            if (r1 == 0) goto L39
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            java.lang.String r3 = r8.f2511a     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            goto L1a
        L39:
            java.io.FileDescriptor r1 = r8.f2512b     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            java.io.FileDescriptor r1 = androidx.exifinterface.media.b.a.b(r1)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            int r3 = android.system.OsConstants.SEEK_SET     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            r4 = 0
            androidx.exifinterface.media.b.a.c(r1, r4, r3)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            r7 = r3
            r3 = r1
            r1 = r7
        L4e:
            androidx.exifinterface.media.a$b r4 = new androidx.exifinterface.media.a$b     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L8c
            r4.<init>(r1)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L8c
            int r5 = r8.f2522l     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L8c
            int r6 = r8.f2526p     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L8c
            int r5 = r5 + r6
            r4.f(r5)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L8c
            int r5 = r8.f2523m     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L8c
            byte[] r5 = new byte[r5]     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L8c
            r4.readFully(r5)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L8c
            r8.f2524n = r5     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L8c
            androidx.exifinterface.media.b.b(r1)
            if (r3 == 0) goto L6c
            androidx.exifinterface.media.b.a(r3)
        L6c:
            return r5
        L6d:
            r4 = move-exception
            goto L7e
        L6f:
            r0 = move-exception
            r3 = r1
            goto L8e
        L72:
            r3 = move-exception
            r4 = r3
            r3 = r1
            r1 = r2
            goto L7e
        L77:
            r0 = move-exception
            r3 = r2
            goto L8e
        L7a:
            r3 = move-exception
            r1 = r2
            r4 = r3
            r3 = r1
        L7e:
            java.lang.String r5 = "Encountered exception while getting thumbnail"
            android.util.Log.d(r0, r5, r4)     // Catch: java.lang.Throwable -> L8c
            androidx.exifinterface.media.b.b(r1)
            if (r3 == 0) goto L8b
            androidx.exifinterface.media.b.a(r3)
        L8b:
            return r2
        L8c:
            r0 = move-exception
        L8d:
            r2 = r1
        L8e:
            androidx.exifinterface.media.b.b(r2)
            if (r3 == 0) goto L96
            androidx.exifinterface.media.b.a(r3)
        L96:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.a.p():byte[]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends InputStream implements DataInput {

        /* renamed from: a  reason: collision with root package name */
        protected final DataInputStream f2535a;

        /* renamed from: b  reason: collision with root package name */
        protected int f2536b;

        /* renamed from: c  reason: collision with root package name */
        private ByteOrder f2537c;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f2538d;

        /* renamed from: e  reason: collision with root package name */
        private int f2539e;

        b(byte[] bArr) {
            this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
            this.f2539e = bArr.length;
        }

        public int a() {
            return this.f2539e;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f2535a.available();
        }

        public int b() {
            return this.f2536b;
        }

        public long c() {
            return readInt() & KeyboardMap.kValueMask;
        }

        public void e(ByteOrder byteOrder) {
            this.f2537c = byteOrder;
        }

        public void f(int i10) {
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i10 - i11;
                int skip = (int) this.f2535a.skip(i12);
                if (skip <= 0) {
                    if (this.f2538d == null) {
                        this.f2538d = new byte[8192];
                    }
                    skip = this.f2535a.read(this.f2538d, 0, Math.min(8192, i12));
                    if (skip == -1) {
                        throw new EOFException("Reached EOF while skipping " + i10 + " bytes.");
                    }
                }
                i11 += skip;
            }
            this.f2536b += i11;
        }

        @Override // java.io.InputStream
        public void mark(int i10) {
            throw new UnsupportedOperationException("Mark is currently unsupported");
        }

        @Override // java.io.InputStream
        public int read() {
            this.f2536b++;
            return this.f2535a.read();
        }

        @Override // java.io.DataInput
        public boolean readBoolean() {
            this.f2536b++;
            return this.f2535a.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() {
            this.f2536b++;
            int read = this.f2535a.read();
            if (read >= 0) {
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() {
            this.f2536b += 2;
            return this.f2535a.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i10, int i11) {
            this.f2536b += i11;
            this.f2535a.readFully(bArr, i10, i11);
        }

        @Override // java.io.DataInput
        public int readInt() {
            this.f2536b += 4;
            int read = this.f2535a.read();
            int read2 = this.f2535a.read();
            int read3 = this.f2535a.read();
            int read4 = this.f2535a.read();
            if ((read | read2 | read3 | read4) >= 0) {
                ByteOrder byteOrder = this.f2537c;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                throw new IOException("Invalid byte order: " + this.f2537c);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readLine() {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() {
            this.f2536b += 8;
            int read = this.f2535a.read();
            int read2 = this.f2535a.read();
            int read3 = this.f2535a.read();
            int read4 = this.f2535a.read();
            int read5 = this.f2535a.read();
            int read6 = this.f2535a.read();
            int read7 = this.f2535a.read();
            int read8 = this.f2535a.read();
            if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                ByteOrder byteOrder = this.f2537c;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                }
                throw new IOException("Invalid byte order: " + this.f2537c);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public short readShort() {
            this.f2536b += 2;
            int read = this.f2535a.read();
            int read2 = this.f2535a.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.f2537c;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (short) ((read2 << 8) + read);
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (short) ((read << 8) + read2);
                }
                throw new IOException("Invalid byte order: " + this.f2537c);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readUTF() {
            this.f2536b += 2;
            return this.f2535a.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() {
            this.f2536b++;
            return this.f2535a.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() {
            this.f2536b += 2;
            int read = this.f2535a.read();
            int read2 = this.f2535a.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.f2537c;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 8) + read2;
                }
                throw new IOException("Invalid byte order: " + this.f2537c);
            }
            throw new EOFException();
        }

        @Override // java.io.InputStream
        public void reset() {
            throw new UnsupportedOperationException("Reset is currently unsupported");
        }

        @Override // java.io.DataInput
        public int skipBytes(int i10) {
            throw new UnsupportedOperationException("skipBytes is currently unsupported");
        }

        b(InputStream inputStream) {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) {
            int read = this.f2535a.read(bArr, i10, i11);
            this.f2536b += read;
            return read;
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) {
            this.f2536b += bArr.length;
            this.f2535a.readFully(bArr);
        }

        b(InputStream inputStream, ByteOrder byteOrder) {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f2535a = dataInputStream;
            dataInputStream.mark(0);
            this.f2536b = 0;
            this.f2537c = byteOrder;
            this.f2539e = inputStream instanceof b ? ((b) inputStream).a() : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class g extends b {
        g(byte[] bArr) {
            super(bArr);
            this.f2535a.mark(Integer.MAX_VALUE);
        }

        public void g(long j10) {
            int i10 = this.f2536b;
            if (i10 > j10) {
                this.f2536b = 0;
                this.f2535a.reset();
            } else {
                j10 -= i10;
            }
            f((int) j10);
        }

        g(InputStream inputStream) {
            super(inputStream);
            if (inputStream.markSupported()) {
                this.f2535a.mark(Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f2546a;

        /* renamed from: b  reason: collision with root package name */
        public final String f2547b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2548c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2549d;

        e(String str, int i10, int i11) {
            this.f2547b = str;
            this.f2546a = i10;
            this.f2548c = i11;
            this.f2549d = -1;
        }

        boolean a(int i10) {
            int i11;
            int i12 = this.f2548c;
            if (i12 == 7 || i10 == 7 || i12 == i10 || (i11 = this.f2549d) == i10) {
                return true;
            }
            if ((i12 == 4 || i11 == 4) && i10 == 3) {
                return true;
            }
            if ((i12 == 9 || i11 == 9) && i10 == 8) {
                return true;
            }
            if ((i12 == 12 || i11 == 12) && i10 == 11) {
                return true;
            }
            return false;
        }

        e(String str, int i10, int i11, int i12) {
            this.f2547b = str;
            this.f2546a = i10;
            this.f2548c = i11;
            this.f2549d = i12;
        }
    }
}
