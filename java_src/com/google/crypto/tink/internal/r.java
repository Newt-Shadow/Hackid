package com.google.crypto.tink.internal;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import s6.y;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final Map f8386a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f8387b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f8388c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f8389d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final Class f8394a;

        /* renamed from: b  reason: collision with root package name */
        private final g7.a f8395b;

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.f8394a.equals(this.f8394a) || !cVar.f8395b.equals(this.f8395b)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return Objects.hash(this.f8394a, this.f8395b);
        }

        public String toString() {
            return this.f8394a.getSimpleName() + ", object identifier: " + this.f8395b;
        }

        private c(Class cls, g7.a aVar) {
            this.f8394a = cls;
            this.f8395b = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final Class f8396a;

        /* renamed from: b  reason: collision with root package name */
        private final Class f8397b;

        public boolean equals(Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (!dVar.f8396a.equals(this.f8396a) || !dVar.f8397b.equals(this.f8397b)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return Objects.hash(this.f8396a, this.f8397b);
        }

        public String toString() {
            return this.f8396a.getSimpleName() + " with serialization type: " + this.f8397b.getSimpleName();
        }

        private d(Class cls, Class cls2) {
            this.f8396a = cls;
            this.f8397b = cls2;
        }
    }

    public boolean e(q qVar) {
        return this.f8387b.containsKey(new c(qVar.getClass(), qVar.a()));
    }

    public s6.g f(q qVar, y yVar) {
        c cVar = new c(qVar.getClass(), qVar.a());
        if (this.f8387b.containsKey(cVar)) {
            return ((com.google.crypto.tink.internal.b) this.f8387b.get(cVar)).d(qVar, yVar);
        }
        throw new GeneralSecurityException("No Key Parser for requested key type " + cVar + " available");
    }

    private r(b bVar) {
        this.f8386a = new HashMap(bVar.f8390a);
        this.f8387b = new HashMap(bVar.f8391b);
        this.f8388c = new HashMap(bVar.f8392c);
        this.f8389d = new HashMap(bVar.f8393d);
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Map f8390a;

        /* renamed from: b  reason: collision with root package name */
        private final Map f8391b;

        /* renamed from: c  reason: collision with root package name */
        private final Map f8392c;

        /* renamed from: d  reason: collision with root package name */
        private final Map f8393d;

        public b() {
            this.f8390a = new HashMap();
            this.f8391b = new HashMap();
            this.f8392c = new HashMap();
            this.f8393d = new HashMap();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public r e() {
            return new r(this);
        }

        public b f(com.google.crypto.tink.internal.b bVar) {
            c cVar = new c(bVar.c(), bVar.b());
            if (this.f8391b.containsKey(cVar)) {
                com.google.crypto.tink.internal.b bVar2 = (com.google.crypto.tink.internal.b) this.f8391b.get(cVar);
                if (!bVar2.equals(bVar) || !bVar.equals(bVar2)) {
                    throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: " + cVar);
                }
            } else {
                this.f8391b.put(cVar, bVar);
            }
            return this;
        }

        public b g(com.google.crypto.tink.internal.c cVar) {
            d dVar = new d(cVar.b(), cVar.c());
            if (this.f8390a.containsKey(dVar)) {
                com.google.crypto.tink.internal.c cVar2 = (com.google.crypto.tink.internal.c) this.f8390a.get(dVar);
                if (!cVar2.equals(cVar) || !cVar.equals(cVar2)) {
                    throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: " + dVar);
                }
            } else {
                this.f8390a.put(dVar, cVar);
            }
            return this;
        }

        public b h(j jVar) {
            c cVar = new c(jVar.c(), jVar.b());
            if (this.f8393d.containsKey(cVar)) {
                j jVar2 = (j) this.f8393d.get(cVar);
                if (!jVar2.equals(jVar) || !jVar.equals(jVar2)) {
                    throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: " + cVar);
                }
            } else {
                this.f8393d.put(cVar, jVar);
            }
            return this;
        }

        public b i(k kVar) {
            d dVar = new d(kVar.b(), kVar.c());
            if (this.f8392c.containsKey(dVar)) {
                k kVar2 = (k) this.f8392c.get(dVar);
                if (!kVar2.equals(kVar) || !kVar.equals(kVar2)) {
                    throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: " + dVar);
                }
            } else {
                this.f8392c.put(dVar, kVar);
            }
            return this;
        }

        public b(r rVar) {
            this.f8390a = new HashMap(rVar.f8386a);
            this.f8391b = new HashMap(rVar.f8387b);
            this.f8392c = new HashMap(rVar.f8388c);
            this.f8393d = new HashMap(rVar.f8389d);
        }
    }
}
