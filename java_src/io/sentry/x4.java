package io.sentry;

import io.sentry.x4;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import org.apache.tika.mime.MimeTypes;
/* loaded from: classes2.dex */
public final class x4 {

    /* renamed from: d  reason: collision with root package name */
    private static final Charset f23916d = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final y4 f23917a;

    /* renamed from: b  reason: collision with root package name */
    private final Callable f23918b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f23919c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private byte[] f23920a;

        /* renamed from: b  reason: collision with root package name */
        private final Callable f23921b;

        public a(Callable callable) {
            this.f23921b = callable;
        }

        private static byte[] b(byte[] bArr) {
            return bArr != null ? bArr : new byte[0];
        }

        public byte[] a() {
            Callable callable;
            if (this.f23920a == null && (callable = this.f23921b) != null) {
                this.f23920a = (byte[]) callable.call();
            }
            return b(this.f23920a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x4(y4 y4Var, byte[] bArr) {
        this.f23917a = (y4) io.sentry.util.q.c(y4Var, "SentryEnvelopeItemHeader is required.");
        this.f23919c = bArr;
        this.f23918b = null;
    }

    public static x4 A(final u2 u2Var, final long j10, final y0 y0Var) {
        final File C = u2Var.C();
        final a aVar = new a(new Callable() { // from class: io.sentry.l4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] U;
                U = x4.U(C, j10, u2Var, y0Var);
                return U;
            }
        });
        return new x4(new y4(i5.Profile, new Callable() { // from class: io.sentry.m4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer V;
                V = x4.V(x4.a.this);
                return V;
            }
        }, "application-json", C.getName()), new Callable() { // from class: io.sentry.o4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = x4.a.this.a();
                return a10;
            }
        });
    }

    public static x4 B(final y0 y0Var, final ILogger iLogger, final t5 t5Var, final z2 z2Var, final boolean z10) {
        final File h02 = t5Var.h0();
        final a aVar = new a(new Callable() { // from class: io.sentry.t4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] X;
                X = x4.X(y0.this, t5Var, z2Var, h02, iLogger, z10);
                return X;
            }
        });
        return new x4(new y4(i5.ReplayVideo, new Callable() { // from class: io.sentry.u4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer Y;
                Y = x4.Y(x4.a.this);
                return Y;
            }
        }, null, null), new Callable() { // from class: io.sentry.v4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = x4.a.this.a();
                return a10;
            }
        });
    }

    public static x4 C(final y0 y0Var, final f6 f6Var) {
        io.sentry.util.q.c(y0Var, "ISerializer is required.");
        io.sentry.util.q.c(f6Var, "Session is required.");
        final a aVar = new a(new Callable() { // from class: io.sentry.c4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a02;
                a02 = x4.a0(y0.this, f6Var);
                return a02;
            }
        });
        return new x4(new y4(i5.Session, new Callable() { // from class: io.sentry.n4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer b02;
                b02 = x4.b0(x4.a.this);
                return b02;
            }
        }, "application/json", null), new Callable() { // from class: io.sentry.p4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = x4.a.this.a();
                return a10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] I(b bVar, long j10, y0 y0Var, ILogger iLogger) {
        if (bVar.e() != null) {
            byte[] e10 = bVar.e();
            v(e10.length, j10, bVar.g());
            return e10;
        }
        if (bVar.i() != null) {
            byte[] b10 = io.sentry.util.l.b(y0Var, iLogger, bVar.i());
            if (b10 != null) {
                v(b10.length, j10, bVar.g());
                return b10;
            }
        } else if (bVar.h() != null) {
            return io.sentry.util.e.b(bVar.h(), j10);
        }
        throw new io.sentry.exception.b(String.format("Couldn't attach the attachment %s.\nPlease check that either bytes, serializable or a path is set.", bVar.g()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer J(a aVar) {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] L(y0 y0Var, io.sentry.clientreport.c cVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f23916d));
            y0Var.a(cVar, bufferedWriter);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bufferedWriter.close();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer M(a aVar) {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] O(y0 y0Var, t3 t3Var) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f23916d));
            y0Var.a(t3Var, bufferedWriter);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bufferedWriter.close();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer P(a aVar) {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer S(a aVar) {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] U(File file, long j10, u2 u2Var, y0 y0Var) {
        if (file.exists()) {
            String c10 = io.sentry.vendor.a.c(io.sentry.util.e.b(file.getPath(), j10), 3);
            if (!c10.isEmpty()) {
                u2Var.G(c10);
                u2Var.F();
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f23916d));
                            y0Var.a(u2Var, bufferedWriter);
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            bufferedWriter.close();
                            byteArrayOutputStream.close();
                            return byteArray;
                        } catch (Throwable th) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IOException e10) {
                        throw new io.sentry.exception.b(String.format("Failed to serialize profiling trace data\n%s", e10.getMessage()));
                    }
                } finally {
                    file.delete();
                }
            }
            throw new io.sentry.exception.b("Profiling trace file is empty");
        }
        throw new io.sentry.exception.b(String.format("Dropping profiling trace data, because the file '%s' doesn't exists", file.getName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer V(a aVar) {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] X(y0 y0Var, t5 t5Var, z2 z2Var, File file, ILogger iLogger, boolean z10) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f23916d));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            y0Var.a(t5Var, bufferedWriter);
            linkedHashMap.put(i5.ReplayEvent.getItemType(), byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.reset();
            if (z2Var != null) {
                y0Var.a(z2Var, bufferedWriter);
                linkedHashMap.put(i5.ReplayRecording.getItemType(), byteArrayOutputStream.toByteArray());
                byteArrayOutputStream.reset();
            }
            if (file != null && file.exists()) {
                byte[] b10 = io.sentry.util.e.b(file.getPath(), 10485760L);
                if (b10.length > 0) {
                    linkedHashMap.put(i5.ReplayVideo.getItemType(), b10);
                }
            }
            byte[] d02 = d0(linkedHashMap);
            bufferedWriter.close();
            byteArrayOutputStream.close();
            return d02;
        } catch (Throwable th) {
            try {
                iLogger.b(j5.ERROR, "Could not serialize replay recording", th);
                if (file != null) {
                    if (z10) {
                        io.sentry.util.e.a(file.getParentFile());
                        return null;
                    }
                    file.delete();
                    return null;
                }
                return null;
            } finally {
                if (file != null) {
                    if (z10) {
                        io.sentry.util.e.a(file.getParentFile());
                    } else {
                        file.delete();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer Y(a aVar) {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] a0(y0 y0Var, f6 f6Var) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f23916d));
            y0Var.a(f6Var, bufferedWriter);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bufferedWriter.close();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer b0(a aVar) {
        return Integer.valueOf(aVar.a().length);
    }

    private static byte[] d0(Map map) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write((byte) (map.size() | 128));
            for (Map.Entry entry : map.entrySet()) {
                byte[] bytes = ((String) entry.getKey()).getBytes(f23916d);
                int length = bytes.length;
                byteArrayOutputStream.write(-39);
                byteArrayOutputStream.write((byte) length);
                byteArrayOutputStream.write(bytes);
                byte[] bArr = (byte[]) entry.getValue();
                int length2 = bArr.length;
                byteArrayOutputStream.write(-58);
                byteArrayOutputStream.write(ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(length2).array());
                byteArrayOutputStream.write(bArr);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void v(long j10, long j11, String str) {
        if (j10 <= j11) {
            return;
        }
        throw new io.sentry.exception.b(String.format("Dropping attachment with filename '%s', because the size of the passed bytes with %d bytes is bigger than the maximum allowed attachment size of %d bytes.", str, Long.valueOf(j10), Long.valueOf(j11)));
    }

    public static x4 w(final y0 y0Var, final ILogger iLogger, final b bVar, final long j10) {
        final a aVar = new a(new Callable() { // from class: io.sentry.f4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] I;
                I = x4.I(b.this, j10, y0Var, iLogger);
                return I;
            }
        });
        return new x4(new y4(i5.Attachment, new Callable() { // from class: io.sentry.g4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer J;
                J = x4.J(x4.a.this);
                return J;
            }
        }, bVar.f(), bVar.g(), bVar.d()), new Callable() { // from class: io.sentry.h4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = x4.a.this.a();
                return a10;
            }
        });
    }

    public static x4 x(final y0 y0Var, final io.sentry.clientreport.c cVar) {
        io.sentry.util.q.c(y0Var, "ISerializer is required.");
        io.sentry.util.q.c(cVar, "ClientReport is required.");
        final a aVar = new a(new Callable() { // from class: io.sentry.i4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] L;
                L = x4.L(y0.this, cVar);
                return L;
            }
        });
        return new x4(new y4(i5.resolve(cVar), new Callable() { // from class: io.sentry.j4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer M;
                M = x4.M(x4.a.this);
                return M;
            }
        }, "application/json", null), new Callable() { // from class: io.sentry.k4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = x4.a.this.a();
                return a10;
            }
        });
    }

    public static x4 y(final y0 y0Var, final t3 t3Var) {
        io.sentry.util.q.c(y0Var, "ISerializer is required.");
        io.sentry.util.q.c(t3Var, "SentryEvent is required.");
        final a aVar = new a(new Callable() { // from class: io.sentry.w4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] O;
                O = x4.O(y0.this, t3Var);
                return O;
            }
        });
        return new x4(new y4(i5.resolve(t3Var), new Callable() { // from class: io.sentry.d4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer P;
                P = x4.P(x4.a.this);
                return P;
            }
        }, "application/json", null), new Callable() { // from class: io.sentry.e4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = x4.a.this.a();
                return a10;
            }
        });
    }

    public static x4 z(final io.sentry.metrics.a aVar) {
        final a aVar2 = new a(new Callable() { // from class: io.sentry.q4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = io.sentry.metrics.a.this.a();
                return a10;
            }
        });
        return new x4(new y4(i5.Statsd, new Callable() { // from class: io.sentry.r4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer S;
                S = x4.S(x4.a.this);
                return S;
            }
        }, MimeTypes.OCTET_STREAM, null), new Callable() { // from class: io.sentry.s4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = x4.a.this.a();
                return a10;
            }
        });
    }

    public io.sentry.clientreport.c D(y0 y0Var) {
        y4 y4Var = this.f23917a;
        if (y4Var != null && y4Var.b() == i5.ClientReport) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(E()), f23916d));
            try {
                io.sentry.clientreport.c cVar = (io.sentry.clientreport.c) y0Var.c(bufferedReader, io.sentry.clientreport.c.class);
                bufferedReader.close();
                return cVar;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return null;
    }

    public byte[] E() {
        Callable callable;
        if (this.f23919c == null && (callable = this.f23918b) != null) {
            this.f23919c = (byte[]) callable.call();
        }
        return this.f23919c;
    }

    public z4 F(y0 y0Var) {
        y4 y4Var = this.f23917a;
        if (y4Var != null && y4Var.b() == i5.Event) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(E()), f23916d));
            try {
                z4 z4Var = (z4) y0Var.c(bufferedReader, z4.class);
                bufferedReader.close();
                return z4Var;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return null;
    }

    public y4 G() {
        return this.f23917a;
    }

    public io.sentry.protocol.y H(y0 y0Var) {
        y4 y4Var = this.f23917a;
        if (y4Var != null && y4Var.b() == i5.Transaction) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(E()), f23916d));
            try {
                io.sentry.protocol.y yVar = (io.sentry.protocol.y) y0Var.c(bufferedReader, io.sentry.protocol.y.class);
                bufferedReader.close();
                return yVar;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return null;
    }

    x4(y4 y4Var, Callable callable) {
        this.f23917a = (y4) io.sentry.util.q.c(y4Var, "SentryEnvelopeItemHeader is required.");
        this.f23918b = (Callable) io.sentry.util.q.c(callable, "DataFactory is required.");
        this.f23919c = null;
    }
}
