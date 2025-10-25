package com.android.billingclient.api;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private int f5341a;

    /* renamed from: b  reason: collision with root package name */
    private String f5342b;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f5343a;

        /* renamed from: b  reason: collision with root package name */
        private String f5344b = "";

        /* synthetic */ a(c2.g0 g0Var) {
        }

        public h a() {
            h hVar = new h();
            hVar.f5341a = this.f5343a;
            hVar.f5342b = this.f5344b;
            return hVar;
        }

        public a b(String str) {
            this.f5344b = str;
            return this;
        }

        public a c(int i10) {
            this.f5343a = i10;
            return this;
        }
    }

    public static a c() {
        return new a(null);
    }

    public String a() {
        return this.f5342b;
    }

    public int b() {
        return this.f5341a;
    }

    public String toString() {
        String h10 = com.google.android.gms.internal.play_billing.b0.h(this.f5341a);
        String str = this.f5342b;
        return "Response Code: " + h10 + ", Debug Message: " + str;
    }
}
