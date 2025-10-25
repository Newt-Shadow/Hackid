package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
abstract class e0 {

    /* renamed from: a  reason: collision with root package name */
    private static final e0 f8434a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final e0 f8435b = new c();

    /* loaded from: classes.dex */
    private static final class b extends e0 {

        /* renamed from: c  reason: collision with root package name */
        private static final Class f8436c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private b() {
            super();
        }

        static List f(Object obj, long j10) {
            return (List) n1.C(obj, j10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static List g(Object obj, long j10, int i10) {
            c0 c0Var;
            List arrayList;
            List f10 = f(obj, j10);
            if (f10.isEmpty()) {
                if (f10 instanceof d0) {
                    arrayList = new c0(i10);
                } else if ((f10 instanceof x0) && (f10 instanceof z.d)) {
                    arrayList = ((z.d) f10).c(i10);
                } else {
                    arrayList = new ArrayList(i10);
                }
                n1.R(obj, j10, arrayList);
                return arrayList;
            }
            if (f8436c.isAssignableFrom(f10.getClass())) {
                ArrayList arrayList2 = new ArrayList(f10.size() + i10);
                arrayList2.addAll(f10);
                n1.R(obj, j10, arrayList2);
                c0Var = arrayList2;
            } else if (f10 instanceof m1) {
                c0 c0Var2 = new c0(f10.size() + i10);
                c0Var2.addAll((m1) f10);
                n1.R(obj, j10, c0Var2);
                c0Var = c0Var2;
            } else if ((f10 instanceof x0) && (f10 instanceof z.d)) {
                z.d dVar = (z.d) f10;
                if (!dVar.w()) {
                    z.d c10 = dVar.c(f10.size() + i10);
                    n1.R(obj, j10, c10);
                    return c10;
                }
                return f10;
            } else {
                return f10;
            }
            return c0Var;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.e0
        void c(Object obj, long j10) {
            Object unmodifiableList;
            List list = (List) n1.C(obj, j10);
            if (list instanceof d0) {
                unmodifiableList = ((d0) list).D0();
            } else if (f8436c.isAssignableFrom(list.getClass())) {
                return;
            } else {
                if ((list instanceof x0) && (list instanceof z.d)) {
                    z.d dVar = (z.d) list;
                    if (dVar.w()) {
                        dVar.b();
                        return;
                    }
                    return;
                }
                unmodifiableList = Collections.unmodifiableList(list);
            }
            n1.R(obj, j10, unmodifiableList);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.e0
        void d(Object obj, Object obj2, long j10) {
            List f10 = f(obj2, j10);
            List g10 = g(obj, j10, f10.size());
            int size = g10.size();
            int size2 = f10.size();
            if (size > 0 && size2 > 0) {
                g10.addAll(f10);
            }
            if (size > 0) {
                f10 = g10;
            }
            n1.R(obj, j10, f10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.e0
        List e(Object obj, long j10) {
            return g(obj, j10, 10);
        }
    }

    /* loaded from: classes.dex */
    private static final class c extends e0 {
        private c() {
            super();
        }

        static z.d f(Object obj, long j10) {
            return (z.d) n1.C(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.e0
        void c(Object obj, long j10) {
            f(obj, j10).b();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.e0
        void d(Object obj, Object obj2, long j10) {
            z.d f10 = f(obj, j10);
            z.d f11 = f(obj2, j10);
            int size = f10.size();
            int size2 = f11.size();
            if (size > 0 && size2 > 0) {
                if (!f10.w()) {
                    f10 = f10.c(size2 + size);
                }
                f10.addAll(f11);
            }
            if (size > 0) {
                f11 = f10;
            }
            n1.R(obj, j10, f11);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.e0
        List e(Object obj, long j10) {
            int i10;
            z.d f10 = f(obj, j10);
            if (!f10.w()) {
                int size = f10.size();
                if (size == 0) {
                    i10 = 10;
                } else {
                    i10 = size * 2;
                }
                z.d c10 = f10.c(i10);
                n1.R(obj, j10, c10);
                return c10;
            }
            return f10;
        }
    }

    private e0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e0 a() {
        return f8434a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e0 b() {
        return f8435b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c(Object obj, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void d(Object obj, Object obj2, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract List e(Object obj, long j10);
}
