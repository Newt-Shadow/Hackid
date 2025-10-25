package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
/* loaded from: classes.dex */
public final class u5 extends ad {
    public u5(pd pdVar) {
        super(pdVar);
    }

    @Override // com.google.android.gms.measurement.internal.ad
    protected final boolean l() {
        return false;
    }

    public final boolean m() {
        j();
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f8322a.e().getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    public final void n(String str, bd bdVar, com.google.android.gms.internal.measurement.d7 d7Var, r5 r5Var) {
        h();
        j();
        try {
            URL url = new URI(bdVar.a()).toURL();
            this.f8149b.K0();
            this.f8322a.b().w(new t5(this, str, url, d7Var.e(), bdVar.b(), r5Var));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            this.f8322a.a().o().c("Failed to parse URL. Not uploading MeasurementBatch. appId", p5.x(str), bdVar.a());
        }
    }

    public final void o(v5 v5Var, Map map, r5 r5Var) {
        h();
        j();
        n5.q.k(v5Var);
        n5.q.k(r5Var);
        cd C0 = this.f8149b.C0();
        Uri.Builder builder = new Uri.Builder();
        Uri.Builder appendQueryParameter = builder.scheme((String) c5.f7339f.b(null)).encodedAuthority((String) c5.f7342g.b(null)).path("config/app/".concat(String.valueOf(v5Var.r0()))).appendQueryParameter("platform", "android");
        C0.f8322a.w().A();
        appendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(133005L)).appendQueryParameter("runtime_version", CommonUrlParts.Values.FALSE_INTEGER);
        String uri = builder.build().toString();
        try {
            this.f8322a.b().w(new t5(this, v5Var.o0(), new URI(uri).toURL(), null, map, r5Var));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            this.f8322a.a().o().c("Failed to parse config URL. Not fetching. appId", p5.x(v5Var.o0()), uri);
        }
    }
}
