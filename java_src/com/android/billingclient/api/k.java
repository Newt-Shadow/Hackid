package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private String f5426a;

    /* renamed from: b  reason: collision with root package name */
    private List f5427b;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f5428a;

        /* renamed from: b  reason: collision with root package name */
        private List f5429b;

        /* synthetic */ a(c2.z0 z0Var) {
        }

        public k a() {
            String str = this.f5428a;
            if (str != null) {
                if (this.f5429b != null) {
                    k kVar = new k();
                    kVar.f5426a = str;
                    kVar.f5427b = this.f5429b;
                    return kVar;
                }
                throw new IllegalArgumentException("SKU list must be set");
            }
            throw new IllegalArgumentException("SKU type must be set");
        }

        public a b(List list) {
            this.f5429b = new ArrayList(list);
            return this;
        }

        public a c(String str) {
            this.f5428a = str;
            return this;
        }
    }

    public static a c() {
        return new a(null);
    }

    public String a() {
        return this.f5426a;
    }

    public List b() {
        return this.f5427b;
    }
}
