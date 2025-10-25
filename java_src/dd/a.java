package dd;

import java.lang.reflect.Method;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dd.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0150a {

        /* renamed from: a  reason: collision with root package name */
        public static final C0150a f15160a = new C0150a();

        /* renamed from: b  reason: collision with root package name */
        public static final Method f15161b;

        /* renamed from: c  reason: collision with root package name */
        public static final Method f15162c;

        /* JADX WARN: Removed duplicated region for block: B:13:0x003d A[LOOP:0: B:3:0x0013->B:13:0x003d, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0041 A[EDGE_INSN: B:24:0x0041->B:15:0x0041 ?: BREAK  , SYNTHETIC] */
        static {
            /*
                dd.a$a r0 = new dd.a$a
                r0.<init>()
                dd.a.C0150a.f15160a = r0
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                kotlin.jvm.internal.m.b(r1)
                int r2 = r1.length
                r3 = 0
                r4 = r3
            L13:
                r5 = 0
                if (r4 >= r2) goto L40
                r6 = r1[r4]
                java.lang.String r7 = r6.getName()
                java.lang.String r8 = "addSuppressed"
                boolean r7 = kotlin.jvm.internal.m.a(r7, r8)
                if (r7 == 0) goto L39
                java.lang.Class[] r7 = r6.getParameterTypes()
                java.lang.String r8 = "getParameterTypes(...)"
                kotlin.jvm.internal.m.d(r7, r8)
                java.lang.Object r7 = yc.g.I(r7)
                boolean r7 = kotlin.jvm.internal.m.a(r7, r0)
                if (r7 == 0) goto L39
                r7 = 1
                goto L3a
            L39:
                r7 = r3
            L3a:
                if (r7 == 0) goto L3d
                goto L41
            L3d:
                int r4 = r4 + 1
                goto L13
            L40:
                r6 = r5
            L41:
                dd.a.C0150a.f15161b = r6
                int r0 = r1.length
            L44:
                if (r3 >= r0) goto L59
                r2 = r1[r3]
                java.lang.String r4 = r2.getName()
                java.lang.String r6 = "getSuppressed"
                boolean r4 = kotlin.jvm.internal.m.a(r4, r6)
                if (r4 == 0) goto L56
                r5 = r2
                goto L59
            L56:
                int r3 = r3 + 1
                goto L44
            L59:
                dd.a.C0150a.f15162c = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: dd.a.C0150a.<clinit>():void");
        }

        private C0150a() {
        }
    }

    public void a(Throwable cause, Throwable exception) {
        m.e(cause, "cause");
        m.e(exception, "exception");
        Method method = C0150a.f15161b;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    public md.c b() {
        return new md.b();
    }
}
