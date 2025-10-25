package com.google.crypto.tink.internal;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import s6.v;
import s6.w;
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final Map f8374a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f8375b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Class f8378a;

        /* renamed from: b  reason: collision with root package name */
        private final Class f8379b;

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.f8378a.equals(this.f8378a) || !cVar.f8379b.equals(this.f8379b)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return Objects.hash(this.f8378a, this.f8379b);
        }

        public String toString() {
            return this.f8378a.getSimpleName() + " with primitive type: " + this.f8379b.getSimpleName();
        }

        private c(Class cls, Class cls2) {
            this.f8378a = cls;
            this.f8379b = cls2;
        }
    }

    public Class c(Class cls) {
        if (this.f8375b.containsKey(cls)) {
            return ((w) this.f8375b.get(cls)).a();
        }
        throw new GeneralSecurityException("No input primitive class for " + cls + " available");
    }

    public Object d(s6.g gVar, Class cls) {
        c cVar = new c(gVar.getClass(), cls);
        if (this.f8374a.containsKey(cVar)) {
            return ((l) this.f8374a.get(cVar)).a(gVar);
        }
        throw new GeneralSecurityException("No PrimitiveConstructor for " + cVar + " available");
    }

    public Object e(v vVar, Class cls) {
        if (this.f8375b.containsKey(cls)) {
            w wVar = (w) this.f8375b.get(cls);
            if (vVar.g().equals(wVar.a()) && wVar.a().equals(vVar.g())) {
                return wVar.b(vVar);
            }
            throw new GeneralSecurityException("Input primitive type of the wrapper doesn't match the type of primitives in the provided PrimitiveSet");
        }
        throw new GeneralSecurityException("No wrapper found for " + cls);
    }

    private n(b bVar) {
        this.f8374a = new HashMap(bVar.f8376a);
        this.f8375b = new HashMap(bVar.f8377b);
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Map f8376a;

        /* renamed from: b  reason: collision with root package name */
        private final Map f8377b;

        public b() {
            this.f8376a = new HashMap();
            this.f8377b = new HashMap();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public n c() {
            return new n(this);
        }

        public b d(l lVar) {
            if (lVar != null) {
                c cVar = new c(lVar.c(), lVar.d());
                if (this.f8376a.containsKey(cVar)) {
                    l lVar2 = (l) this.f8376a.get(cVar);
                    if (!lVar2.equals(lVar) || !lVar.equals(lVar2)) {
                        throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: " + cVar);
                    }
                } else {
                    this.f8376a.put(cVar, lVar);
                }
                return this;
            }
            throw new NullPointerException("primitive constructor must be non-null");
        }

        public b e(w wVar) {
            if (wVar != null) {
                Class c10 = wVar.c();
                if (this.f8377b.containsKey(c10)) {
                    w wVar2 = (w) this.f8377b.get(c10);
                    if (!wVar2.equals(wVar) || !wVar.equals(wVar2)) {
                        throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type" + c10);
                    }
                } else {
                    this.f8377b.put(c10, wVar);
                }
                return this;
            }
            throw new NullPointerException("wrapper must be non-null");
        }

        public b(n nVar) {
            this.f8376a = new HashMap(nVar.f8374a);
            this.f8377b = new HashMap(nVar.f8375b);
        }
    }
}
