package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d6 extends a8 {
    static final Pair A = new Pair("", 0L);

    /* renamed from: c  reason: collision with root package name */
    private SharedPreferences f7414c;

    /* renamed from: d  reason: collision with root package name */
    private SharedPreferences f7415d;

    /* renamed from: e  reason: collision with root package name */
    public b6 f7416e;

    /* renamed from: f  reason: collision with root package name */
    public final a6 f7417f;

    /* renamed from: g  reason: collision with root package name */
    public final a6 f7418g;

    /* renamed from: h  reason: collision with root package name */
    public final c6 f7419h;

    /* renamed from: i  reason: collision with root package name */
    private String f7420i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f7421j;

    /* renamed from: k  reason: collision with root package name */
    private long f7422k;

    /* renamed from: l  reason: collision with root package name */
    public final a6 f7423l;

    /* renamed from: m  reason: collision with root package name */
    public final y5 f7424m;

    /* renamed from: n  reason: collision with root package name */
    public final c6 f7425n;

    /* renamed from: o  reason: collision with root package name */
    public final z5 f7426o;

    /* renamed from: p  reason: collision with root package name */
    public final y5 f7427p;

    /* renamed from: q  reason: collision with root package name */
    public final a6 f7428q;

    /* renamed from: r  reason: collision with root package name */
    public final a6 f7429r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f7430s;

    /* renamed from: t  reason: collision with root package name */
    public final y5 f7431t;

    /* renamed from: u  reason: collision with root package name */
    public final y5 f7432u;

    /* renamed from: v  reason: collision with root package name */
    public final a6 f7433v;

    /* renamed from: w  reason: collision with root package name */
    public final c6 f7434w;

    /* renamed from: x  reason: collision with root package name */
    public final c6 f7435x;

    /* renamed from: y  reason: collision with root package name */
    public final a6 f7436y;

    /* renamed from: z  reason: collision with root package name */
    public final z5 f7437z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d6(w6 w6Var) {
        super(w6Var);
        this.f7423l = new a6(this, "session_timeout", 1800000L);
        this.f7424m = new y5(this, "start_new_session", true);
        this.f7428q = new a6(this, "last_pause_time", 0L);
        this.f7429r = new a6(this, "session_id", 0L);
        this.f7425n = new c6(this, "non_personalized_ads", null);
        this.f7426o = new z5(this, "last_received_uri_timestamps_by_source", null);
        this.f7427p = new y5(this, "allow_remote_dynamite", false);
        this.f7417f = new a6(this, "first_open_time", 0L);
        this.f7418g = new a6(this, "app_install_time", 0L);
        this.f7419h = new c6(this, "app_instance_id", null);
        this.f7431t = new y5(this, "app_backgrounded", false);
        this.f7432u = new y5(this, "deep_link_retrieval_complete", false);
        this.f7433v = new a6(this, "deep_link_retrieval_attempts", 0L);
        this.f7434w = new c6(this, "firebase_feature_rollouts", null);
        this.f7435x = new c6(this, "deferred_attribution_cache", null);
        this.f7436y = new a6(this, "deferred_attribution_cache_timestamp", 0L);
        this.f7437z = new z5(this, "default_event_parameters", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean A(long j10) {
        if (j10 - this.f7423l.a() > this.f7428q.a()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.a8
    protected final boolean i() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.a8
    protected final void j() {
        w6 w6Var = this.f8322a;
        SharedPreferences sharedPreferences = w6Var.e().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f7414c = sharedPreferences;
        boolean z10 = sharedPreferences.getBoolean("has_been_opened", false);
        this.f7430s = z10;
        if (!z10) {
            SharedPreferences.Editor edit = this.f7414c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        w6Var.w();
        this.f7416e = new b6(this, "health_monitor", Math.max(0L, ((Long) c5.f7333d.b(null)).longValue()), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Pair o(String str) {
        h();
        if (w().o(i6.s.AD_STORAGE)) {
            w6 w6Var = this.f8322a;
            long elapsedRealtime = w6Var.f().elapsedRealtime();
            String str2 = this.f7420i;
            if (str2 != null && elapsedRealtime < this.f7422k) {
                return new Pair(str2, Boolean.valueOf(this.f7421j));
            }
            this.f7422k = elapsedRealtime + w6Var.w().D(str, c5.f7327b);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(w6Var.e());
                this.f7420i = "";
                String id2 = advertisingIdInfo.getId();
                if (id2 != null) {
                    this.f7420i = id2;
                }
                this.f7421j = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e10) {
                this.f8322a.a().v().b("Unable to get advertising id", e10);
                this.f7420i = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair(this.f7420i, Boolean.valueOf(this.f7421j));
        }
        return new Pair("", Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SharedPreferences p() {
        h();
        l();
        n5.q.k(this.f7414c);
        return this.f7414c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SharedPreferences q() {
        h();
        l();
        if (this.f7415d == null) {
            w6 w6Var = this.f8322a;
            String valueOf = String.valueOf(w6Var.e().getPackageName());
            n5 w10 = w6Var.a().w();
            String concat = valueOf.concat("_preferences");
            w10.b("Default prefs file", concat);
            this.f7415d = w6Var.e().getSharedPreferences(concat, 0);
        }
        return this.f7415d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SparseArray r() {
        Bundle a10 = this.f7426o.a();
        int[] intArray = a10.getIntArray("uriSources");
        long[] longArray = a10.getLongArray("uriTimestamps");
        if (intArray != null && longArray != null) {
            if (intArray.length != longArray.length) {
                this.f8322a.a().o().a("Trigger URI source and timestamp array lengths do not match");
                return new SparseArray();
            }
            SparseArray sparseArray = new SparseArray();
            for (int i10 = 0; i10 < intArray.length; i10++) {
                sparseArray.put(intArray[i10], Long.valueOf(longArray[i10]));
            }
            return sparseArray;
        }
        return new SparseArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void s(Boolean bool) {
        h();
        SharedPreferences.Editor edit = p().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Boolean t() {
        h();
        if (p().contains("measurement_enabled")) {
            return Boolean.valueOf(p().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final y u() {
        h();
        return y.g(p().getString("dma_consent_settings", null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean v(int i10) {
        return d8.u(i10, p().getInt("consent_source", 100));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final d8 w() {
        h();
        return d8.f(p().getString("consent_settings", "G1"), p().getInt("consent_source", 100));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean x(nc ncVar) {
        h();
        String string = p().getString("stored_tcf_param", "");
        String a10 = ncVar.a();
        if (!a10.equals(string)) {
            SharedPreferences.Editor edit = p().edit();
            edit.putString("stored_tcf_param", a10);
            edit.apply();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void y(boolean z10) {
        h();
        this.f8322a.a().w().b("App measurement setting deferred collection", Boolean.valueOf(z10));
        SharedPreferences.Editor edit = p().edit();
        edit.putBoolean("deferred_analytics_collection", z10);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean z() {
        SharedPreferences sharedPreferences = this.f7414c;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }
}
