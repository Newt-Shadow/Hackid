package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ae  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0409ae implements InterfaceC0422b2<C0509ee> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f11973a;

    public C0409ae(Context context) {
        this.f11973a = context;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0422b2, id.a
    /* renamed from: a */
    public C0509ee invoke() {
        Cursor cursor;
        JSONObject jSONObject;
        try {
            cursor = this.f11973a.getContentResolver().query(Uri.parse("content://com.yandex.preinstallsatellite.appmetrica.provider/preload_info"), null, null, null, null);
            try {
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("tracking_id"));
                        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("additional_parameters"));
                        JSONObject jSONObject2 = new JSONObject();
                        if (!TextUtils.isEmpty(string2)) {
                            jSONObject = new JSONObject(string2);
                            C0572h2.a("Preload info from Satellite: {tracking id = %s, additional parameters = %s}", string, jSONObject);
                            C0509ee c0509ee = new C0509ee(string, jSONObject, !TextUtils.isEmpty(string), false, EnumC0888u0.SATELLITE);
                            A2.a(cursor);
                            return c0509ee;
                        }
                        jSONObject = jSONObject2;
                        C0572h2.a("Preload info from Satellite: {tracking id = %s, additional parameters = %s}", string, jSONObject);
                        C0509ee c0509ee2 = new C0509ee(string, jSONObject, !TextUtils.isEmpty(string), false, EnumC0888u0.SATELLITE);
                        A2.a(cursor);
                        return c0509ee2;
                    }
                    C0572h2.a("No Preload Info data in Satellite content provider", new Object[0]);
                } else {
                    C0572h2.a("No Satellite content provider found", new Object[0]);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            cursor = null;
        }
        A2.a(cursor);
        return null;
    }
}
