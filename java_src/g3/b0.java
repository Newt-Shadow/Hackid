package g3;

import b3.x1;
import java.util.Arrays;
/* loaded from: classes.dex */
public interface b0 {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f16145a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f16146b;

        /* renamed from: c  reason: collision with root package name */
        public final int f16147c;

        /* renamed from: d  reason: collision with root package name */
        public final int f16148d;

        public a(int i10, byte[] bArr, int i11, int i12) {
            this.f16145a = i10;
            this.f16146b = bArr;
            this.f16147c = i11;
            this.f16148d = i12;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f16145a == aVar.f16145a && this.f16147c == aVar.f16147c && this.f16148d == aVar.f16148d && Arrays.equals(this.f16146b, aVar.f16146b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.f16145a * 31) + Arrays.hashCode(this.f16146b)) * 31) + this.f16147c) * 31) + this.f16148d;
        }
    }

    void a(y4.e0 e0Var, int i10, int i11);

    default void b(y4.e0 e0Var, int i10) {
        a(e0Var, i10, 0);
    }

    void c(x1 x1Var);

    int d(x4.h hVar, int i10, boolean z10, int i11);

    default int e(x4.h hVar, int i10, boolean z10) {
        return d(hVar, i10, z10, 0);
    }

    void f(long j10, int i10, int i11, int i12, a aVar);
}
