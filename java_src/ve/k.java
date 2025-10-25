package ve;

import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
import io.appmetrica.analytics.BuildConfig;
import kotlin.KotlinVersion;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f31629c;

    /* renamed from: a  reason: collision with root package name */
    public static final k f31627a = new k();

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f31628b = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, 248, 2042, 1018, 1019, 249, 2043, 250, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, BuildConfig.API_LEVEL, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};

    /* renamed from: d  reason: collision with root package name */
    private static final a f31630d = new a();

    static {
        byte[] bArr = {13, 23, 28, 28, 28, 28, 28, 28, 28, 24, 30, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 28, 6, 10, 10, 12, 13, 6, 8, 11, 10, 10, 8, 11, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, 15, 6, 12, 10, 13, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, 13, 19, 13, 14, 6, 15, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, 15, 11, 14, 13, 28, 20, 22, 20, 20, 22, 22, 22, 23, 22, 23, 23, 23, 23, 23, 24, 23, 24, 24, 22, 23, 24, 23, 23, 23, 23, 21, 22, 23, 22, 23, 23, 24, 22, 21, 20, 22, 22, 23, 23, 21, 23, 22, 22, 24, 21, 22, 23, 23, 21, 21, 22, 21, 23, 22, 23, 23, 20, 22, 22, 22, 23, 22, 22, 23, 26, 26, 20, 19, 22, 23, 22, 25, 26, 26, 26, 27, 27, 26, 24, 25, 19, 21, 26, 27, 27, 26, 27, 24, 21, 21, 26, 26, 28, 27, 27, 27, 20, 24, 20, 21, 22, 21, 21, 23, 22, 22, 25, 25, 24, 24, 26, 23, 26, 27, 26, 26, 27, 27, 27, 27, 27, 28, 27, 27, 27, 27, 27, 26};
        f31629c = bArr;
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            f31627a.a(i10, f31628b[i10], f31629c[i10]);
        }
    }

    private k() {
    }

    private final void a(int i10, int i11, int i12) {
        a aVar = new a(i10, i12);
        a aVar2 = f31630d;
        while (i12 > 8) {
            i12 -= 8;
            int i13 = (i11 >>> i12) & KotlinVersion.MAX_COMPONENT_VALUE;
            a[] a10 = aVar2.a();
            kotlin.jvm.internal.m.b(a10);
            a aVar3 = a10[i13];
            if (aVar3 == null) {
                aVar3 = new a();
                a10[i13] = aVar3;
            }
            aVar2 = aVar3;
        }
        int i14 = 8 - i12;
        int i15 = (i11 << i14) & KotlinVersion.MAX_COMPONENT_VALUE;
        a[] a11 = aVar2.a();
        kotlin.jvm.internal.m.b(a11);
        yc.j.m(a11, aVar, i15, (1 << i14) + i15);
    }

    public final void b(af.f source, long j10, af.e sink) {
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(sink, "sink");
        a aVar = f31630d;
        int i10 = 0;
        long j11 = 0;
        int i11 = 0;
        while (j11 < j10) {
            j11++;
            i10 = (i10 << 8) | oe.d.d(source.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
            i11 += 8;
            while (i11 >= 8) {
                int i12 = (i10 >>> (i11 - 8)) & KotlinVersion.MAX_COMPONENT_VALUE;
                a[] a10 = aVar.a();
                kotlin.jvm.internal.m.b(a10);
                aVar = a10[i12];
                kotlin.jvm.internal.m.b(aVar);
                if (aVar.a() == null) {
                    sink.O(aVar.b());
                    i11 -= aVar.c();
                    aVar = f31630d;
                } else {
                    i11 -= 8;
                }
            }
        }
        while (i11 > 0) {
            int i13 = (i10 << (8 - i11)) & KotlinVersion.MAX_COMPONENT_VALUE;
            a[] a11 = aVar.a();
            kotlin.jvm.internal.m.b(a11);
            a aVar2 = a11[i13];
            kotlin.jvm.internal.m.b(aVar2);
            if (aVar2.a() == null && aVar2.c() <= i11) {
                sink.O(aVar2.b());
                i11 -= aVar2.c();
                aVar = f31630d;
            } else {
                return;
            }
        }
    }

    public final void c(af.g source, af.e sink) {
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(sink, "sink");
        int size = source.size();
        long j10 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            int i12 = i10 + 1;
            int d10 = oe.d.d(source.j(i10), KotlinVersion.MAX_COMPONENT_VALUE);
            int i13 = f31628b[d10];
            byte b10 = f31629c[d10];
            j10 = (j10 << b10) | i13;
            i11 += b10;
            while (i11 >= 8) {
                i11 = (i11 == true ? 1 : 0) - 8;
                sink.O((int) (j10 >> i11));
            }
            i10 = i12;
        }
        if (i11 > 0) {
            sink.O((int) ((j10 << (8 - i11)) | (255 >>> i11)));
        }
    }

    public final int d(af.g bytes) {
        kotlin.jvm.internal.m.e(bytes, "bytes");
        int size = bytes.size();
        long j10 = 0;
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            j10 += f31629c[oe.d.d(bytes.j(i10), KotlinVersion.MAX_COMPONENT_VALUE)];
            i10 = i11;
        }
        return (int) ((j10 + 7) >> 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final a[] f31631a;

        /* renamed from: b  reason: collision with root package name */
        private final int f31632b;

        /* renamed from: c  reason: collision with root package name */
        private final int f31633c;

        public a() {
            this.f31631a = new a[256];
            this.f31632b = 0;
            this.f31633c = 0;
        }

        public final a[] a() {
            return this.f31631a;
        }

        public final int b() {
            return this.f31632b;
        }

        public final int c() {
            return this.f31633c;
        }

        public a(int i10, int i11) {
            this.f31631a = null;
            this.f31632b = i10;
            int i12 = i11 & 7;
            this.f31633c = i12 == 0 ? 8 : i12;
        }
    }
}
