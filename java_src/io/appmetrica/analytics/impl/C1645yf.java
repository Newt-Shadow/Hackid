package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.ResultReceiver;
import android.text.TextUtils;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.AppMetricaConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
/* renamed from: io.appmetrica.analytics.impl.yf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1645yf implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    public final ContentValues f20987a;

    /* renamed from: b  reason: collision with root package name */
    public final ResultReceiver f20988b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f20986c = UUID.randomUUID().toString();
    public static final Parcelable.Creator<C1645yf> CREATOR = new C1620xf();

    public C1645yf(Context context, ResultReceiver resultReceiver) {
        ContentValues contentValues = new ContentValues();
        this.f20987a = contentValues;
        contentValues.put("PROCESS_CFG_PROCESS_ID", Integer.valueOf(Process.myPid()));
        contentValues.put("PROCESS_CFG_PROCESS_SESSION_ID", f20986c);
        contentValues.put("PROCESS_CFG_SDK_API_LEVEL", Integer.valueOf(AppMetrica.getLibraryApiLevel()));
        contentValues.put("PROCESS_CFG_PACKAGE_NAME", context.getPackageName());
        this.f20988b = resultReceiver;
    }

    public final void a(AppMetricaConfig appMetricaConfig) {
        Object obj = appMetricaConfig.additionalConfig.get("YMM_clids");
        Map map = obj instanceof Map ? (Map) obj : null;
        if (map != null) {
            HashMap b10 = AbstractC1477rm.b(map);
            synchronized (this) {
                this.f20987a.put("PROCESS_CFG_CLIDS", AbstractC1491sb.b(b10));
            }
        }
    }

    public final void b(AppMetricaConfig appMetricaConfig) {
        List<String> list = appMetricaConfig.customHosts;
        if (list != null) {
            synchronized (this) {
                this.f20987a.put("PROCESS_CFG_CUSTOM_HOSTS", Rn.a((Collection) list) ? null : new JSONArray((Collection) list).toString());
            }
        }
    }

    public final void c(AppMetricaConfig appMetricaConfig) {
        String str = (String) appMetricaConfig.additionalConfig.get("YMM_distributionReferrer");
        if (str != null) {
            synchronized (this) {
                this.f20987a.put("PROCESS_CFG_DISTRIBUTION_REFERRER", str);
            }
            j();
        }
    }

    public final void d(AppMetricaConfig appMetricaConfig) {
        if (appMetricaConfig != null) {
            synchronized (this) {
                b(appMetricaConfig);
                a(appMetricaConfig);
                c(appMetricaConfig);
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String e() {
        return this.f20987a.getAsString("PROCESS_CFG_INSTALL_REFERRER_SOURCE");
    }

    public final String f() {
        return this.f20987a.getAsString("PROCESS_CFG_PACKAGE_NAME");
    }

    public final Integer g() {
        return this.f20987a.getAsInteger("PROCESS_CFG_PROCESS_ID");
    }

    public final String h() {
        return this.f20987a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID");
    }

    public final boolean i() {
        return this.f20987a.containsKey("PROCESS_CFG_CUSTOM_HOSTS");
    }

    public final synchronized void j() {
        this.f20987a.put("PROCESS_CFG_INSTALL_REFERRER_SOURCE", "api");
    }

    public final String toString() {
        return "ProcessConfiguration{mParamsMapping=" + this.f20987a + ", mDataResultReceiver=" + this.f20988b + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("CFG_KEY_PROCESS_ENVIRONMENT", this.f20987a);
        bundle.putParcelable("CFG_KEY_PROCESS_ENVIRONMENT_RECEIVER", this.f20988b);
        parcel.writeBundle(bundle);
    }

    public final HashMap a() {
        return AbstractC1491sb.c(this.f20987a.getAsString("PROCESS_CFG_CLIDS"));
    }

    public final ResultReceiver c() {
        return this.f20988b;
    }

    public final String d() {
        return this.f20987a.getAsString("PROCESS_CFG_DISTRIBUTION_REFERRER");
    }

    public C1645yf(C1645yf c1645yf) {
        synchronized (c1645yf) {
            this.f20987a = new ContentValues(c1645yf.f20987a);
            this.f20988b = c1645yf.f20988b;
        }
    }

    public final ArrayList b() {
        String asString = this.f20987a.getAsString("PROCESS_CFG_CUSTOM_HOSTS");
        if (TextUtils.isEmpty(asString)) {
            return null;
        }
        return AbstractC1491sb.b(asString);
    }

    public C1645yf(ContentValues contentValues, ResultReceiver resultReceiver) {
        this.f20987a = contentValues == null ? new ContentValues() : contentValues;
        this.f20988b = resultReceiver;
    }
}
