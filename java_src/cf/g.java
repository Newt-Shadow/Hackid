package cf;

import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    public static final char f5200a = File.separatorChar;

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f5201b = new byte[0];

    /* renamed from: c  reason: collision with root package name */
    public static final String f5202c = System.lineSeparator();

    /* renamed from: d  reason: collision with root package name */
    public static final String f5203d = h.LF.b();

    /* renamed from: e  reason: collision with root package name */
    public static final String f5204e = h.CRLF.b();

    /* renamed from: f  reason: collision with root package name */
    private static final ThreadLocal f5205f;

    /* renamed from: g  reason: collision with root package name */
    private static final byte[] f5206g;

    /* renamed from: h  reason: collision with root package name */
    private static final ThreadLocal f5207h;

    /* renamed from: i  reason: collision with root package name */
    private static final char[] f5208i;

    static {
        final Supplier supplier = new Supplier() { // from class: cf.d
            @Override // java.util.function.Supplier
            public final Object get() {
                return g.d();
            }
        };
        f5205f = new ThreadLocal() { // from class: cf.f
            @Override // java.lang.ThreadLocal
            protected /* synthetic */ Object initialValue() {
                return supplier.get();
            }
        };
        f5206g = d();
        final Supplier supplier2 = new Supplier() { // from class: cf.e
            @Override // java.util.function.Supplier
            public final Object get() {
                char[] f10;
                f10 = g.f();
                return f10;
            }
        };
        f5207h = new ThreadLocal() { // from class: cf.f
            @Override // java.lang.ThreadLocal
            protected /* synthetic */ Object initialValue() {
                return supplier2.get();
            }
        };
        f5208i = f();
    }

    public static byte[] d() {
        return e(8192);
    }

    public static byte[] e(int i10) {
        return new byte[i10];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static char[] f() {
        return g(8192);
    }

    private static char[] g(int i10) {
        return new char[i10];
    }

    private static void h(Closeable closeable) {
        j(closeable, null);
    }

    public static void i(Closeable closeable) {
        j(closeable, null);
    }

    public static void j(Closeable closeable, Consumer consumer) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e10) {
                if (consumer != null) {
                    consumer.accept(e10);
                }
            }
        }
    }

    public static void k(InputStream inputStream) {
        h(inputStream);
    }

    public static void l(OutputStream outputStream) {
        h(outputStream);
    }

    public static void m(Reader reader) {
        h(reader);
    }

    public static int n(InputStream inputStream, OutputStream outputStream) {
        long p10 = p(inputStream, outputStream);
        if (p10 > 2147483647L) {
            return -1;
        }
        return (int) p10;
    }

    public static long o(InputStream inputStream, OutputStream outputStream, int i10) {
        return q(inputStream, outputStream, e(i10));
    }

    public static long p(InputStream inputStream, OutputStream outputStream) {
        return o(inputStream, outputStream, 8192);
    }

    public static long q(InputStream inputStream, OutputStream outputStream, byte[] bArr) {
        Objects.requireNonNull(inputStream, "inputStream");
        Objects.requireNonNull(outputStream, "outputStream");
        long j10 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                outputStream.write(bArr, 0, read);
                j10 += read;
            } else {
                return j10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void r(gf.d dVar) {
        throw new IllegalArgumentException(String.format("Cannot read more than %,d into a byte array", Integer.MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ OutputStream s(gf.e eVar, gf.d dVar) {
        return eVar;
    }

    public static int t(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public static byte[] u(InputStream inputStream) {
        final gf.e l10 = gf.e.j().l();
        try {
            gf.d dVar = new gf.d(Integer.MAX_VALUE, new ff.c() { // from class: cf.b
                @Override // ff.c
                public final void accept(Object obj) {
                    g.r((gf.d) obj);
                }
            }, new ff.d() { // from class: cf.c
                @Override // ff.d
                public final Object apply(Object obj) {
                    OutputStream s10;
                    s10 = g.s(gf.e.this, (gf.d) obj);
                    return s10;
                }
            });
            n(inputStream, dVar);
            byte[] b10 = l10.b();
            dVar.close();
            l10.close();
            return b10;
        } catch (Throwable th) {
            if (l10 != null) {
                try {
                    l10.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
