package s6;

import com.google.crypto.tink.internal.d;
import com.google.crypto.tink.shaded.protobuf.o0;
import e7.a0;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f29462a = Logger.getLogger(x.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicReference f29463b = new AtomicReference(new j());

    /* renamed from: c  reason: collision with root package name */
    private static final ConcurrentMap f29464c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    private static final ConcurrentMap f29465d = new ConcurrentHashMap();

    /* renamed from: e  reason: collision with root package name */
    private static final ConcurrentMap f29466e = new ConcurrentHashMap();

    /* renamed from: f  reason: collision with root package name */
    private static final ConcurrentMap f29467f = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.crypto.tink.internal.d f29468a;

        a(com.google.crypto.tink.internal.d dVar) {
            this.f29468a = dVar;
        }
    }

    /* loaded from: classes.dex */
    private interface b {
    }

    private static b a(com.google.crypto.tink.internal.d dVar) {
        return new a(dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
        if (((s6.j) s6.x.f29463b.get()).j(r3) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
        r4 = r4.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
        if (r4.hasNext() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
        r5 = (java.util.Map.Entry) r4.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
        if (s6.x.f29467f.containsKey(r5.getKey()) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0089, code lost:
        throw new java.security.GeneralSecurityException("Attempted to register a new key template " + ((java.lang.String) r5.getKey()) + " from an existing key manager of type " + r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008a, code lost:
        r3 = r4.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0096, code lost:
        if (r3.hasNext() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0098, code lost:
        r4 = (java.util.Map.Entry) r3.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a8, code lost:
        if (s6.x.f29467f.containsKey(r4.getKey()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c7, code lost:
        throw new java.security.GeneralSecurityException("Attempted overwrite of a registered key template " + ((java.lang.String) r4.getKey()));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static synchronized void b(java.lang.String r3, java.util.Map r4, boolean r5) {
        /*
            java.lang.Class<s6.x> r0 = s6.x.class
            monitor-enter(r0)
            if (r5 == 0) goto L34
            java.util.concurrent.ConcurrentMap r1 = s6.x.f29465d     // Catch: java.lang.Throwable -> L31
            boolean r2 = r1.containsKey(r3)     // Catch: java.lang.Throwable -> L31
            if (r2 == 0) goto L34
            java.lang.Object r1 = r1.get(r3)     // Catch: java.lang.Throwable -> L31
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L31
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L31
            if (r1 == 0) goto L1a
            goto L34
        L1a:
            java.security.GeneralSecurityException r4 = new java.security.GeneralSecurityException     // Catch: java.lang.Throwable -> L31
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L31
            r5.<init>()     // Catch: java.lang.Throwable -> L31
            java.lang.String r1 = "New keys are already disallowed for key type "
            r5.append(r1)     // Catch: java.lang.Throwable -> L31
            r5.append(r3)     // Catch: java.lang.Throwable -> L31
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L31
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L31
            throw r4     // Catch: java.lang.Throwable -> L31
        L31:
            r3 = move-exception
            goto Lc8
        L34:
            if (r5 == 0) goto Lca
            java.util.concurrent.atomic.AtomicReference r5 = s6.x.f29463b     // Catch: java.lang.Throwable -> L31
            java.lang.Object r5 = r5.get()     // Catch: java.lang.Throwable -> L31
            s6.j r5 = (s6.j) r5     // Catch: java.lang.Throwable -> L31
            boolean r5 = r5.j(r3)     // Catch: java.lang.Throwable -> L31
            if (r5 == 0) goto L8a
            java.util.Set r4 = r4.entrySet()     // Catch: java.lang.Throwable -> L31
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L31
        L4c:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L31
            if (r5 == 0) goto Lca
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L31
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5     // Catch: java.lang.Throwable -> L31
            java.util.concurrent.ConcurrentMap r1 = s6.x.f29467f     // Catch: java.lang.Throwable -> L31
            java.lang.Object r2 = r5.getKey()     // Catch: java.lang.Throwable -> L31
            boolean r1 = r1.containsKey(r2)     // Catch: java.lang.Throwable -> L31
            if (r1 == 0) goto L65
            goto L4c
        L65:
            java.security.GeneralSecurityException r4 = new java.security.GeneralSecurityException     // Catch: java.lang.Throwable -> L31
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L31
            r1.<init>()     // Catch: java.lang.Throwable -> L31
            java.lang.String r2 = "Attempted to register a new key template "
            r1.append(r2)     // Catch: java.lang.Throwable -> L31
            java.lang.Object r5 = r5.getKey()     // Catch: java.lang.Throwable -> L31
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L31
            r1.append(r5)     // Catch: java.lang.Throwable -> L31
            java.lang.String r5 = " from an existing key manager of type "
            r1.append(r5)     // Catch: java.lang.Throwable -> L31
            r1.append(r3)     // Catch: java.lang.Throwable -> L31
            java.lang.String r3 = r1.toString()     // Catch: java.lang.Throwable -> L31
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L31
            throw r4     // Catch: java.lang.Throwable -> L31
        L8a:
            java.util.Set r3 = r4.entrySet()     // Catch: java.lang.Throwable -> L31
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L31
        L92:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L31
            if (r4 == 0) goto Lca
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L31
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4     // Catch: java.lang.Throwable -> L31
            java.util.concurrent.ConcurrentMap r5 = s6.x.f29467f     // Catch: java.lang.Throwable -> L31
            java.lang.Object r1 = r4.getKey()     // Catch: java.lang.Throwable -> L31
            boolean r5 = r5.containsKey(r1)     // Catch: java.lang.Throwable -> L31
            if (r5 != 0) goto Lab
            goto L92
        Lab:
            java.security.GeneralSecurityException r3 = new java.security.GeneralSecurityException     // Catch: java.lang.Throwable -> L31
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L31
            r5.<init>()     // Catch: java.lang.Throwable -> L31
            java.lang.String r1 = "Attempted overwrite of a registered key template "
            r5.append(r1)     // Catch: java.lang.Throwable -> L31
            java.lang.Object r4 = r4.getKey()     // Catch: java.lang.Throwable -> L31
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L31
            r5.append(r4)     // Catch: java.lang.Throwable -> L31
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L31
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L31
            throw r3     // Catch: java.lang.Throwable -> L31
        Lc8:
            monitor-exit(r0)
            throw r3
        Lca:
            monitor-exit(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: s6.x.b(java.lang.String, java.util.Map, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object c(g gVar, Class cls) {
        return com.google.crypto.tink.internal.h.c().b(gVar, cls);
    }

    public static Class d(Class cls) {
        try {
            return com.google.crypto.tink.internal.h.c().a(cls);
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    public static Object e(e7.y yVar, Class cls) {
        return f(yVar.a0(), yVar.b0(), cls);
    }

    public static Object f(String str, com.google.crypto.tink.shaded.protobuf.h hVar, Class cls) {
        return ((j) f29463b.get()).c(str, cls).d(hVar);
    }

    public static Object g(String str, byte[] bArr, Class cls) {
        return f(str, com.google.crypto.tink.shaded.protobuf.h.m(bArr), cls);
    }

    public static h h(String str) {
        return ((j) f29463b.get()).f(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized Map i() {
        Map unmodifiableMap;
        synchronized (x.class) {
            unmodifiableMap = Collections.unmodifiableMap(f29467f);
        }
        return unmodifiableMap;
    }

    public static synchronized o0 j(a0 a0Var) {
        o0 a10;
        synchronized (x.class) {
            h h10 = h(a0Var.a0());
            if (((Boolean) f29465d.get(a0Var.a0())).booleanValue()) {
                a10 = h10.a(a0Var.b0());
            } else {
                throw new GeneralSecurityException("newKey-operation not permitted for key type " + a0Var.a0());
            }
        }
        return a10;
    }

    public static synchronized e7.y k(a0 a0Var) {
        e7.y b10;
        synchronized (x.class) {
            h h10 = h(a0Var.a0());
            if (((Boolean) f29465d.get(a0Var.a0())).booleanValue()) {
                b10 = h10.b(a0Var.b0());
            } else {
                throw new GeneralSecurityException("newKey-operation not permitted for key type " + a0Var.a0());
            }
        }
        return b10;
    }

    public static synchronized void l(com.google.crypto.tink.internal.d dVar, boolean z10) {
        Map emptyMap;
        synchronized (x.class) {
            if (dVar != null) {
                AtomicReference atomicReference = f29463b;
                j jVar = new j((j) atomicReference.get());
                jVar.g(dVar);
                String d10 = dVar.d();
                if (z10) {
                    emptyMap = dVar.f().c();
                } else {
                    emptyMap = Collections.emptyMap();
                }
                b(d10, emptyMap, z10);
                if (!((j) atomicReference.get()).j(d10)) {
                    f29464c.put(d10, a(dVar));
                    if (z10) {
                        m(d10, dVar.f().c());
                    }
                }
                f29465d.put(d10, Boolean.valueOf(z10));
                atomicReference.set(jVar);
            } else {
                throw new IllegalArgumentException("key manager must be non-null.");
            }
        }
    }

    private static void m(String str, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            f29467f.put((String) entry.getKey(), l.a(str, ((o0) ((d.a.C0102a) entry.getValue()).f8350a).f(), ((d.a.C0102a) entry.getValue()).f8351b));
        }
    }

    public static synchronized void n(w wVar) {
        synchronized (x.class) {
            com.google.crypto.tink.internal.h.c().e(wVar);
        }
    }

    public static Object o(v vVar, Class cls) {
        return com.google.crypto.tink.internal.h.c().f(vVar, cls);
    }
}
