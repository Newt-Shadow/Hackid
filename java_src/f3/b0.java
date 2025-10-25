package f3;

import c3.t3;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public interface b0 {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f15610a;

        /* renamed from: b  reason: collision with root package name */
        private final String f15611b;

        /* renamed from: c  reason: collision with root package name */
        private final int f15612c;

        public a(byte[] bArr, String str, int i10) {
            this.f15610a = bArr;
            this.f15611b = str;
            this.f15612c = i10;
        }

        public byte[] a() {
            return this.f15610a;
        }

        public String b() {
            return this.f15611b;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(b0 b0Var, byte[] bArr, int i10, int i11, byte[] bArr2);
    }

    /* loaded from: classes.dex */
    public interface c {
        b0 a(UUID uuid);
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f15613a;

        /* renamed from: b  reason: collision with root package name */
        private final String f15614b;

        public d(byte[] bArr, String str) {
            this.f15613a = bArr;
            this.f15614b = str;
        }

        public byte[] a() {
            return this.f15613a;
        }

        public String b() {
            return this.f15614b;
        }
    }

    Map a(byte[] bArr);

    void b(b bVar);

    d c();

    e3.b d(byte[] bArr);

    byte[] e();

    boolean f(byte[] bArr, String str);

    void g(byte[] bArr, byte[] bArr2);

    void h(byte[] bArr);

    byte[] i(byte[] bArr, byte[] bArr2);

    default void j(byte[] bArr, t3 t3Var) {
    }

    void k(byte[] bArr);

    a l(byte[] bArr, List list, int i10, HashMap hashMap);

    int m();

    void release();
}
