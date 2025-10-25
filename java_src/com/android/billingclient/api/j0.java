package com.android.billingclient.api;

import com.android.billingclient.api.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class j0 {
    static final h A;
    static final h B;
    static final h C;
    static final h D;
    static final h E;
    static final h F;

    /* renamed from: a  reason: collision with root package name */
    static final h f5398a;

    /* renamed from: b  reason: collision with root package name */
    static final h f5399b;

    /* renamed from: c  reason: collision with root package name */
    static final h f5400c;

    /* renamed from: d  reason: collision with root package name */
    static final h f5401d;

    /* renamed from: e  reason: collision with root package name */
    static final h f5402e;

    /* renamed from: f  reason: collision with root package name */
    static final h f5403f;

    /* renamed from: g  reason: collision with root package name */
    static final h f5404g;

    /* renamed from: h  reason: collision with root package name */
    static final h f5405h;

    /* renamed from: i  reason: collision with root package name */
    static final h f5406i;

    /* renamed from: j  reason: collision with root package name */
    static final h f5407j;

    /* renamed from: k  reason: collision with root package name */
    static final h f5408k;

    /* renamed from: l  reason: collision with root package name */
    static final h f5409l;

    /* renamed from: m  reason: collision with root package name */
    static final h f5410m;

    /* renamed from: n  reason: collision with root package name */
    static final h f5411n;

    /* renamed from: o  reason: collision with root package name */
    static final h f5412o;

    /* renamed from: p  reason: collision with root package name */
    static final h f5413p;

    /* renamed from: q  reason: collision with root package name */
    static final h f5414q;

    /* renamed from: r  reason: collision with root package name */
    static final h f5415r;

    /* renamed from: s  reason: collision with root package name */
    static final h f5416s;

    /* renamed from: t  reason: collision with root package name */
    static final h f5417t;

    /* renamed from: u  reason: collision with root package name */
    static final h f5418u;

    /* renamed from: v  reason: collision with root package name */
    static final h f5419v;

    /* renamed from: w  reason: collision with root package name */
    static final h f5420w;

    /* renamed from: x  reason: collision with root package name */
    static final h f5421x;

    /* renamed from: y  reason: collision with root package name */
    static final h f5422y;

    /* renamed from: z  reason: collision with root package name */
    static final h f5423z;

    static {
        h.a c10 = h.c();
        c10.c(3);
        c10.b("Google Play In-app Billing API version is less than 3");
        f5398a = c10.a();
        h.a c11 = h.c();
        c11.c(3);
        c11.b("Google Play In-app Billing API version is less than 9");
        f5399b = c11.a();
        h.a c12 = h.c();
        c12.c(3);
        c12.b("Billing service unavailable on device.");
        f5400c = c12.a();
        h.a c13 = h.c();
        c13.c(5);
        c13.b("Client is already in the process of connecting to billing service.");
        f5401d = c13.a();
        h.a c14 = h.c();
        c14.c(5);
        c14.b("The list of SKUs can't be empty.");
        f5402e = c14.a();
        h.a c15 = h.c();
        c15.c(5);
        c15.b("SKU type can't be empty.");
        f5403f = c15.a();
        h.a c16 = h.c();
        c16.c(5);
        c16.b("Product type can't be empty.");
        f5404g = c16.a();
        h.a c17 = h.c();
        c17.c(-2);
        c17.b("Client does not support extra params.");
        f5405h = c17.a();
        h.a c18 = h.c();
        c18.c(5);
        c18.b("Invalid purchase token.");
        f5406i = c18.a();
        h.a c19 = h.c();
        c19.c(6);
        c19.b("An internal error occurred.");
        f5407j = c19.a();
        h.a c20 = h.c();
        c20.c(5);
        c20.b("SKU can't be null.");
        f5408k = c20.a();
        h.a c21 = h.c();
        c21.c(0);
        f5409l = c21.a();
        h.a c22 = h.c();
        c22.c(-1);
        c22.b("Service connection is disconnected.");
        f5410m = c22.a();
        h.a c23 = h.c();
        c23.c(2);
        c23.b("Timeout communicating with service.");
        f5411n = c23.a();
        h.a c24 = h.c();
        c24.c(-2);
        c24.b("Client does not support subscriptions.");
        f5412o = c24.a();
        h.a c25 = h.c();
        c25.c(-2);
        c25.b("Client does not support subscriptions update.");
        f5413p = c25.a();
        h.a c26 = h.c();
        c26.c(-2);
        c26.b("Client does not support get purchase history.");
        f5414q = c26.a();
        h.a c27 = h.c();
        c27.c(-2);
        c27.b("Client does not support price change confirmation.");
        f5415r = c27.a();
        h.a c28 = h.c();
        c28.c(-2);
        c28.b("Play Store version installed does not support cross selling products.");
        f5416s = c28.a();
        h.a c29 = h.c();
        c29.c(-2);
        c29.b("Client does not support multi-item purchases.");
        f5417t = c29.a();
        h.a c30 = h.c();
        c30.c(-2);
        c30.b("Client does not support offer_id_token.");
        f5418u = c30.a();
        h.a c31 = h.c();
        c31.c(-2);
        c31.b("Client does not support ProductDetails.");
        f5419v = c31.a();
        h.a c32 = h.c();
        c32.c(-2);
        c32.b("Client does not support in-app messages.");
        f5420w = c32.a();
        h.a c33 = h.c();
        c33.c(-2);
        c33.b("Client does not support user choice billing.");
        f5421x = c33.a();
        h.a c34 = h.c();
        c34.c(-2);
        c34.b("Play Store version installed does not support external offer.");
        f5422y = c34.a();
        h.a c35 = h.c();
        c35.c(5);
        c35.b("Unknown feature");
        f5423z = c35.a();
        h.a c36 = h.c();
        c36.c(-2);
        c36.b("Play Store version installed does not support get billing config.");
        A = c36.a();
        h.a c37 = h.c();
        c37.c(-2);
        c37.b("Query product details with serialized docid is not supported.");
        B = c37.a();
        h.a c38 = h.c();
        c38.c(4);
        c38.b("Item is unavailable for purchase.");
        C = c38.a();
        h.a c39 = h.c();
        c39.c(-2);
        c39.b("Query product details with developer specified account is not supported.");
        D = c39.a();
        h.a c40 = h.c();
        c40.c(-2);
        c40.b("Play Store version installed does not support alternative billing only.");
        E = c40.a();
        h.a c41 = h.c();
        c41.c(5);
        c41.b("To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient.");
        F = c41.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(int i10, String str) {
        h.a c10 = h.c();
        c10.c(i10);
        c10.b(str);
        return c10.a();
    }
}
