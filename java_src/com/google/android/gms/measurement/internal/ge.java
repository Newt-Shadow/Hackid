package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes.dex */
public final class ge {

    /* renamed from: a  reason: collision with root package name */
    private final w6 f7579a;

    public ge(w6 w6Var) {
        this.f7579a = w6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        String str;
        w6 w6Var = this.f7579a;
        w6Var.b().h();
        if (!e()) {
            return;
        }
        if (d()) {
            w6Var.x().f7435x.b(null);
            Bundle bundle = new Bundle();
            bundle.putString(ClimateForcast.SOURCE, "(not set)");
            bundle.putString("medium", "(not set)");
            bundle.putString("_cis", "intent");
            bundle.putLong("_cc", 1L);
            w6Var.B().t("auto", "_cmpx", bundle);
        } else {
            String a10 = w6Var.x().f7435x.a();
            if (TextUtils.isEmpty(a10)) {
                w6Var.a().p().a("Cache still valid but referrer not found");
            } else {
                long a11 = w6Var.x().f7436y.a() / 3600000;
                Uri parse = Uri.parse(a10);
                Bundle bundle2 = new Bundle();
                Pair pair = new Pair(parse.getPath(), bundle2);
                for (String str2 : parse.getQueryParameterNames()) {
                    bundle2.putString(str2, parse.getQueryParameter(str2));
                }
                ((Bundle) pair.second).putLong("_cc", (a11 - 1) * 3600000);
                Object obj = pair.first;
                if (obj == null) {
                    str = "app";
                } else {
                    str = (String) obj;
                }
                w6Var.B().t(str, "_cmp", (Bundle) pair.second);
            }
            w6Var.x().f7435x.b(null);
        }
        w6Var.x().f7436y.b(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str, Bundle bundle) {
        String uri;
        w6 w6Var = this.f7579a;
        w6Var.b().h();
        if (!w6Var.g()) {
            if (bundle.isEmpty()) {
                uri = null;
            } else {
                if (true == str.isEmpty()) {
                    str = "auto";
                }
                Uri.Builder builder = new Uri.Builder();
                builder.path(str);
                for (String str2 : bundle.keySet()) {
                    builder.appendQueryParameter(str2, bundle.getString(str2));
                }
                uri = builder.build().toString();
            }
            if (!TextUtils.isEmpty(uri)) {
                w6Var.x().f7435x.b(uri);
                w6Var.x().f7436y.b(w6Var.f().currentTimeMillis());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (e() && d()) {
            this.f7579a.x().f7435x.b(null);
        }
    }

    final boolean d() {
        if (!e()) {
            return false;
        }
        w6 w6Var = this.f7579a;
        if (w6Var.f().currentTimeMillis() - w6Var.x().f7436y.a() <= w6Var.w().D(null, c5.f7355k0)) {
            return false;
        }
        return true;
    }

    final boolean e() {
        if (this.f7579a.x().f7436y.a() > 0) {
            return true;
        }
        return false;
    }
}
