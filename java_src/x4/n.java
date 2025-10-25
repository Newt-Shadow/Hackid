package x4;

import android.net.Uri;
import b3.u1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f32371a;

    /* renamed from: b  reason: collision with root package name */
    public final long f32372b;

    /* renamed from: c  reason: collision with root package name */
    public final int f32373c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f32374d;

    /* renamed from: e  reason: collision with root package name */
    public final Map f32375e;

    /* renamed from: f  reason: collision with root package name */
    public final long f32376f;

    /* renamed from: g  reason: collision with root package name */
    public final long f32377g;

    /* renamed from: h  reason: collision with root package name */
    public final long f32378h;

    /* renamed from: i  reason: collision with root package name */
    public final String f32379i;

    /* renamed from: j  reason: collision with root package name */
    public final int f32380j;

    /* renamed from: k  reason: collision with root package name */
    public final Object f32381k;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Uri f32382a;

        /* renamed from: b  reason: collision with root package name */
        private long f32383b;

        /* renamed from: c  reason: collision with root package name */
        private int f32384c;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f32385d;

        /* renamed from: e  reason: collision with root package name */
        private Map f32386e;

        /* renamed from: f  reason: collision with root package name */
        private long f32387f;

        /* renamed from: g  reason: collision with root package name */
        private long f32388g;

        /* renamed from: h  reason: collision with root package name */
        private String f32389h;

        /* renamed from: i  reason: collision with root package name */
        private int f32390i;

        /* renamed from: j  reason: collision with root package name */
        private Object f32391j;

        public n a() {
            y4.a.i(this.f32382a, "The uri must be set.");
            return new n(this.f32382a, this.f32383b, this.f32384c, this.f32385d, this.f32386e, this.f32387f, this.f32388g, this.f32389h, this.f32390i, this.f32391j);
        }

        public b b(int i10) {
            this.f32390i = i10;
            return this;
        }

        public b c(byte[] bArr) {
            this.f32385d = bArr;
            return this;
        }

        public b d(int i10) {
            this.f32384c = i10;
            return this;
        }

        public b e(Map map) {
            this.f32386e = map;
            return this;
        }

        public b f(String str) {
            this.f32389h = str;
            return this;
        }

        public b g(long j10) {
            this.f32388g = j10;
            return this;
        }

        public b h(long j10) {
            this.f32387f = j10;
            return this;
        }

        public b i(Uri uri) {
            this.f32382a = uri;
            return this;
        }

        public b j(String str) {
            this.f32382a = Uri.parse(str);
            return this;
        }

        public b() {
            this.f32384c = 1;
            this.f32386e = Collections.emptyMap();
            this.f32388g = -1L;
        }

        private b(n nVar) {
            this.f32382a = nVar.f32371a;
            this.f32383b = nVar.f32372b;
            this.f32384c = nVar.f32373c;
            this.f32385d = nVar.f32374d;
            this.f32386e = nVar.f32375e;
            this.f32387f = nVar.f32377g;
            this.f32388g = nVar.f32378h;
            this.f32389h = nVar.f32379i;
            this.f32390i = nVar.f32380j;
            this.f32391j = nVar.f32381k;
        }
    }

    static {
        u1.a("goog.exo.datasource");
    }

    public static String c(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return "HEAD";
                }
                throw new IllegalStateException();
            }
            return "POST";
        }
        return "GET";
    }

    public b a() {
        return new b();
    }

    public final String b() {
        return c(this.f32373c);
    }

    public boolean d(int i10) {
        if ((this.f32380j & i10) == i10) {
            return true;
        }
        return false;
    }

    public n e(long j10) {
        long j11 = this.f32378h;
        long j12 = -1;
        if (j11 != -1) {
            j12 = j11 - j10;
        }
        return f(j10, j12);
    }

    public n f(long j10, long j11) {
        if (j10 == 0 && this.f32378h == j11) {
            return this;
        }
        return new n(this.f32371a, this.f32372b, this.f32373c, this.f32374d, this.f32375e, this.f32377g + j10, j11, this.f32379i, this.f32380j, this.f32381k);
    }

    public String toString() {
        return "DataSpec[" + b() + StringUtils.SPACE + this.f32371a + ", " + this.f32377g + ", " + this.f32378h + ", " + this.f32379i + ", " + this.f32380j + "]";
    }

    public n(Uri uri) {
        this(uri, 0L, -1L);
    }

    public n(Uri uri, long j10, long j11) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j10, j11, null, 0, null);
    }

    private n(Uri uri, long j10, int i10, byte[] bArr, Map map, long j11, long j12, String str, int i11, Object obj) {
        byte[] bArr2 = bArr;
        long j13 = j10 + j11;
        boolean z10 = true;
        y4.a.a(j13 >= 0);
        y4.a.a(j11 >= 0);
        if (j12 <= 0 && j12 != -1) {
            z10 = false;
        }
        y4.a.a(z10);
        this.f32371a = uri;
        this.f32372b = j10;
        this.f32373c = i10;
        this.f32374d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f32375e = Collections.unmodifiableMap(new HashMap(map));
        this.f32377g = j11;
        this.f32376f = j13;
        this.f32378h = j12;
        this.f32379i = str;
        this.f32380j = i11;
        this.f32381k = obj;
    }
}
