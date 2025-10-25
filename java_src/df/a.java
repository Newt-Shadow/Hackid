package df;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.file.OpenOption;
import java.util.Objects;
/* loaded from: classes2.dex */
public abstract class a extends e {

    /* renamed from: a  reason: collision with root package name */
    final Object f15173a;

    /* renamed from: df.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0153a extends a {
        public C0153a(byte[] bArr) {
            super(bArr);
        }

        @Override // df.a
        public byte[] c() {
            return (byte[]) b();
        }

        @Override // df.a
        public InputStream d(OpenOption... openOptionArr) {
            return new ByteArrayInputStream((byte[]) this.f15173a);
        }
    }

    protected a(Object obj) {
        Objects.requireNonNull(obj, "origin");
        this.f15173a = obj;
    }

    private String e() {
        return getClass().getSimpleName();
    }

    public Object b() {
        return this.f15173a;
    }

    public abstract byte[] c();

    public abstract InputStream d(OpenOption... openOptionArr);

    public String toString() {
        return e() + "[" + this.f15173a.toString() + "]";
    }
}
