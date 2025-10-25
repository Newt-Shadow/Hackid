package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.x;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public class p {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f8537b = true;

    /* renamed from: c  reason: collision with root package name */
    private static volatile p f8538c;

    /* renamed from: d  reason: collision with root package name */
    static final p f8539d = new p(true);

    /* renamed from: a  reason: collision with root package name */
    private final Map f8540a = Collections.emptyMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Object f8541a;

        /* renamed from: b  reason: collision with root package name */
        private final int f8542b;

        a(Object obj, int i10) {
            this.f8541a = obj;
            this.f8542b = i10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f8541a != aVar.f8541a || this.f8542b != aVar.f8542b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f8541a) * 65535) + this.f8542b;
        }
    }

    p(boolean z10) {
    }

    public static p b() {
        p pVar = f8538c;
        if (pVar == null) {
            synchronized (p.class) {
                pVar = f8538c;
                if (pVar == null) {
                    if (f8537b) {
                        pVar = o.a();
                    } else {
                        pVar = f8539d;
                    }
                    f8538c = pVar;
                }
            }
        }
        return pVar;
    }

    public x.c a(o0 o0Var, int i10) {
        android.support.v4.media.session.b.a(this.f8540a.get(new a(o0Var, i10)));
        return null;
    }
}
