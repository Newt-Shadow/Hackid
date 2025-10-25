package x4;

import java.io.IOException;
/* loaded from: classes.dex */
public interface d0 {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f32287a;

        /* renamed from: b  reason: collision with root package name */
        public final int f32288b;

        /* renamed from: c  reason: collision with root package name */
        public final int f32289c;

        /* renamed from: d  reason: collision with root package name */
        public final int f32290d;

        public a(int i10, int i11, int i12, int i13) {
            this.f32287a = i10;
            this.f32288b = i11;
            this.f32289c = i12;
            this.f32290d = i13;
        }

        public boolean a(int i10) {
            if (i10 == 1) {
                if (this.f32287a - this.f32288b <= 1) {
                    return false;
                }
            } else if (this.f32289c - this.f32290d <= 1) {
                return false;
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f32291a;

        /* renamed from: b  reason: collision with root package name */
        public final long f32292b;

        public b(int i10, long j10) {
            boolean z10;
            if (j10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.a(z10);
            this.f32291a = i10;
            this.f32292b = j10;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final d4.n f32293a;

        /* renamed from: b  reason: collision with root package name */
        public final d4.q f32294b;

        /* renamed from: c  reason: collision with root package name */
        public final IOException f32295c;

        /* renamed from: d  reason: collision with root package name */
        public final int f32296d;

        public c(d4.n nVar, d4.q qVar, IOException iOException, int i10) {
            this.f32293a = nVar;
            this.f32294b = qVar;
            this.f32295c = iOException;
            this.f32296d = i10;
        }
    }

    long a(c cVar);

    b b(a aVar, c cVar);

    default void c(long j10) {
    }

    int d(int i10);
}
