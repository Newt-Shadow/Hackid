package g8;

import g8.d;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f implements d8.e {

    /* renamed from: f  reason: collision with root package name */
    private static final Charset f16308f = Charset.forName("UTF-8");

    /* renamed from: g  reason: collision with root package name */
    private static final d8.c f16309g = d8.c.a("key").b(g8.a.b().c(1).a()).a();

    /* renamed from: h  reason: collision with root package name */
    private static final d8.c f16310h = d8.c.a("value").b(g8.a.b().c(2).a()).a();

    /* renamed from: i  reason: collision with root package name */
    private static final d8.d f16311i = new d8.d() { // from class: g8.e
        @Override // d8.d
        public final void a(Object obj, Object obj2) {
            f.w((Map.Entry) obj, (d8.e) obj2);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f16312a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f16313b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f16314c;

    /* renamed from: d  reason: collision with root package name */
    private final d8.d f16315d;

    /* renamed from: e  reason: collision with root package name */
    private final i f16316e = new i(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16317a;

        static {
            int[] iArr = new int[d.a.values().length];
            f16317a = iArr;
            try {
                iArr[d.a.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16317a[d.a.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16317a[d.a.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(OutputStream outputStream, Map map, Map map2, d8.d dVar) {
        this.f16312a = outputStream;
        this.f16313b = map;
        this.f16314c = map2;
        this.f16315d = dVar;
    }

    private static ByteBuffer p(int i10) {
        return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
    }

    private long q(d8.d dVar, Object obj) {
        b bVar = new b();
        try {
            OutputStream outputStream = this.f16312a;
            this.f16312a = bVar;
            dVar.a(obj, this);
            this.f16312a = outputStream;
            long a10 = bVar.a();
            bVar.close();
            return a10;
        } catch (Throwable th) {
            try {
                bVar.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private f r(d8.d dVar, d8.c cVar, Object obj, boolean z10) {
        long q10 = q(dVar, obj);
        if (z10 && q10 == 0) {
            return this;
        }
        x((v(cVar) << 3) | 2);
        y(q10);
        dVar.a(obj, this);
        return this;
    }

    private f s(d8.f fVar, d8.c cVar, Object obj, boolean z10) {
        this.f16316e.b(cVar, z10);
        fVar.a(obj, this.f16316e);
        return this;
    }

    private static d u(d8.c cVar) {
        d dVar = (d) cVar.c(d.class);
        if (dVar != null) {
            return dVar;
        }
        throw new d8.b("Field has no @Protobuf config");
    }

    private static int v(d8.c cVar) {
        d dVar = (d) cVar.c(d.class);
        if (dVar != null) {
            return dVar.tag();
        }
        throw new d8.b("Field has no @Protobuf config");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w(Map.Entry entry, d8.e eVar) {
        eVar.c(f16309g, entry.getKey());
        eVar.c(f16310h, entry.getValue());
    }

    private void x(int i10) {
        while ((i10 & (-128)) != 0) {
            this.f16312a.write((i10 & 127) | 128);
            i10 >>>= 7;
        }
        this.f16312a.write(i10 & 127);
    }

    private void y(long j10) {
        while (((-128) & j10) != 0) {
            this.f16312a.write((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.f16312a.write(((int) j10) & 127);
    }

    @Override // d8.e
    public d8.e c(d8.c cVar, Object obj) {
        return i(cVar, obj, true);
    }

    d8.e e(d8.c cVar, double d10, boolean z10) {
        if (z10 && d10 == 0.0d) {
            return this;
        }
        x((v(cVar) << 3) | 1);
        this.f16312a.write(p(8).putDouble(d10).array());
        return this;
    }

    @Override // d8.e
    public d8.e g(d8.c cVar, double d10) {
        return e(cVar, d10, true);
    }

    d8.e h(d8.c cVar, float f10, boolean z10) {
        if (z10 && f10 == 0.0f) {
            return this;
        }
        x((v(cVar) << 3) | 5);
        this.f16312a.write(p(4).putFloat(f10).array());
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d8.e i(d8.c cVar, Object obj, boolean z10) {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            x((v(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f16308f);
            x(bytes.length);
            this.f16312a.write(bytes);
            return this;
        } else if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                i(cVar, obj2, false);
            }
            return this;
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                r(f16311i, cVar, entry, false);
            }
            return this;
        } else if (obj instanceof Double) {
            return e(cVar, ((Double) obj).doubleValue(), z10);
        } else {
            if (obj instanceof Float) {
                return h(cVar, ((Float) obj).floatValue(), z10);
            }
            if (obj instanceof Number) {
                return m(cVar, ((Number) obj).longValue(), z10);
            }
            if (obj instanceof Boolean) {
                return o(cVar, ((Boolean) obj).booleanValue(), z10);
            }
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                if (z10 && bArr.length == 0) {
                    return this;
                }
                x((v(cVar) << 3) | 2);
                x(bArr.length);
                this.f16312a.write(bArr);
                return this;
            }
            d8.d dVar = (d8.d) this.f16313b.get(obj.getClass());
            if (dVar != null) {
                return r(dVar, cVar, obj, z10);
            }
            d8.f fVar = (d8.f) this.f16314c.get(obj.getClass());
            if (fVar != null) {
                return s(fVar, cVar, obj, z10);
            }
            if (obj instanceof c) {
                return f(cVar, ((c) obj).c());
            }
            if (obj instanceof Enum) {
                return f(cVar, ((Enum) obj).ordinal());
            }
            return r(this.f16315d, cVar, obj, z10);
        }
    }

    @Override // d8.e
    /* renamed from: j */
    public f f(d8.c cVar, int i10) {
        return k(cVar, i10, true);
    }

    f k(d8.c cVar, int i10, boolean z10) {
        if (z10 && i10 == 0) {
            return this;
        }
        d u10 = u(cVar);
        int i11 = a.f16317a[u10.intEncoding().ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3) {
                    x((u10.tag() << 3) | 5);
                    this.f16312a.write(p(4).putInt(i10).array());
                }
            } else {
                x(u10.tag() << 3);
                x((i10 << 1) ^ (i10 >> 31));
            }
        } else {
            x(u10.tag() << 3);
            x(i10);
        }
        return this;
    }

    @Override // d8.e
    /* renamed from: l */
    public f b(d8.c cVar, long j10) {
        return m(cVar, j10, true);
    }

    f m(d8.c cVar, long j10, boolean z10) {
        if (z10 && j10 == 0) {
            return this;
        }
        d u10 = u(cVar);
        int i10 = a.f16317a[u10.intEncoding().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    x((u10.tag() << 3) | 1);
                    this.f16312a.write(p(8).putLong(j10).array());
                }
            } else {
                x(u10.tag() << 3);
                y((j10 >> 63) ^ (j10 << 1));
            }
        } else {
            x(u10.tag() << 3);
            y(j10);
        }
        return this;
    }

    @Override // d8.e
    /* renamed from: n */
    public f a(d8.c cVar, boolean z10) {
        return o(cVar, z10, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f o(d8.c cVar, boolean z10, boolean z11) {
        return k(cVar, z10 ? 1 : 0, z11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f t(Object obj) {
        if (obj == null) {
            return this;
        }
        d8.d dVar = (d8.d) this.f16313b.get(obj.getClass());
        if (dVar != null) {
            dVar.a(obj, this);
            return this;
        }
        throw new d8.b("No encoder for " + obj.getClass());
    }
}
