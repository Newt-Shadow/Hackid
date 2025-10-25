package com.google.android.gms.internal.auth;

import android.util.Base64;
/* loaded from: classes.dex */
public final class o4 implements m4 {

    /* renamed from: a  reason: collision with root package name */
    public static final m0 f6125a;

    /* renamed from: b  reason: collision with root package name */
    public static final m0 f6126b;

    /* renamed from: c  reason: collision with root package name */
    public static final m0 f6127c;

    /* renamed from: d  reason: collision with root package name */
    public static final m0 f6128d;

    /* renamed from: e  reason: collision with root package name */
    public static final m0 f6129e;

    /* renamed from: f  reason: collision with root package name */
    public static final m0 f6130f;

    /* renamed from: g  reason: collision with root package name */
    public static final m0 f6131g;

    /* renamed from: h  reason: collision with root package name */
    public static final m0 f6132h;

    /* renamed from: i  reason: collision with root package name */
    public static final m0 f6133i;

    /* renamed from: j  reason: collision with root package name */
    public static final m0 f6134j;

    /* renamed from: k  reason: collision with root package name */
    public static final m0 f6135k;

    /* renamed from: l  reason: collision with root package name */
    public static final m0 f6136l;

    /* renamed from: m  reason: collision with root package name */
    public static final m0 f6137m;

    static {
        i0 a10 = new i0(a0.a("com.google.android.gms.auth_account")).b().a();
        f6125a = a10.c("getTokenRefactor__account_data_service_sample_percentage", 0.0d);
        f6126b = a10.e("getTokenRefactor__account_data_service_tokenAPI_usable", true);
        f6127c = a10.d("getTokenRefactor__account_manager_timeout_seconds", 20L);
        f6128d = a10.d("getTokenRefactor__android_id_shift", 0L);
        try {
            f6129e = a10.f("getTokenRefactor__blocked_packages", h4.r(Base64.decode("ChNjb20uYW5kcm9pZC52ZW5kaW5nCiBjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5tZWV0aW5ncwohY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n", 3)), n4.f6121a);
            f6130f = a10.e("getTokenRefactor__chimera_get_token_evolved", true);
            f6131g = a10.d("getTokenRefactor__clear_token_timeout_seconds", 20L);
            f6132h = a10.d("getTokenRefactor__default_task_timeout_seconds", 20L);
            f6133i = a10.e("getTokenRefactor__gaul_accounts_api_evolved", false);
            f6134j = a10.e("getTokenRefactor__gaul_token_api_evolved", false);
            f6135k = a10.d("getTokenRefactor__get_token_timeout_seconds", 120L);
            f6136l = a10.e("getTokenRefactor__gms_account_authenticator_evolved", true);
            f6137m = a10.c("getTokenRefactor__gms_account_authenticator_sample_percentage", 0.0d);
        } catch (Exception e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.google.android.gms.internal.auth.m4
    public final boolean f() {
        return ((Boolean) f6134j.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.auth.m4
    public final h4 zza() {
        return (h4) f6129e.b();
    }
}
