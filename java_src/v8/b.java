package v8;

import ad.e;
import android.util.Log;
import ce.a;
import ce.g;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import v8.c;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f31272a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final Map f31273b = Collections.synchronizedMap(new LinkedHashMap());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final ce.a f31274a;

        /* renamed from: b  reason: collision with root package name */
        private c f31275b;

        public a(ce.a mutex, c cVar) {
            m.e(mutex, "mutex");
            this.f31274a = mutex;
            this.f31275b = cVar;
        }

        public final ce.a a() {
            return this.f31274a;
        }

        public final c b() {
            return this.f31275b;
        }

        public final void c(c cVar) {
            this.f31275b = cVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return m.a(this.f31274a, aVar.f31274a) && m.a(this.f31275b, aVar.f31275b);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f31274a.hashCode() * 31;
            c cVar = this.f31275b;
            return hashCode + (cVar == null ? 0 : cVar.hashCode());
        }

        public String toString() {
            return "Dependency(mutex=" + this.f31274a + ", subscriber=" + this.f31275b + ')';
        }

        public /* synthetic */ a(ce.a aVar, c cVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(aVar, (i10 & 2) != 0 ? null : cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v8.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0350b extends d {

        /* renamed from: a  reason: collision with root package name */
        Object f31276a;

        /* renamed from: b  reason: collision with root package name */
        Object f31277b;

        /* renamed from: c  reason: collision with root package name */
        Object f31278c;

        /* renamed from: d  reason: collision with root package name */
        Object f31279d;

        /* renamed from: e  reason: collision with root package name */
        Object f31280e;

        /* renamed from: f  reason: collision with root package name */
        Object f31281f;

        /* renamed from: g  reason: collision with root package name */
        /* synthetic */ Object f31282g;

        /* renamed from: i  reason: collision with root package name */
        int f31284i;

        C0350b(e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f31282g = obj;
            this.f31284i |= Integer.MIN_VALUE;
            return b.this.c(this);
        }
    }

    private b() {
    }

    public static final void a(c.a subscriberName) {
        m.e(subscriberName, "subscriberName");
        Map dependencies = f31273b;
        if (dependencies.containsKey(subscriberName)) {
            Log.d("FirebaseSessions", "Dependency " + subscriberName + " already added.");
            return;
        }
        m.d(dependencies, "dependencies");
        dependencies.put(subscriberName, new a(g.a(true), null, 2, null));
        Log.d("FirebaseSessions", "Dependency to " + subscriberName + " added.");
    }

    private final a b(c.a aVar) {
        Map dependencies = f31273b;
        m.d(dependencies, "dependencies");
        Object obj = dependencies.get(aVar);
        if (obj != null) {
            m.d(obj, "getOrElse(...)");
            return (a) obj;
        }
        throw new IllegalStateException("Cannot get dependency " + aVar + ". Dependencies should be added at class load time.");
    }

    public static final void e(c subscriber) {
        m.e(subscriber, "subscriber");
        c.a b10 = subscriber.b();
        a b11 = f31272a.b(b10);
        if (b11.b() != null) {
            Log.d("FirebaseSessions", "Subscriber " + b10 + " already registered.");
            return;
        }
        b11.c(subscriber);
        Log.d("FirebaseSessions", "Subscriber " + b10 + " registered.");
        a.C0093a.b(b11.a(), null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b3 A[RETURN] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.util.Map] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009f -> B:27:0x00a0). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(ad.e r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof v8.b.C0350b
            if (r0 == 0) goto L13
            r0 = r11
            v8.b$b r0 = (v8.b.C0350b) r0
            int r1 = r0.f31284i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31284i = r1
            goto L18
        L13:
            v8.b$b r0 = new v8.b$b
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f31282g
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f31284i
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 != r4) goto L40
            java.lang.Object r2 = r0.f31281f
            java.lang.Object r5 = r0.f31280e
            java.util.Map r5 = (java.util.Map) r5
            java.lang.Object r6 = r0.f31279d
            ce.a r6 = (ce.a) r6
            java.lang.Object r7 = r0.f31278c
            v8.c$a r7 = (v8.c.a) r7
            java.lang.Object r8 = r0.f31277b
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r0.f31276a
            java.util.Map r9 = (java.util.Map) r9
            xc.m.b(r11)
            goto La0
        L40:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L48:
            xc.m.b(r11)
            java.util.Map r11 = v8.b.f31273b
            java.lang.String r2 = "dependencies"
            kotlin.jvm.internal.m.d(r11, r2)
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            int r5 = r11.size()
            int r5 = yc.e0.b(r5)
            r2.<init>(r5)
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
            r8 = r11
            r5 = r2
        L69:
            boolean r11 = r8.hasNext()
            if (r11 == 0) goto Lb3
            java.lang.Object r11 = r8.next()
            java.util.Map$Entry r11 = (java.util.Map.Entry) r11
            java.lang.Object r2 = r11.getKey()
            java.lang.Object r6 = r11.getKey()
            r7 = r6
            v8.c$a r7 = (v8.c.a) r7
            java.lang.Object r11 = r11.getValue()
            v8.b$a r11 = (v8.b.a) r11
            ce.a r6 = r11.a()
            r0.f31276a = r5
            r0.f31277b = r8
            r0.f31278c = r7
            r0.f31279d = r6
            r0.f31280e = r5
            r0.f31281f = r2
            r0.f31284i = r4
            java.lang.Object r11 = r6.b(r3, r0)
            if (r11 != r1) goto L9f
            return r1
        L9f:
            r9 = r5
        La0:
            v8.b r11 = v8.b.f31272a     // Catch: java.lang.Throwable -> Lae
            v8.c r11 = r11.d(r7)     // Catch: java.lang.Throwable -> Lae
            r6.d(r3)
            r5.put(r2, r11)
            r5 = r9
            goto L69
        Lae:
            r11 = move-exception
            r6.d(r3)
            throw r11
        Lb3:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: v8.b.c(ad.e):java.lang.Object");
    }

    public final c d(c.a subscriberName) {
        m.e(subscriberName, "subscriberName");
        c b10 = b(subscriberName).b();
        if (b10 != null) {
            return b10;
        }
        throw new IllegalStateException("Subscriber " + subscriberName + " has not been registered.");
    }
}
