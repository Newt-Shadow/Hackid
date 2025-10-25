package q3;

import android.util.SparseArray;
import java.util.Collections;
import java.util.List;
import y4.m0;
/* loaded from: classes.dex */
public interface i0 {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f28148a;

        /* renamed from: b  reason: collision with root package name */
        public final int f28149b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f28150c;

        public a(String str, int i10, byte[] bArr) {
            this.f28148a = str;
            this.f28149b = i10;
            this.f28150c = bArr;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f28151a;

        /* renamed from: b  reason: collision with root package name */
        public final String f28152b;

        /* renamed from: c  reason: collision with root package name */
        public final List f28153c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f28154d;

        public b(int i10, String str, List list, byte[] bArr) {
            List unmodifiableList;
            this.f28151a = i10;
            this.f28152b = str;
            if (list == null) {
                unmodifiableList = Collections.emptyList();
            } else {
                unmodifiableList = Collections.unmodifiableList(list);
            }
            this.f28153c = unmodifiableList;
            this.f28154d = bArr;
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        i0 a(int i10, b bVar);

        SparseArray b();
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f28155a;

        /* renamed from: b  reason: collision with root package name */
        private final int f28156b;

        /* renamed from: c  reason: collision with root package name */
        private final int f28157c;

        /* renamed from: d  reason: collision with root package name */
        private int f28158d;

        /* renamed from: e  reason: collision with root package name */
        private String f28159e;

        public d(int i10, int i11) {
            this(Integer.MIN_VALUE, i10, i11);
        }

        private void d() {
            if (this.f28158d != Integer.MIN_VALUE) {
                return;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        public void a() {
            int i10;
            int i11 = this.f28158d;
            if (i11 == Integer.MIN_VALUE) {
                i10 = this.f28156b;
            } else {
                i10 = i11 + this.f28157c;
            }
            this.f28158d = i10;
            this.f28159e = this.f28155a + this.f28158d;
        }

        public String b() {
            d();
            return this.f28159e;
        }

        public int c() {
            d();
            return this.f28158d;
        }

        public d(int i10, int i11, int i12) {
            String str;
            if (i10 != Integer.MIN_VALUE) {
                str = i10 + "/";
            } else {
                str = "";
            }
            this.f28155a = str;
            this.f28156b = i11;
            this.f28157c = i12;
            this.f28158d = Integer.MIN_VALUE;
            this.f28159e = "";
        }
    }

    void a(m0 m0Var, g3.m mVar, d dVar);

    void b(y4.e0 e0Var, int i10);

    void c();
}
