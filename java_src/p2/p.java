package p2;

import android.util.Base64;
import p2.d;
/* loaded from: classes.dex */
public abstract class p {

    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract p a();

        public abstract a b(String str);

        public abstract a c(byte[] bArr);

        public abstract a d(n2.f fVar);
    }

    public static a a() {
        return new d.b().d(n2.f.DEFAULT);
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract n2.f d();

    public boolean e() {
        if (c() != null) {
            return true;
        }
        return false;
    }

    public p f(n2.f fVar) {
        return a().b(b()).d(fVar).c(c()).a();
    }

    public final String toString() {
        String encodeToString;
        Object[] objArr = new Object[3];
        objArr[0] = b();
        objArr[1] = d();
        if (c() == null) {
            encodeToString = "";
        } else {
            encodeToString = Base64.encodeToString(c(), 2);
        }
        objArr[2] = encodeToString;
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }
}
