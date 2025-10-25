package d3;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public interface j {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f14542a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f14543e = new a(-1, -1, -1);

        /* renamed from: a  reason: collision with root package name */
        public final int f14544a;

        /* renamed from: b  reason: collision with root package name */
        public final int f14545b;

        /* renamed from: c  reason: collision with root package name */
        public final int f14546c;

        /* renamed from: d  reason: collision with root package name */
        public final int f14547d;

        public a(int i10, int i11, int i12) {
            int i13;
            this.f14544a = i10;
            this.f14545b = i11;
            this.f14546c = i12;
            if (y4.q0.t0(i12)) {
                i13 = y4.q0.d0(i12, i11);
            } else {
                i13 = -1;
            }
            this.f14547d = i13;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f14544a == aVar.f14544a && this.f14545b == aVar.f14545b && this.f14546c == aVar.f14546c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return n6.k.b(Integer.valueOf(this.f14544a), Integer.valueOf(this.f14545b), Integer.valueOf(this.f14546c));
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f14544a + ", channelCount=" + this.f14545b + ", encoding=" + this.f14546c + ']';
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends Exception {
        public b(a aVar) {
            super("Unhandled format: " + aVar);
        }
    }

    void a();

    void b(ByteBuffer byteBuffer);

    void c();

    boolean d();

    a e(a aVar);

    void flush();

    ByteBuffer getOutput();

    boolean isActive();
}
