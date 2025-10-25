package o3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.KotlinVersion;
import y4.e0;
/* loaded from: classes.dex */
abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f27148a;

    /* renamed from: o3.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0269a extends a {

        /* renamed from: b  reason: collision with root package name */
        public final long f27149b;

        /* renamed from: c  reason: collision with root package name */
        public final List f27150c;

        /* renamed from: d  reason: collision with root package name */
        public final List f27151d;

        public C0269a(int i10, long j10) {
            super(i10);
            this.f27149b = j10;
            this.f27150c = new ArrayList();
            this.f27151d = new ArrayList();
        }

        public void d(C0269a c0269a) {
            this.f27151d.add(c0269a);
        }

        public void e(b bVar) {
            this.f27150c.add(bVar);
        }

        public C0269a f(int i10) {
            int size = this.f27151d.size();
            for (int i11 = 0; i11 < size; i11++) {
                C0269a c0269a = (C0269a) this.f27151d.get(i11);
                if (c0269a.f27148a == i10) {
                    return c0269a;
                }
            }
            return null;
        }

        public b g(int i10) {
            int size = this.f27150c.size();
            for (int i11 = 0; i11 < size; i11++) {
                b bVar = (b) this.f27150c.get(i11);
                if (bVar.f27148a == i10) {
                    return bVar;
                }
            }
            return null;
        }

        @Override // o3.a
        public String toString() {
            return a.a(this.f27148a) + " leaves: " + Arrays.toString(this.f27150c.toArray()) + " containers: " + Arrays.toString(this.f27151d.toArray());
        }
    }

    /* loaded from: classes.dex */
    static final class b extends a {

        /* renamed from: b  reason: collision with root package name */
        public final e0 f27152b;

        public b(int i10, e0 e0Var) {
            super(i10);
            this.f27152b = e0Var;
        }
    }

    public a(int i10) {
        this.f27148a = i10;
    }

    public static String a(int i10) {
        return "" + ((char) ((i10 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE)) + ((char) ((i10 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE)) + ((char) ((i10 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE)) + ((char) (i10 & KotlinVersion.MAX_COMPONENT_VALUE));
    }

    public static int b(int i10) {
        return i10 & 16777215;
    }

    public static int c(int i10) {
        return (i10 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE;
    }

    public String toString() {
        return a(this.f27148a);
    }
}
