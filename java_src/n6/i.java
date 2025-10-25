package n6;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class i {

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f26432a;

        /* renamed from: b  reason: collision with root package name */
        private final a f26433b;

        /* renamed from: c  reason: collision with root package name */
        private a f26434c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f26435d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f26436e;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            String f26437a;

            /* renamed from: b  reason: collision with root package name */
            Object f26438b;

            /* renamed from: c  reason: collision with root package name */
            a f26439c;

            private a() {
            }
        }

        private a a() {
            a aVar = new a();
            this.f26434c.f26439c = aVar;
            this.f26434c = aVar;
            return aVar;
        }

        private b b(Object obj) {
            a().f26438b = obj;
            return this;
        }

        private static boolean d(Object obj) {
            if (obj instanceof CharSequence) {
                if (((CharSequence) obj).length() == 0) {
                    return true;
                }
                return false;
            } else if (obj instanceof Collection) {
                return ((Collection) obj).isEmpty();
            } else {
                if (obj instanceof Map) {
                    return ((Map) obj).isEmpty();
                }
                if (obj instanceof l) {
                    return !((l) obj).c();
                }
                if (obj.getClass().isArray() && Array.getLength(obj) == 0) {
                    return true;
                }
                return false;
            }
        }

        public b c(Object obj) {
            return b(obj);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0033  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                r7 = this;
                boolean r0 = r7.f26435d
                boolean r1 = r7.f26436e
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r3 = 32
                r2.<init>(r3)
                java.lang.String r3 = r7.f26432a
                r2.append(r3)
                r3 = 123(0x7b, float:1.72E-43)
                r2.append(r3)
                n6.i$b$a r3 = r7.f26433b
                n6.i$b$a r3 = r3.f26439c
                java.lang.String r4 = ""
            L1b:
                if (r3 == 0) goto L61
                java.lang.Object r5 = r3.f26438b
                if (r5 != 0) goto L24
                if (r0 != 0) goto L5e
                goto L2c
            L24:
                if (r1 == 0) goto L2c
                boolean r6 = d(r5)
                if (r6 != 0) goto L5e
            L2c:
                r2.append(r4)
                java.lang.String r4 = r3.f26437a
                if (r4 == 0) goto L3b
                r2.append(r4)
                r4 = 61
                r2.append(r4)
            L3b:
                if (r5 == 0) goto L59
                java.lang.Class r4 = r5.getClass()
                boolean r4 = r4.isArray()
                if (r4 == 0) goto L59
                java.lang.Object[] r4 = new java.lang.Object[]{r5}
                java.lang.String r4 = java.util.Arrays.deepToString(r4)
                int r5 = r4.length()
                r6 = 1
                int r5 = r5 - r6
                r2.append(r4, r6, r5)
                goto L5c
            L59:
                r2.append(r5)
            L5c:
                java.lang.String r4 = ", "
            L5e:
                n6.i$b$a r3 = r3.f26439c
                goto L1b
            L61:
                r0 = 125(0x7d, float:1.75E-43)
                r2.append(r0)
                java.lang.String r0 = r2.toString()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: n6.i.b.toString():java.lang.String");
        }

        private b(String str) {
            a aVar = new a();
            this.f26433b = aVar;
            this.f26434c = aVar;
            this.f26435d = false;
            this.f26436e = false;
            this.f26432a = (String) m.i(str);
        }
    }

    public static Object a(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        if (obj2 != null) {
            return obj2;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static b b(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }
}
