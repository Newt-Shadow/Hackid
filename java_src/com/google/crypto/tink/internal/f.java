package com.google.crypto.tink.internal;

import c7.b;
import c7.c;
import e7.z;
import java.security.GeneralSecurityException;
import java.util.List;
import s6.v;
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    public static final b.a f8355a = new b(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8356a;

        static {
            int[] iArr = new int[z.values().length];
            f8356a = iArr;
            try {
                iArr[z.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8356a[z.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8356a[z.DESTROYED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes.dex */
    private static class b implements b.a {
        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // c7.b.a
        public void a() {
        }

        @Override // c7.b.a
        public void b(int i10, long j10) {
        }
    }

    public static c7.c a(v vVar) {
        c.b a10 = c7.c.a();
        a10.d(vVar.d());
        for (List<v.c> list : vVar.c()) {
            for (v.c cVar : list) {
                a10.a(c(cVar.h()), cVar.d(), b(cVar.e()), cVar.f().name());
            }
        }
        if (vVar.e() != null) {
            a10.e(vVar.e().d());
        }
        try {
            return a10.b();
        } catch (GeneralSecurityException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static String b(String str) {
        if (!str.startsWith("type.googleapis.com/google.crypto.")) {
            return str;
        }
        return str.substring(34);
    }

    private static s6.k c(z zVar) {
        int i10 = a.f8356a[zVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return s6.k.f29424d;
                }
                throw new IllegalStateException("Unknown key status");
            }
            return s6.k.f29423c;
        }
        return s6.k.f29422b;
    }
}
