package com.android.billingclient.api;

import android.text.TextUtils;
import com.android.billingclient.api.i;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5310a;

    /* renamed from: b  reason: collision with root package name */
    private String f5311b;

    /* renamed from: c  reason: collision with root package name */
    private String f5312c;

    /* renamed from: d  reason: collision with root package name */
    private c f5313d;

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.gms.internal.play_billing.j f5314e;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList f5315f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5316g;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f5317a;

        /* renamed from: b  reason: collision with root package name */
        private String f5318b;

        /* renamed from: c  reason: collision with root package name */
        private List f5319c;

        /* renamed from: d  reason: collision with root package name */
        private ArrayList f5320d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f5321e;

        /* renamed from: f  reason: collision with root package name */
        private c.a f5322f;

        /* synthetic */ a(c2.a0 a0Var) {
            c.a a10 = c.a();
            c.a.h(a10);
            this.f5322f = a10;
        }

        public g a() {
            boolean z10;
            boolean z11;
            ArrayList arrayList;
            com.google.android.gms.internal.play_billing.j s10;
            ArrayList arrayList2 = this.f5320d;
            boolean z12 = true;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                z10 = true;
            } else {
                z10 = false;
            }
            List list = this.f5319c;
            if (list != null && !list.isEmpty()) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z10 && !z11) {
                throw new IllegalArgumentException("Details of the products must be provided.");
            }
            if (z10 && z11) {
                throw new IllegalArgumentException("Set SkuDetails or ProductDetailsParams, not both.");
            }
            if (z10) {
                if (!this.f5320d.contains(null)) {
                    if (this.f5320d.size() > 1) {
                        SkuDetails skuDetails = (SkuDetails) this.f5320d.get(0);
                        String i10 = skuDetails.i();
                        ArrayList arrayList3 = this.f5320d;
                        int size = arrayList3.size();
                        for (int i11 = 0; i11 < size; i11++) {
                            SkuDetails skuDetails2 = (SkuDetails) arrayList3.get(i11);
                            if (!i10.equals("play_pass_subs") && !skuDetails2.i().equals("play_pass_subs") && !i10.equals(skuDetails2.i())) {
                                throw new IllegalArgumentException("SKUs should have the same type.");
                            }
                        }
                        String m10 = skuDetails.m();
                        ArrayList arrayList4 = this.f5320d;
                        int size2 = arrayList4.size();
                        for (int i12 = 0; i12 < size2; i12++) {
                            SkuDetails skuDetails3 = (SkuDetails) arrayList4.get(i12);
                            if (!i10.equals("play_pass_subs") && !skuDetails3.i().equals("play_pass_subs") && !m10.equals(skuDetails3.m())) {
                                throw new IllegalArgumentException("All SKUs must have the same package name.");
                            }
                        }
                    }
                } else {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            } else {
                b bVar = (b) this.f5319c.get(0);
                for (int i13 = 0; i13 < this.f5319c.size(); i13++) {
                    b bVar2 = (b) this.f5319c.get(i13);
                    if (bVar2 != null) {
                        if (i13 != 0 && !bVar2.b().e().equals(bVar.b().e()) && !bVar2.b().e().equals("play_pass_subs")) {
                            throw new IllegalArgumentException("All products should have same ProductType.");
                        }
                    } else {
                        throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                    }
                }
                String h10 = bVar.b().h();
                for (b bVar3 : this.f5319c) {
                    if (!bVar.b().e().equals("play_pass_subs") && !bVar3.b().e().equals("play_pass_subs") && !h10.equals(bVar3.b().h())) {
                        throw new IllegalArgumentException("All products must have the same package name.");
                    }
                }
            }
            g gVar = new g(null);
            if ((!z10 || ((SkuDetails) this.f5320d.get(0)).m().isEmpty()) && (!z11 || ((b) this.f5319c.get(0)).b().h().isEmpty())) {
                z12 = false;
            }
            gVar.f5310a = z12;
            gVar.f5311b = this.f5317a;
            gVar.f5312c = this.f5318b;
            gVar.f5313d = this.f5322f.a();
            ArrayList arrayList5 = this.f5320d;
            if (arrayList5 != null) {
                arrayList = new ArrayList(arrayList5);
            } else {
                arrayList = new ArrayList();
            }
            gVar.f5315f = arrayList;
            gVar.f5316g = this.f5321e;
            List list2 = this.f5319c;
            if (list2 != null) {
                s10 = com.google.android.gms.internal.play_billing.j.r(list2);
            } else {
                s10 = com.google.android.gms.internal.play_billing.j.s();
            }
            gVar.f5314e = s10;
            return gVar;
        }

        public a b(String str) {
            this.f5317a = str;
            return this;
        }

        public a c(String str) {
            this.f5318b = str;
            return this;
        }

        public a d(List list) {
            this.f5319c = new ArrayList(list);
            return this;
        }

        public a e(c cVar) {
            this.f5322f = c.d(cVar);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final i f5323a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5324b;

        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private i f5325a;

            /* renamed from: b  reason: collision with root package name */
            private String f5326b;

            /* synthetic */ a(c2.b0 b0Var) {
            }

            public b a() {
                com.google.android.gms.internal.play_billing.b.c(this.f5325a, "ProductDetails is required for constructing ProductDetailsParams.");
                if (this.f5325a.f() != null) {
                    com.google.android.gms.internal.play_billing.b.c(this.f5326b, "offerToken is required for constructing ProductDetailsParams for subscriptions.");
                }
                return new b(this, null);
            }

            public a b(String str) {
                this.f5326b = str;
                return this;
            }

            public a c(i iVar) {
                this.f5325a = iVar;
                if (iVar.c() != null) {
                    iVar.c().getClass();
                    i.a c10 = iVar.c();
                    if (c10.d() != null) {
                        this.f5326b = c10.d();
                    }
                }
                return this;
            }
        }

        /* synthetic */ b(a aVar, c2.c0 c0Var) {
            this.f5323a = aVar.f5325a;
            this.f5324b = aVar.f5326b;
        }

        public static a a() {
            return new a(null);
        }

        public final i b() {
            return this.f5323a;
        }

        public final String c() {
            return this.f5324b;
        }
    }

    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private String f5327a;

        /* renamed from: b  reason: collision with root package name */
        private String f5328b;

        /* renamed from: c  reason: collision with root package name */
        private int f5329c = 0;

        /* renamed from: d  reason: collision with root package name */
        private int f5330d = 0;

        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private String f5331a;

            /* renamed from: b  reason: collision with root package name */
            private String f5332b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f5333c;

            /* renamed from: d  reason: collision with root package name */
            private int f5334d = 0;

            /* renamed from: e  reason: collision with root package name */
            private int f5335e = 0;

            /* synthetic */ a(c2.d0 d0Var) {
            }

            static /* synthetic */ a h(a aVar) {
                aVar.f5333c = true;
                return aVar;
            }

            public c a() {
                boolean z10;
                if (TextUtils.isEmpty(this.f5331a) && TextUtils.isEmpty(null)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                boolean isEmpty = true ^ TextUtils.isEmpty(this.f5332b);
                if (z10 && isEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!this.f5333c && !z10 && !isEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                c cVar = new c(null);
                cVar.f5327a = this.f5331a;
                cVar.f5329c = this.f5334d;
                cVar.f5330d = this.f5335e;
                cVar.f5328b = this.f5332b;
                return cVar;
            }

            public a b(String str) {
                this.f5331a = str;
                return this;
            }

            public a c(String str) {
                this.f5331a = str;
                return this;
            }

            public a d(String str) {
                this.f5332b = str;
                return this;
            }

            public a e(int i10) {
                this.f5334d = i10;
                return this;
            }

            public a f(int i10) {
                this.f5334d = i10;
                return this;
            }

            public a g(int i10) {
                this.f5335e = i10;
                return this;
            }
        }

        /* synthetic */ c(c2.e0 e0Var) {
        }

        public static a a() {
            return new a(null);
        }

        static /* bridge */ /* synthetic */ a d(c cVar) {
            a a10 = a();
            a10.c(cVar.f5327a);
            a10.f(cVar.f5329c);
            a10.g(cVar.f5330d);
            a10.d(cVar.f5328b);
            return a10;
        }

        final int b() {
            return this.f5329c;
        }

        final int c() {
            return this.f5330d;
        }

        final String e() {
            return this.f5327a;
        }

        final String f() {
            return this.f5328b;
        }
    }

    /* synthetic */ g(c2.f0 f0Var) {
    }

    public static a a() {
        return new a(null);
    }

    public final int b() {
        return this.f5313d.b();
    }

    public final int c() {
        return this.f5313d.c();
    }

    public final String d() {
        return this.f5311b;
    }

    public final String e() {
        return this.f5312c;
    }

    public final String f() {
        return this.f5313d.e();
    }

    public final String g() {
        return this.f5313d.f();
    }

    public final ArrayList h() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f5315f);
        return arrayList;
    }

    public final List i() {
        return this.f5314e;
    }

    public final boolean q() {
        return this.f5316g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean r() {
        if (this.f5311b == null && this.f5312c == null && this.f5313d.f() == null && this.f5313d.b() == 0 && this.f5313d.c() == 0 && !this.f5310a && !this.f5316g) {
            return false;
        }
        return true;
    }
}
