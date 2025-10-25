package y4;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import b3.e3;
import b3.m3;
import b3.x1;
import com.arthenica.ffmpegkit.Chapter;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.play.core.review.model.ReviewErrorCode;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
import io.appmetrica.analytics.BuildConfig;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import io.flutter.embedding.android.KeyboardMap;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.KotlinVersion;
import org.apache.tika.parser.external.ExternalParsersConfigReaderMetKeys;
/* loaded from: classes.dex */
public abstract class q0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f32946a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f32947b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f32948c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f32949d;

    /* renamed from: e  reason: collision with root package name */
    public static final String f32950e;

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f32951f;

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f32952g;

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f32953h;

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f32954i;

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f32955j;

    /* renamed from: k  reason: collision with root package name */
    private static HashMap f32956k;

    /* renamed from: l  reason: collision with root package name */
    private static final String[] f32957l;

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f32958m;

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f32959n;

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f32960o;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f32946a = i10;
        String str = Build.DEVICE;
        f32947b = str;
        String str2 = Build.MANUFACTURER;
        f32948c = str2;
        String str3 = Build.MODEL;
        f32949d = str3;
        f32950e = str + ", " + str3 + ", " + str2 + ", " + i10;
        f32951f = new byte[0];
        f32952g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f32953h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f32954i = Pattern.compile("%([A-Fa-f0-9]{2})");
        f32955j = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f32957l = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", Chapter.KEY_ID, "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f32958m = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f32959n = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f32960o = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, KotlinVersion.MAX_COMPONENT_VALUE, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, BuildConfig.API_LEVEL, 116, 125, 122, 137, 142, 135, 128, 149, 146, ModuleDescriptor.MODULE_VERSION, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    private static HashMap A() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap hashMap = new HashMap(iSOLanguages.length + f32957l.length);
        int i10 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = f32957l;
            if (i10 < strArr.length) {
                hashMap.put(strArr[i10], strArr[i10 + 1]);
                i10 += 2;
            } else {
                return hashMap;
            }
        }
    }

    public static long A0(long j10) {
        return (j10 == -9223372036854775807L || j10 == Long.MIN_VALUE) ? j10 : j10 * 1000;
    }

    public static Uri B(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return uri;
        }
        Matcher matcher = f32955j.matcher(path);
        if (matcher.matches() && matcher.group(1) == null) {
            return Uri.withAppendedPath(uri, "Manifest");
        }
        return uri;
    }

    public static ExecutorService B0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: y4.p0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread x02;
                x02 = q0.x0(str, runnable);
                return x02;
            }
        });
    }

    public static String C(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String C0(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        if (!replace.isEmpty() && !replace.equals("und")) {
            str = replace;
        }
        String e10 = n6.c.e(str);
        String str2 = Q0(e10, "-")[0];
        if (f32956k == null) {
            f32956k = A();
        }
        String str3 = (String) f32956k.get(str2);
        if (str3 != null) {
            e10 = str3 + e10.substring(str2.length());
            str2 = str3;
        }
        if ("no".equals(str2) || "i".equals(str2) || "zh".equals(str2)) {
            return z0(e10);
        }
        return e10;
    }

    public static String D(byte[] bArr) {
        return new String(bArr, n6.e.f26427c);
    }

    public static Object[] D0(Object[] objArr, Object obj) {
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length + 1);
        copyOf[objArr.length] = obj;
        return k(copyOf);
    }

    public static String E(byte[] bArr, int i10, int i11) {
        return new String(bArr, i10, i11, n6.e.f26427c);
    }

    public static Object[] E0(Object[] objArr, Object[] objArr2) {
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length + objArr2.length);
        System.arraycopy(objArr2, 0, copyOf, objArr.length, objArr2.length);
        return copyOf;
    }

    public static int F(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    public static Object[] F0(Object[] objArr, int i10) {
        boolean z10;
        if (i10 <= objArr.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        return Arrays.copyOf(objArr, i10);
    }

    public static int G(int i10) {
        if (i10 != 12) {
            switch (i10) {
                case 1:
                    return 4;
                case 2:
                    return 12;
                case 3:
                    return 28;
                case 4:
                    return 204;
                case 5:
                    return 220;
                case 6:
                    return 252;
                case 7:
                    return 1276;
                case 8:
                    return 6396;
                default:
                    return 0;
            }
        }
        return 743676;
    }

    public static Object[] G0(Object[] objArr, int i10, int i11) {
        boolean z10;
        boolean z11 = true;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        if (i11 > objArr.length) {
            z11 = false;
        }
        a.a(z11);
        return Arrays.copyOfRange(objArr, i10, i11);
    }

    public static m3.b H(m3 m3Var, m3.b bVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean h10 = m3Var.h();
        boolean t10 = m3Var.t();
        boolean m10 = m3Var.m();
        boolean w10 = m3Var.w();
        boolean H = m3Var.H();
        boolean C = m3Var.C();
        boolean u10 = m3Var.F().u();
        m3.b.a d10 = new m3.b.a().b(bVar).d(4, !h10);
        boolean z16 = false;
        if (t10 && !h10) {
            z10 = true;
        } else {
            z10 = false;
        }
        m3.b.a d11 = d10.d(5, z10);
        if (m10 && !h10) {
            z11 = true;
        } else {
            z11 = false;
        }
        m3.b.a d12 = d11.d(6, z11);
        if (!u10 && ((m10 || !H || t10) && !h10)) {
            z12 = true;
        } else {
            z12 = false;
        }
        m3.b.a d13 = d12.d(7, z12);
        if (w10 && !h10) {
            z13 = true;
        } else {
            z13 = false;
        }
        m3.b.a d14 = d13.d(8, z13);
        if (!u10 && ((w10 || (H && C)) && !h10)) {
            z14 = true;
        } else {
            z14 = false;
        }
        m3.b.a d15 = d14.d(9, z14).d(10, !h10);
        if (t10 && !h10) {
            z15 = true;
        } else {
            z15 = false;
        }
        m3.b.a d16 = d15.d(11, z15);
        if (t10 && !h10) {
            z16 = true;
        }
        return d16.d(12, z16).e();
    }

    public static long H0(String str) {
        Matcher matcher = f32952g.matcher(str);
        if (matcher.matches()) {
            int i10 = 0;
            if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
                i10 = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
                if ("-".equals(matcher.group(11))) {
                    i10 *= -1;
                }
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
            gregorianCalendar.clear();
            gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
            if (!TextUtils.isEmpty(matcher.group(8))) {
                gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
            }
            long timeInMillis = gregorianCalendar.getTimeInMillis();
            if (i10 != 0) {
                return timeInMillis - (i10 * 60000);
            }
            return timeInMillis;
        }
        throw e3.a("Invalid date/time format: " + str, null);
    }

    public static int I(ByteBuffer byteBuffer, int i10) {
        int i11 = byteBuffer.getInt(i10);
        if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
            return Integer.reverseBytes(i11);
        }
        return i11;
    }

    public static long I0(String str) {
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        Matcher matcher = f32953h.matcher(str);
        if (matcher.matches()) {
            boolean isEmpty = true ^ TextUtils.isEmpty(matcher.group(1));
            String group = matcher.group(3);
            double d15 = 0.0d;
            if (group != null) {
                d10 = Double.parseDouble(group) * 3.1556908E7d;
            } else {
                d10 = 0.0d;
            }
            String group2 = matcher.group(5);
            if (group2 != null) {
                d11 = Double.parseDouble(group2) * 2629739.0d;
            } else {
                d11 = 0.0d;
            }
            double d16 = d10 + d11;
            String group3 = matcher.group(7);
            if (group3 != null) {
                d12 = Double.parseDouble(group3) * 86400.0d;
            } else {
                d12 = 0.0d;
            }
            double d17 = d16 + d12;
            String group4 = matcher.group(10);
            if (group4 != null) {
                d13 = Double.parseDouble(group4) * 3600.0d;
            } else {
                d13 = 0.0d;
            }
            double d18 = d17 + d13;
            String group5 = matcher.group(12);
            if (group5 != null) {
                d14 = Double.parseDouble(group5) * 60.0d;
            } else {
                d14 = 0.0d;
            }
            double d19 = d18 + d14;
            String group6 = matcher.group(14);
            if (group6 != null) {
                d15 = Double.parseDouble(group6);
            }
            long j10 = (long) ((d19 + d15) * 1000.0d);
            if (isEmpty) {
                return -j10;
            }
            return j10;
        }
        return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
    }

    public static byte[] J(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((Character.digit(str.charAt(i11), 16) << 4) + Character.digit(str.charAt(i11 + 1), 16));
        }
        return bArr;
    }

    public static boolean J0(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    public static int K(String str, int i10) {
        int i11 = 0;
        for (String str2 : R0(str)) {
            if (i10 == v.m(str2)) {
                i11++;
            }
        }
        return i11;
    }

    public static boolean K0(Parcel parcel) {
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }

    public static String L(String str, int i10) {
        String[] R0 = R0(str);
        if (R0.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : R0) {
            if (i10 == v.m(str2)) {
                if (sb2.length() > 0) {
                    sb2.append(StringUtils.COMMA);
                }
                sb2.append(str2);
            }
        }
        if (sb2.length() <= 0) {
            return null;
        }
        return sb2.toString();
    }

    public static void L0(List list, int i10, int i11) {
        if (i10 >= 0 && i11 <= list.size() && i10 <= i11) {
            if (i10 != i11) {
                list.subList(i10, i11).clear();
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public static String M(Object[] objArr) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < objArr.length; i10++) {
            sb2.append(objArr[i10].getClass().getSimpleName());
            if (i10 < objArr.length - 1) {
                sb2.append(", ");
            }
        }
        return sb2.toString();
    }

    public static long M0(long j10, long j11, long j12) {
        int i10 = (j12 > j11 ? 1 : (j12 == j11 ? 0 : -1));
        if (i10 >= 0 && j12 % j11 == 0) {
            return j10 / (j12 / j11);
        }
        if (i10 < 0 && j11 % j12 == 0) {
            return j10 * (j11 / j12);
        }
        return (long) (j10 * (j11 / j12));
    }

    public static String N(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return n6.c.f(networkCountryIso);
            }
        }
        return n6.c.f(Locale.getDefault().getCountry());
    }

    public static long[] N0(List list, long j10, long j11) {
        int size = list.size();
        long[] jArr = new long[size];
        int i10 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
        int i11 = 0;
        if (i10 >= 0 && j11 % j10 == 0) {
            long j12 = j11 / j10;
            while (i11 < size) {
                jArr[i11] = ((Long) list.get(i11)).longValue() / j12;
                i11++;
            }
        } else if (i10 < 0 && j10 % j11 == 0) {
            long j13 = j10 / j11;
            while (i11 < size) {
                jArr[i11] = ((Long) list.get(i11)).longValue() * j13;
                i11++;
            }
        } else {
            double d10 = j10 / j11;
            while (i11 < size) {
                jArr[i11] = (long) (((Long) list.get(i11)).longValue() * d10);
                i11++;
            }
        }
        return jArr;
    }

    public static Point O(Context context) {
        Display display;
        DisplayManager displayManager;
        if (f32946a >= 17 && (displayManager = (DisplayManager) context.getSystemService("display")) != null) {
            display = displayManager.getDisplay(0);
        } else {
            display = null;
        }
        if (display == null) {
            display = ((WindowManager) a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return P(context, display);
    }

    public static void O0(long[] jArr, long j10, long j11) {
        int i10 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
        int i11 = 0;
        if (i10 >= 0 && j11 % j10 == 0) {
            long j12 = j11 / j10;
            while (i11 < jArr.length) {
                jArr[i11] = jArr[i11] / j12;
                i11++;
            }
        } else if (i10 < 0 && j10 % j11 == 0) {
            long j13 = j10 / j11;
            while (i11 < jArr.length) {
                jArr[i11] = jArr[i11] * j13;
                i11++;
            }
        } else {
            double d10 = j10 / j11;
            while (i11 < jArr.length) {
                jArr[i11] = (long) (jArr[i11] * d10);
                i11++;
            }
        }
    }

    public static Point P(Context context, Display display) {
        String j02;
        if (display.getDisplayId() == 0 && w0(context)) {
            if (f32946a < 28) {
                j02 = j0("sys.display-size");
            } else {
                j02 = j0("vendor.display-size");
            }
            if (!TextUtils.isEmpty(j02)) {
                try {
                    String[] P0 = P0(j02.trim(), "x");
                    if (P0.length == 2) {
                        int parseInt = Integer.parseInt(P0[0]);
                        int parseInt2 = Integer.parseInt(P0[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                r.c("Util", "Invalid display size: " + j02);
            }
            if ("Sony".equals(f32948c) && f32949d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        int i10 = f32946a;
        if (i10 >= 23) {
            T(display, point);
        } else if (i10 >= 17) {
            S(display, point);
        } else {
            R(display, point);
        }
        return point;
    }

    public static String[] P0(String str, String str2) {
        return str.split(str2, -1);
    }

    public static Looper Q() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            return Looper.getMainLooper();
        }
        return myLooper;
    }

    public static String[] Q0(String str, String str2) {
        return str.split(str2, 2);
    }

    private static void R(Display display, Point point) {
        display.getSize(point);
    }

    public static String[] R0(String str) {
        if (TextUtils.isEmpty(str)) {
            return new String[0];
        }
        return P0(str.trim(), "(\\s*,\\s*)");
    }

    private static void S(Display display, Point point) {
        display.getRealSize(point);
    }

    public static long S0(long j10, long j11, long j12) {
        long j13 = j10 - j11;
        return ((j10 ^ j13) & (j11 ^ j10)) < 0 ? j12 : j13;
    }

    private static void T(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    public static byte[] T0(InputStream inputStream) {
        byte[] bArr = new byte[Base64Utils.IO_BUFFER_SIZE];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static int U(int i10) {
        if (i10 == 2 || i10 == 4) {
            return 6005;
        }
        if (i10 != 10) {
            if (i10 != 7) {
                if (i10 != 8) {
                    switch (i10) {
                        case 15:
                            return 6003;
                        case 16:
                        case 18:
                            return 6005;
                        case 17:
                        case C1415p9.C /* 19 */:
                        case 20:
                        case 21:
                        case Build.API_LEVELS.API_22 /* 22 */:
                            return 6004;
                        default:
                            switch (i10) {
                                case Build.API_LEVELS.API_24 /* 24 */:
                                case 25:
                                case 26:
                                case 27:
                                case Build.API_LEVELS.API_28 /* 28 */:
                                    return 6002;
                                default:
                                    return 6006;
                            }
                    }
                }
                return 6003;
            }
            return 6005;
        }
        return 6004;
    }

    public static long U0(int i10, int i11) {
        return V0(i11) | (V0(i10) << 32);
    }

    public static int V(String str) {
        String[] P0;
        int length;
        boolean z10;
        if (str == null || (length = (P0 = P0(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = P0[length - 1];
        if (length >= 3 && "neg".equals(P0[length - 2])) {
            z10 = true;
        } else {
            z10 = false;
        }
        try {
            int parseInt = Integer.parseInt((String) a.e(str2));
            if (z10) {
                return -parseInt;
            }
            return parseInt;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static long V0(int i10) {
        return i10 & KeyboardMap.kValueMask;
    }

    public static String W(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return "YES";
                        }
                        throw new IllegalStateException();
                    }
                    return "NO_EXCEEDS_CAPABILITIES";
                }
                return "NO_UNSUPPORTED_DRM";
            }
            return "NO_UNSUPPORTED_TYPE";
        }
        return "NO";
    }

    public static CharSequence W0(CharSequence charSequence, int i10) {
        if (charSequence.length() > i10) {
            return charSequence.subSequence(0, i10);
        }
        return charSequence;
    }

    public static String X(Locale locale) {
        if (f32946a >= 21) {
            return Y(locale);
        }
        return locale.toString();
    }

    public static long X0(long j10) {
        if (j10 != -9223372036854775807L && j10 != Long.MIN_VALUE) {
            return j10 / 1000;
        }
        return j10;
    }

    private static String Y(Locale locale) {
        return locale.toLanguageTag();
    }

    public static void Y0(Parcel parcel, boolean z10) {
        parcel.writeInt(z10 ? 1 : 0);
    }

    public static long Z(long j10, float f10) {
        if (f10 == 1.0f) {
            return j10;
        }
        return Math.round(j10 * f10);
    }

    public static long a0(long j10) {
        if (j10 == -9223372036854775807L) {
            return System.currentTimeMillis();
        }
        return j10 + SystemClock.elapsedRealtime();
    }

    public static long b(long j10, long j11, long j12) {
        long j13 = j10 + j11;
        return ((j10 ^ j13) & (j11 ^ j13)) < 0 ? j12 : j13;
    }

    public static int b0(int i10) {
        if (i10 != 8) {
            if (i10 != 16) {
                if (i10 != 24) {
                    return i10 != 32 ? 0 : 805306368;
                }
                return 536870912;
            }
            return 2;
        }
        return 3;
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 == null) {
                return true;
            }
            return false;
        }
        return obj.equals(obj2);
    }

    public static x1 c0(int i10, int i11, int i12) {
        return new x1.b().g0("audio/raw").J(i11).h0(i12).a0(i10).G();
    }

    public static int d(List list, Comparable comparable, boolean z10, boolean z11) {
        int i10;
        int binarySearch = Collections.binarySearch(list, comparable);
        if (binarySearch < 0) {
            i10 = ~binarySearch;
        } else {
            int size = list.size();
            do {
                binarySearch++;
                if (binarySearch >= size) {
                    break;
                }
            } while (((Comparable) list.get(binarySearch)).compareTo(comparable) == 0);
            if (z10) {
                i10 = binarySearch - 1;
            } else {
                i10 = binarySearch;
            }
        }
        if (z11) {
            return Math.min(list.size() - 1, i10);
        }
        return i10;
    }

    public static int d0(int i10, int i11) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 268435456) {
                        if (i10 != 536870912) {
                            if (i10 != 805306368) {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            return i11 * 3;
                        }
                    }
                }
                return i11 * 4;
            }
            return i11;
        }
        return i11 * 2;
    }

    public static int e(long[] jArr, long j10, boolean z10, boolean z11) {
        int i10;
        int binarySearch = Arrays.binarySearch(jArr, j10);
        if (binarySearch < 0) {
            i10 = ~binarySearch;
        } else {
            do {
                binarySearch++;
                if (binarySearch >= jArr.length) {
                    break;
                }
            } while (jArr[binarySearch] == j10);
            if (z10) {
                i10 = binarySearch - 1;
            } else {
                i10 = binarySearch;
            }
        }
        if (z11) {
            return Math.min(jArr.length - 1, i10);
        }
        return i10;
    }

    public static long e0(long j10, float f10) {
        if (f10 == 1.0f) {
            return j10;
        }
        return Math.round(j10 / f10);
    }

    public static int f(List list, Comparable comparable, boolean z10, boolean z11) {
        int i10;
        int binarySearch = Collections.binarySearch(list, comparable);
        if (binarySearch < 0) {
            i10 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (((Comparable) list.get(binarySearch)).compareTo(comparable) == 0);
            if (z10) {
                i10 = binarySearch + 1;
            } else {
                i10 = binarySearch;
            }
        }
        if (z11) {
            return Math.max(0, i10);
        }
        return i10;
    }

    public static int f0(int i10) {
        if (i10 != 13) {
            switch (i10) {
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                default:
                    return 3;
            }
        }
        return 1;
    }

    public static int g(s sVar, long j10, boolean z10, boolean z11) {
        int i10;
        int c10 = sVar.c() - 1;
        int i11 = 0;
        while (i11 <= c10) {
            int i12 = (i11 + c10) >>> 1;
            if (sVar.b(i12) < j10) {
                i11 = i12 + 1;
            } else {
                c10 = i12 - 1;
            }
        }
        if (z10 && (i10 = c10 + 1) < sVar.c() && sVar.b(i10) == j10) {
            return i10;
        }
        if (z11 && c10 == -1) {
            return 0;
        }
        return c10;
    }

    public static String[] g0() {
        String[] h02 = h0();
        for (int i10 = 0; i10 < h02.length; i10++) {
            h02[i10] = C0(h02[i10]);
        }
        return h02;
    }

    public static int h(int[] iArr, int i10, boolean z10, boolean z11) {
        int i11;
        int binarySearch = Arrays.binarySearch(iArr, i10);
        if (binarySearch < 0) {
            i11 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (iArr[binarySearch] == i10);
            if (z10) {
                i11 = binarySearch + 1;
            } else {
                i11 = binarySearch;
            }
        }
        if (z11) {
            return Math.max(0, i11);
        }
        return i11;
    }

    private static String[] h0() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        if (f32946a >= 24) {
            return i0(configuration);
        }
        return new String[]{X(configuration.locale)};
    }

    public static int i(long[] jArr, long j10, boolean z10, boolean z11) {
        int i10;
        int binarySearch = Arrays.binarySearch(jArr, j10);
        if (binarySearch < 0) {
            i10 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (jArr[binarySearch] == j10);
            if (z10) {
                i10 = binarySearch + 1;
            } else {
                i10 = binarySearch;
            }
        }
        if (z11) {
            return Math.max(0, i10);
        }
        return i10;
    }

    private static String[] i0(Configuration configuration) {
        return P0(configuration.getLocales().toLanguageTags(), StringUtils.COMMA);
    }

    public static Object j(Object obj) {
        return obj;
    }

    private static String j0(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e10) {
            r.d("Util", "Failed to read system property " + str, e10);
            return null;
        }
    }

    public static Object[] k(Object[] objArr) {
        return objArr;
    }

    public static String k0(int i10) {
        switch (i10) {
            case ReviewErrorCode.INVALID_REQUEST /* -2 */:
                return "none";
            case -1:
                return CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE;
            case 0:
                return "default";
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return ExternalParsersConfigReaderMetKeys.METADATA_TAG;
            case 6:
                return "camera motion";
            default:
                if (i10 >= 10000) {
                    return "custom (" + i10 + ")";
                }
                return "?";
        }
    }

    public static int l(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    public static byte[] l0(String str) {
        return str.getBytes(n6.e.f26427c);
    }

    public static long m(long j10, long j11) {
        return ((j10 + j11) - 1) / j11;
    }

    public static int m0(Uri uri) {
        int n02;
        String scheme = uri.getScheme();
        if (scheme != null && n6.c.a("rtsp", scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int lastIndexOf = lastPathSegment.lastIndexOf(46);
        if (lastIndexOf >= 0 && (n02 = n0(lastPathSegment.substring(lastIndexOf + 1))) != 4) {
            return n02;
        }
        Matcher matcher = f32955j.matcher((CharSequence) a.e(uri.getPath()));
        if (!matcher.matches()) {
            return 4;
        }
        String group = matcher.group(2);
        if (group != null) {
            if (group.contains("format=mpd-time-csf")) {
                return 0;
            }
            if (group.contains("format=m3u8-aapl")) {
                return 2;
            }
        }
        return 1;
    }

    public static void n(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static int n0(String str) {
        String e10 = n6.c.e(str);
        e10.hashCode();
        char c10 = 65535;
        switch (e10.hashCode()) {
            case 104579:
                if (e10.equals("ism")) {
                    c10 = 0;
                    break;
                }
                break;
            case 108321:
                if (e10.equals("mpd")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3242057:
                if (e10.equals("isml")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3299913:
                if (e10.equals("m3u8")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 2:
                return 1;
            case 1:
                return 0;
            case 3:
                return 2;
            default:
                return 4;
        }
    }

    public static int o(long j10, long j11) {
        int i10 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
        if (i10 < 0) {
            return -1;
        }
        return i10 == 0 ? 0 : 1;
    }

    public static int o0(Uri uri, String str) {
        if (str == null) {
            return m0(uri);
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -979127466:
                if (str.equals("application/x-mpegURL")) {
                    c10 = 0;
                    break;
                }
                break;
            case -156749520:
                if (str.equals("application/vnd.ms-sstr+xml")) {
                    c10 = 1;
                    break;
                }
                break;
            case 64194685:
                if (str.equals("application/dash+xml")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1154777587:
                if (str.equals("application/x-rtsp")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 1;
            case 2:
                return 0;
            case 3:
                return 3;
            default:
                return 4;
        }
    }

    public static float p(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f10, f12));
    }

    public static boolean p0(e0 e0Var, e0 e0Var2, Inflater inflater) {
        if (e0Var.a() <= 0) {
            return false;
        }
        if (e0Var2.b() < e0Var.a()) {
            e0Var2.c(e0Var.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(e0Var.e(), e0Var.f(), e0Var.a());
        int i10 = 0;
        while (true) {
            try {
                i10 += inflater.inflate(e0Var2.e(), i10, e0Var2.b() - i10);
                if (inflater.finished()) {
                    e0Var2.S(i10);
                    inflater.reset();
                    return true;
                } else if (inflater.needsDictionary() || inflater.needsInput()) {
                    break;
                } else if (i10 == e0Var2.b()) {
                    e0Var2.c(e0Var2.b() * 2);
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    public static int q(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i10, i12));
    }

    public static String q0(int i10) {
        return Integer.toString(i10, 36);
    }

    public static long r(long j10, long j11, long j12) {
        return Math.max(j11, Math.min(j10, j12));
    }

    public static boolean r0(Context context) {
        if (f32946a >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return true;
        }
        return false;
    }

    public static boolean s(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (c(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static boolean s0(int i10) {
        return i10 == 536870912 || i10 == 805306368 || i10 == 4;
    }

    public static int t(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = f32959n[((i12 >>> 24) ^ (bArr[i10] & KotlinVersion.MAX_COMPONENT_VALUE)) & KotlinVersion.MAX_COMPONENT_VALUE] ^ (i12 << 8);
            i10++;
        }
        return i12;
    }

    public static boolean t0(int i10) {
        return i10 == 3 || i10 == 2 || i10 == 268435456 || i10 == 536870912 || i10 == 805306368 || i10 == 4;
    }

    public static int u(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = f32960o[i12 ^ (bArr[i10] & KotlinVersion.MAX_COMPONENT_VALUE)];
            i10++;
        }
        return i12;
    }

    public static boolean u0(int i10) {
        return i10 == 10 || i10 == 13;
    }

    public static Handler v(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static boolean v0(Uri uri) {
        String scheme = uri.getScheme();
        if (!TextUtils.isEmpty(scheme) && !Constants.FILE.equals(scheme)) {
            return false;
        }
        return true;
    }

    public static Handler w() {
        return x(null);
    }

    public static boolean w0(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return true;
        }
        return false;
    }

    public static Handler x(Handler.Callback callback) {
        return v((Looper) a.h(Looper.myLooper()), callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread x0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static Handler y() {
        return z(null);
    }

    public static int y0(int[] iArr, int i10) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            if (iArr[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public static Handler z(Handler.Callback callback) {
        return v(Q(), callback);
    }

    private static String z0(String str) {
        int i10 = 0;
        while (true) {
            String[] strArr = f32958m;
            if (i10 < strArr.length) {
                if (str.startsWith(strArr[i10])) {
                    return strArr[i10 + 1] + str.substring(strArr[i10].length());
                }
                i10 += 2;
            } else {
                return str;
            }
        }
    }
}
