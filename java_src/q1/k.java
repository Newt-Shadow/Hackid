package q1;

import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import rd.b0;
/* loaded from: classes.dex */
public final class k implements Comparable {

    /* renamed from: f  reason: collision with root package name */
    public static final a f27973f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final k f27974g = new k(0, 0, 0, "");

    /* renamed from: h  reason: collision with root package name */
    private static final k f27975h = new k(0, 1, 0, "");

    /* renamed from: i  reason: collision with root package name */
    private static final k f27976i;

    /* renamed from: j  reason: collision with root package name */
    private static final k f27977j;

    /* renamed from: a  reason: collision with root package name */
    private final int f27978a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27979b;

    /* renamed from: c  reason: collision with root package name */
    private final int f27980c;

    /* renamed from: d  reason: collision with root package name */
    private final String f27981d;

    /* renamed from: e  reason: collision with root package name */
    private final xc.d f27982e;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final k a() {
            return k.f27975h;
        }

        public final k b(String str) {
            boolean b02;
            String group;
            String str2;
            if (str != null) {
                b02 = b0.b0(str);
                if (!b02) {
                    Matcher matcher = Pattern.compile("(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?").matcher(str);
                    if (matcher.matches() && (group = matcher.group(1)) != null) {
                        int parseInt = Integer.parseInt(group);
                        String group2 = matcher.group(2);
                        if (group2 != null) {
                            int parseInt2 = Integer.parseInt(group2);
                            String group3 = matcher.group(3);
                            if (group3 != null) {
                                int parseInt3 = Integer.parseInt(group3);
                                if (matcher.group(4) != null) {
                                    str2 = matcher.group(4);
                                } else {
                                    str2 = "";
                                }
                                String description = str2;
                                m.d(description, "description");
                                return new k(parseInt, parseInt2, parseInt3, description, null);
                            }
                        }
                    }
                }
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    static final class b extends n implements id.a {
        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final BigInteger invoke() {
            return BigInteger.valueOf(k.this.i()).shiftLeft(32).or(BigInteger.valueOf(k.this.j())).shiftLeft(32).or(BigInteger.valueOf(k.this.l()));
        }
    }

    static {
        k kVar = new k(1, 0, 0, "");
        f27976i = kVar;
        f27977j = kVar;
    }

    public /* synthetic */ k(int i10, int i11, int i12, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, str);
    }

    private final BigInteger f() {
        Object value = this.f27982e.getValue();
        m.d(value, "<get-bigInteger>(...)");
        return (BigInteger) value;
    }

    @Override // java.lang.Comparable
    /* renamed from: b */
    public int compareTo(k other) {
        m.e(other, "other");
        return f().compareTo(other.f());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f27978a != kVar.f27978a || this.f27979b != kVar.f27979b || this.f27980c != kVar.f27980c) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((527 + this.f27978a) * 31) + this.f27979b) * 31) + this.f27980c;
    }

    public final int i() {
        return this.f27978a;
    }

    public final int j() {
        return this.f27979b;
    }

    public final int l() {
        return this.f27980c;
    }

    public String toString() {
        boolean b02;
        String str;
        b02 = b0.b0(this.f27981d);
        if (!b02) {
            str = '-' + this.f27981d;
        } else {
            str = "";
        }
        return this.f27978a + '.' + this.f27979b + '.' + this.f27980c + str;
    }

    private k(int i10, int i11, int i12, String str) {
        xc.d a10;
        this.f27978a = i10;
        this.f27979b = i11;
        this.f27980c = i12;
        this.f27981d = str;
        a10 = xc.f.a(new b());
        this.f27982e = a10;
    }
}
