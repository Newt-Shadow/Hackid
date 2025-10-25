package com.android.billingclient.api;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.gms.internal.play_billing.j f5392a;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private com.google.android.gms.internal.play_billing.j f5393a;

        /* synthetic */ a(c2.r0 r0Var) {
        }

        public j a() {
            return new j(this, null);
        }

        public a b(List list) {
            if (list != null && !list.isEmpty()) {
                HashSet hashSet = new HashSet();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    b bVar = (b) it.next();
                    if (!"play_pass_subs".equals(bVar.c())) {
                        hashSet.add(bVar.c());
                    }
                }
                if (hashSet.size() <= 1) {
                    this.f5393a = com.google.android.gms.internal.play_billing.j.r(list);
                    return this;
                }
                throw new IllegalArgumentException("All products should be of the same product type.");
            }
            throw new IllegalArgumentException("Product list cannot be empty.");
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f5394a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5395b;

        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private String f5396a;

            /* renamed from: b  reason: collision with root package name */
            private String f5397b;

            /* synthetic */ a(c2.s0 s0Var) {
            }

            public b a() {
                if (!"first_party".equals(this.f5397b)) {
                    if (this.f5396a != null) {
                        if (this.f5397b != null) {
                            return new b(this, null);
                        }
                        throw new IllegalArgumentException("Product type must be provided.");
                    }
                    throw new IllegalArgumentException("Product id must be provided.");
                }
                throw new IllegalArgumentException("Serialized doc id must be provided for first party products.");
            }

            public a b(String str) {
                this.f5396a = str;
                return this;
            }

            public a c(String str) {
                this.f5397b = str;
                return this;
            }
        }

        /* synthetic */ b(a aVar, c2.t0 t0Var) {
            this.f5394a = aVar.f5396a;
            this.f5395b = aVar.f5397b;
        }

        public static a a() {
            return new a(null);
        }

        public final String b() {
            return this.f5394a;
        }

        public final String c() {
            return this.f5395b;
        }
    }

    /* synthetic */ j(a aVar, c2.u0 u0Var) {
        this.f5392a = aVar.f5393a;
    }

    public static a a() {
        return new a(null);
    }

    public final com.google.android.gms.internal.play_billing.j b() {
        return this.f5392a;
    }

    public final String c() {
        return ((b) this.f5392a.get(0)).c();
    }
}
