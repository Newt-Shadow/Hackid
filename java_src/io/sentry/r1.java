package io.sentry;

import io.sentry.b4;
import io.sentry.clientreport.c;
import io.sentry.d7;
import io.sentry.e;
import io.sentry.f6;
import io.sentry.i5;
import io.sentry.j5;
import io.sentry.k5;
import io.sentry.l6;
import io.sentry.n6;
import io.sentry.p6;
import io.sentry.profilemeasurements.a;
import io.sentry.profilemeasurements.b;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.a;
import io.sentry.protocol.b;
import io.sentry.protocol.b0;
import io.sentry.protocol.c;
import io.sentry.protocol.c0;
import io.sentry.protocol.d;
import io.sentry.protocol.d0;
import io.sentry.protocol.e;
import io.sentry.protocol.f;
import io.sentry.protocol.g;
import io.sentry.protocol.h;
import io.sentry.protocol.i;
import io.sentry.protocol.j;
import io.sentry.protocol.k;
import io.sentry.protocol.l;
import io.sentry.protocol.m;
import io.sentry.protocol.o;
import io.sentry.protocol.p;
import io.sentry.protocol.q;
import io.sentry.protocol.s;
import io.sentry.protocol.t;
import io.sentry.protocol.u;
import io.sentry.protocol.v;
import io.sentry.protocol.w;
import io.sentry.protocol.x;
import io.sentry.protocol.y;
import io.sentry.r3;
import io.sentry.rrweb.a;
import io.sentry.rrweb.c;
import io.sentry.rrweb.e;
import io.sentry.rrweb.f;
import io.sentry.rrweb.g;
import io.sentry.rrweb.i;
import io.sentry.rrweb.j;
import io.sentry.t5;
import io.sentry.u2;
import io.sentry.v2;
import io.sentry.y4;
import io.sentry.z2;
import io.sentry.z4;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class r1 implements y0 {

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f23549c = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final s5 f23550a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f23551b;

    public r1(s5 s5Var) {
        this.f23550a = s5Var;
        HashMap hashMap = new HashMap();
        this.f23551b = hashMap;
        hashMap.put(io.sentry.protocol.a.class, new a.C0209a());
        hashMap.put(e.class, new e.a());
        hashMap.put(io.sentry.protocol.b.class, new b.a());
        hashMap.put(io.sentry.protocol.c.class, new c.a());
        hashMap.put(DebugImage.class, new DebugImage.a());
        hashMap.put(io.sentry.protocol.d.class, new d.a());
        hashMap.put(io.sentry.protocol.e.class, new e.a());
        hashMap.put(e.b.class, new e.b.a());
        hashMap.put(io.sentry.protocol.g.class, new g.a());
        hashMap.put(io.sentry.protocol.h.class, new h.a());
        hashMap.put(io.sentry.protocol.i.class, new i.a());
        hashMap.put(io.sentry.protocol.j.class, new j.a());
        hashMap.put(io.sentry.protocol.k.class, new k.a());
        hashMap.put(io.sentry.protocol.l.class, new l.a());
        hashMap.put(u2.class, new u2.b());
        hashMap.put(v2.class, new v2.a());
        hashMap.put(io.sentry.profilemeasurements.a.class, new a.C0208a());
        hashMap.put(io.sentry.profilemeasurements.b.class, new b.a());
        hashMap.put(io.sentry.protocol.m.class, new m.a());
        hashMap.put(z2.class, new z2.b());
        hashMap.put(io.sentry.rrweb.a.class, new a.C0210a());
        hashMap.put(io.sentry.rrweb.c.class, new c.a());
        hashMap.put(io.sentry.rrweb.e.class, new e.a());
        hashMap.put(io.sentry.rrweb.f.class, new f.a());
        hashMap.put(io.sentry.rrweb.g.class, new g.a());
        hashMap.put(io.sentry.rrweb.i.class, new i.a());
        hashMap.put(io.sentry.rrweb.j.class, new j.a());
        hashMap.put(io.sentry.protocol.o.class, new o.a());
        hashMap.put(io.sentry.protocol.p.class, new p.a());
        hashMap.put(b4.class, new b4.a());
        hashMap.put(y4.class, new y4.a());
        hashMap.put(z4.class, new z4.a());
        hashMap.put(io.sentry.protocol.q.class, new q.a());
        hashMap.put(i5.class, new i5.a());
        hashMap.put(j5.class, new j5.a());
        hashMap.put(k5.class, new k5.a());
        hashMap.put(io.sentry.protocol.s.class, new s.a());
        hashMap.put(io.sentry.protocol.t.class, new t.a());
        hashMap.put(t5.class, new t5.a());
        hashMap.put(io.sentry.protocol.u.class, new u.a());
        hashMap.put(io.sentry.protocol.v.class, new v.a());
        hashMap.put(io.sentry.protocol.w.class, new w.a());
        hashMap.put(r3.class, new r3.a());
        hashMap.put(io.sentry.protocol.x.class, new x.a());
        hashMap.put(io.sentry.protocol.y.class, new y.a());
        hashMap.put(f6.class, new f6.a());
        hashMap.put(l6.class, new l6.a());
        hashMap.put(n6.class, new n6.a());
        hashMap.put(p6.class, new p6.a());
        hashMap.put(io.sentry.protocol.b0.class, new b0.a());
        hashMap.put(io.sentry.protocol.f.class, new f.a());
        hashMap.put(d7.class, new d7.a());
        hashMap.put(io.sentry.clientreport.c.class, new c.a());
        hashMap.put(io.sentry.protocol.d0.class, new d0.a());
        hashMap.put(io.sentry.protocol.c0.class, new c0.a());
    }

    private boolean g(Class cls) {
        if (!cls.isArray() && !Collection.class.isAssignableFrom(cls) && !String.class.isAssignableFrom(cls) && !Map.class.isAssignableFrom(cls)) {
            return false;
        }
        return true;
    }

    private String h(Object obj, boolean z10) {
        StringWriter stringWriter = new StringWriter();
        o1 o1Var = new o1(stringWriter, this.f23550a.getMaxDepth());
        if (z10) {
            o1Var.v("\t");
        }
        o1Var.g(this.f23550a.getLogger(), obj);
        return stringWriter.toString();
    }

    @Override // io.sentry.y0
    public void a(Object obj, Writer writer) {
        io.sentry.util.q.c(obj, "The entity is required.");
        io.sentry.util.q.c(writer, "The Writer object is required.");
        ILogger logger = this.f23550a.getLogger();
        j5 j5Var = j5.DEBUG;
        if (logger.d(j5Var)) {
            this.f23550a.getLogger().c(j5Var, "Serializing object: %s", h(obj, this.f23550a.isEnablePrettySerializationOutput()));
        }
        new o1(writer, this.f23550a.getMaxDepth()).g(this.f23550a.getLogger(), obj);
        writer.flush();
    }

    @Override // io.sentry.y0
    public void b(a4 a4Var, OutputStream outputStream) {
        io.sentry.util.q.c(a4Var, "The SentryEnvelope object is required.");
        io.sentry.util.q.c(outputStream, "The Stream object is required.");
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new BufferedOutputStream(outputStream), f23549c));
        try {
            a4Var.b().serialize(new o1(bufferedWriter, this.f23550a.getMaxDepth()), this.f23550a.getLogger());
            bufferedWriter.write("\n");
            for (x4 x4Var : a4Var.c()) {
                try {
                    byte[] E = x4Var.E();
                    x4Var.G().serialize(new o1(bufferedWriter, this.f23550a.getMaxDepth()), this.f23550a.getLogger());
                    bufferedWriter.write("\n");
                    bufferedWriter.flush();
                    outputStream.write(E);
                    bufferedWriter.write("\n");
                } catch (Exception e10) {
                    this.f23550a.getLogger().b(j5.ERROR, "Failed to create envelope item. Dropping it.", e10);
                }
            }
        } finally {
            bufferedWriter.flush();
        }
    }

    @Override // io.sentry.y0
    public Object c(Reader reader, Class cls) {
        try {
            m1 m1Var = new m1(reader);
            g1 g1Var = (g1) this.f23551b.get(cls);
            if (g1Var != null) {
                Object cast = cls.cast(g1Var.a(m1Var, this.f23550a.getLogger()));
                m1Var.close();
                return cast;
            } else if (g(cls)) {
                Object B0 = m1Var.B0();
                m1Var.close();
                return B0;
            } else {
                m1Var.close();
                return null;
            }
        } catch (Exception e10) {
            this.f23550a.getLogger().b(j5.ERROR, "Error when deserializing", e10);
            return null;
        }
    }

    @Override // io.sentry.y0
    public a4 d(InputStream inputStream) {
        io.sentry.util.q.c(inputStream, "The InputStream object is required.");
        try {
            return this.f23550a.getEnvelopeReader().a(inputStream);
        } catch (IOException e10) {
            this.f23550a.getLogger().b(j5.ERROR, "Error deserializing envelope.", e10);
            return null;
        }
    }

    @Override // io.sentry.y0
    public Object e(Reader reader, Class cls, g1 g1Var) {
        try {
            m1 m1Var = new m1(reader);
            if (Collection.class.isAssignableFrom(cls)) {
                if (g1Var == null) {
                    Object B0 = m1Var.B0();
                    m1Var.close();
                    return B0;
                }
                List M0 = m1Var.M0(this.f23550a.getLogger(), g1Var);
                m1Var.close();
                return M0;
            }
            Object B02 = m1Var.B0();
            m1Var.close();
            return B02;
        } catch (Throwable th) {
            this.f23550a.getLogger().b(j5.ERROR, "Error when deserializing", th);
            return null;
        }
    }

    @Override // io.sentry.y0
    public String f(Map map) {
        return h(map, false);
    }
}
