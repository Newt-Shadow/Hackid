package com.google.crypto.tink.internal;

import com.google.crypto.tink.shaded.protobuf.o0;
import e7.y;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import s6.l;
import x6.b;
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private final Class f8346a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f8347b;

    /* renamed from: c  reason: collision with root package name */
    private final Class f8348c;

    /* loaded from: classes.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        private final Class f8349a;

        /* renamed from: com.google.crypto.tink.internal.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0102a {

            /* renamed from: a  reason: collision with root package name */
            public Object f8350a;

            /* renamed from: b  reason: collision with root package name */
            public l.b f8351b;

            public C0102a(Object obj, l.b bVar) {
                this.f8350a = obj;
                this.f8351b = bVar;
            }
        }

        public a(Class cls) {
            this.f8349a = cls;
        }

        public abstract o0 a(o0 o0Var);

        public final Class b() {
            return this.f8349a;
        }

        public Map c() {
            return Collections.emptyMap();
        }

        public abstract o0 d(com.google.crypto.tink.shaded.protobuf.h hVar);

        public abstract void e(o0 o0Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Class cls, m... mVarArr) {
        this.f8346a = cls;
        HashMap hashMap = new HashMap();
        for (m mVar : mVarArr) {
            if (!hashMap.containsKey(mVar.b())) {
                hashMap.put(mVar.b(), mVar);
            } else {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive " + mVar.b().getCanonicalName());
            }
        }
        if (mVarArr.length > 0) {
            this.f8348c = mVarArr[0].b();
        } else {
            this.f8348c = Void.class;
        }
        this.f8347b = Collections.unmodifiableMap(hashMap);
    }

    public b.EnumC0366b a() {
        return b.EnumC0366b.f32505a;
    }

    public final Class b() {
        return this.f8348c;
    }

    public final Class c() {
        return this.f8346a;
    }

    public abstract String d();

    public final Object e(o0 o0Var, Class cls) {
        m mVar = (m) this.f8347b.get(cls);
        if (mVar != null) {
            return mVar.a(o0Var);
        }
        throw new IllegalArgumentException("Requested primitive class " + cls.getCanonicalName() + " not supported.");
    }

    public abstract a f();

    public abstract y.c g();

    public abstract o0 h(com.google.crypto.tink.shaded.protobuf.h hVar);

    public final Set i() {
        return this.f8347b.keySet();
    }

    public abstract void j(o0 o0Var);
}
