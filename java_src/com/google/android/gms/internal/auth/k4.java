package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
public final class k4 implements j4 {

    /* renamed from: a  reason: collision with root package name */
    public static final m0 f6080a;

    /* renamed from: b  reason: collision with root package name */
    public static final m0 f6081b;

    /* renamed from: c  reason: collision with root package name */
    public static final m0 f6082c;

    /* renamed from: d  reason: collision with root package name */
    public static final m0 f6083d;

    /* renamed from: e  reason: collision with root package name */
    public static final m0 f6084e;

    static {
        i0 a10 = new i0(a0.a("com.google.android.gms.auth_account")).b().a();
        f6080a = a10.e("Aang__create_auth_exception_with_pending_intent", false);
        f6081b = a10.e("Aang__enable_add_account_restrictions", false);
        f6082c = a10.e("Aang__log_missing_gaia_id_event", true);
        f6083d = a10.e("Aang__log_obfuscated_gaiaid_status", true);
        f6084e = a10.e("Aang__switch_clear_token_to_aang", false);
    }

    @Override // com.google.android.gms.internal.auth.j4
    public final boolean zza() {
        return ((Boolean) f6080a.b()).booleanValue();
    }
}
