package l3;

import java.util.List;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final long f25183a;

    /* renamed from: b  reason: collision with root package name */
    public final List f25184b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f25185a;

        /* renamed from: b  reason: collision with root package name */
        public final String f25186b;

        /* renamed from: c  reason: collision with root package name */
        public final long f25187c;

        /* renamed from: d  reason: collision with root package name */
        public final long f25188d;

        public a(String str, String str2, long j10, long j11) {
            this.f25185a = str;
            this.f25186b = str2;
            this.f25187c = j10;
            this.f25188d = j11;
        }
    }

    public b(long j10, List list) {
        this.f25183a = j10;
        this.f25184b = list;
    }

    public z3.b a(long j10) {
        long j11;
        if (this.f25184b.size() < 2) {
            return null;
        }
        long j12 = j10;
        long j13 = -1;
        long j14 = -1;
        long j15 = -1;
        long j16 = -1;
        boolean z10 = false;
        for (int size = this.f25184b.size() - 1; size >= 0; size--) {
            a aVar = (a) this.f25184b.get(size);
            boolean equals = "video/mp4".equals(aVar.f25185a) | z10;
            if (size == 0) {
                j12 -= aVar.f25188d;
                j11 = 0;
            } else {
                j11 = j12 - aVar.f25187c;
            }
            long j17 = j12;
            j12 = j11;
            if (equals && j12 != j17) {
                j16 = j17 - j12;
                j15 = j12;
                z10 = false;
            } else {
                z10 = equals;
            }
            if (size == 0) {
                j13 = j12;
                j14 = j17;
            }
        }
        if (j15 == -1 || j16 == -1 || j13 == -1 || j14 == -1) {
            return null;
        }
        return new z3.b(j13, j14, this.f25183a, j15, j16);
    }
}
