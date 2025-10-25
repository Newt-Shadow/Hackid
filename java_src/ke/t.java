package ke;

import ge.g;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private Object[] f24923a = new Object[8];

    /* renamed from: b  reason: collision with root package name */
    private int[] f24924b;

    /* renamed from: c  reason: collision with root package name */
    private int f24925c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f24926a = new a();

        private a() {
        }
    }

    public t() {
        int[] iArr = new int[8];
        for (int i10 = 0; i10 < 8; i10++) {
            iArr[i10] = -1;
        }
        this.f24924b = iArr;
        this.f24925c = -1;
    }

    private final void e() {
        int i10 = this.f24925c * 2;
        Object[] copyOf = Arrays.copyOf(this.f24923a, i10);
        kotlin.jvm.internal.m.d(copyOf, "copyOf(...)");
        this.f24923a = copyOf;
        int[] copyOf2 = Arrays.copyOf(this.f24924b, i10);
        kotlin.jvm.internal.m.d(copyOf2, "copyOf(...)");
        this.f24924b = copyOf2;
    }

    public final String a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("$");
        int i10 = this.f24925c + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            Object obj = this.f24923a[i11];
            if (obj instanceof ge.d) {
                ge.d dVar = (ge.d) obj;
                if (kotlin.jvm.internal.m.a(dVar.e(), g.b.f16421a)) {
                    if (this.f24924b[i11] != -1) {
                        sb2.append("[");
                        sb2.append(this.f24924b[i11]);
                        sb2.append("]");
                    }
                } else {
                    int i12 = this.f24924b[i11];
                    if (i12 >= 0) {
                        sb2.append(".");
                        sb2.append(dVar.g(i12));
                    }
                }
            } else if (obj != a.f24926a) {
                sb2.append("[");
                sb2.append("'");
                sb2.append(obj);
                sb2.append("'");
                sb2.append("]");
            }
        }
        String sb3 = sb2.toString();
        kotlin.jvm.internal.m.d(sb3, "toString(...)");
        return sb3;
    }

    public final void b() {
        int i10 = this.f24925c;
        int[] iArr = this.f24924b;
        if (iArr[i10] == -2) {
            iArr[i10] = -1;
            this.f24925c = i10 - 1;
        }
        int i11 = this.f24925c;
        if (i11 != -1) {
            this.f24925c = i11 - 1;
        }
    }

    public final void c(ge.d sd2) {
        kotlin.jvm.internal.m.e(sd2, "sd");
        int i10 = this.f24925c + 1;
        this.f24925c = i10;
        if (i10 == this.f24923a.length) {
            e();
        }
        this.f24923a[i10] = sd2;
    }

    public final void d() {
        int[] iArr = this.f24924b;
        int i10 = this.f24925c;
        if (iArr[i10] == -2) {
            this.f24923a[i10] = a.f24926a;
        }
    }

    public final void f(Object obj) {
        int[] iArr = this.f24924b;
        int i10 = this.f24925c;
        if (iArr[i10] != -2) {
            int i11 = i10 + 1;
            this.f24925c = i11;
            if (i11 == this.f24923a.length) {
                e();
            }
        }
        Object[] objArr = this.f24923a;
        int i12 = this.f24925c;
        objArr[i12] = obj;
        this.f24924b[i12] = -2;
    }

    public final void g(int i10) {
        this.f24924b[this.f24925c] = i10;
    }

    public String toString() {
        return a();
    }
}
