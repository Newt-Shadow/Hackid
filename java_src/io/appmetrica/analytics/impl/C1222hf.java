package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.hf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1222hf implements Ti {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19737a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19738b = "content://" + a() + "/preload_info";

    /* renamed from: c  reason: collision with root package name */
    public final String f19739c = "tracking_id";

    /* renamed from: d  reason: collision with root package name */
    public final String f19740d = "additional_parameters";

    public C1222hf(Context context) {
        this.f19737a = context;
    }

    public final String a() {
        return "com.yandex.preinstallsatellite.appmetrica.provider";
    }

    @Override // io.appmetrica.analytics.impl.Ti, id.a
    /* renamed from: b */
    public final C1396of invoke() {
        Cursor cursor;
        JSONObject jSONObject;
        if (!PackageManagerUtils.hasContentProvider(this.f19737a, "com.yandex.preinstallsatellite.appmetrica.provider")) {
            AbstractC1151ej.a("Satellite content provider with preload info was not found.", new Object[0]);
            return null;
        }
        try {
            cursor = this.f19737a.getContentResolver().query(Uri.parse(this.f19738b), null, null, null, null);
            try {
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow(this.f19739c));
                        String string2 = cursor.getString(cursor.getColumnIndexOrThrow(this.f19740d));
                        if (string2 != null && string2.length() != 0) {
                            jSONObject = new JSONObject(string2);
                            if (!TextUtils.isEmpty(string) && ParseUtils.parseLong(string) == null) {
                                AbstractC1151ej.a("Tracking id from Satellite is not a number.", new Object[0]);
                            }
                            AbstractC1151ej.a("Preload info from Satellite: {tracking id = %s, additional parameters = %s}", string, jSONObject);
                            C1396of c1396of = new C1396of(string, jSONObject, !TextUtils.isEmpty(string), false, EnumC1065b8.f19426d);
                            Rn.a(cursor);
                            return c1396of;
                        }
                        jSONObject = new JSONObject();
                        if (!TextUtils.isEmpty(string)) {
                            AbstractC1151ej.a("Tracking id from Satellite is not a number.", new Object[0]);
                        }
                        AbstractC1151ej.a("Preload info from Satellite: {tracking id = %s, additional parameters = %s}", string, jSONObject);
                        C1396of c1396of2 = new C1396of(string, jSONObject, !TextUtils.isEmpty(string), false, EnumC1065b8.f19426d);
                        Rn.a(cursor);
                        return c1396of2;
                    }
                    AbstractC1151ej.a("No Preload Info data in Satellite content provider", new Object[0]);
                } else {
                    AbstractC1151ej.a("No Satellite content provider found", new Object[0]);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            cursor = null;
        }
        Rn.a(cursor);
        return null;
    }
}
