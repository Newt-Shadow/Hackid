package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import java.util.LinkedHashMap;
/* loaded from: classes2.dex */
public final class Si implements Ti {

    /* renamed from: a  reason: collision with root package name */
    public final Context f18939a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18940b = "content://" + a() + "/clids";

    /* renamed from: c  reason: collision with root package name */
    public final String f18941c = "clid_key";

    /* renamed from: d  reason: collision with root package name */
    public final String f18942d = "clid_value";

    public Si(Context context) {
        this.f18939a = context;
    }

    public final String a() {
        return "com.yandex.preinstallsatellite.appmetrica.provider";
    }

    @Override // io.appmetrica.analytics.impl.Ti, id.a
    /* renamed from: b */
    public final J3 invoke() {
        Cursor cursor;
        if (!PackageManagerUtils.hasContentProvider(this.f18939a, "com.yandex.preinstallsatellite.appmetrica.provider")) {
            AbstractC1151ej.a("Satellite content provider with clids was not found.", new Object[0]);
            return null;
        }
        try {
            cursor = this.f18939a.getContentResolver().query(Uri.parse(this.f18940b), null, null, null, null);
            try {
            } catch (Throwable th) {
                th = th;
                try {
                    ImportantLogger.INSTANCE.info("AppMetrica-Attribution", String.format("Error while getting satellite clids", new Object[0]) + "\n" + StringUtils.throwableToString(th), new Object[0]);
                    return null;
                } finally {
                    Rn.a(cursor);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        if (cursor != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (cursor.moveToNext()) {
                try {
                    String string = cursor.getString(cursor.getColumnIndexOrThrow(this.f18941c));
                    String string2 = cursor.getString(cursor.getColumnIndexOrThrow(this.f18942d));
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                        linkedHashMap.put(string, string2);
                    } else {
                        AbstractC1151ej.a("Invalid clid {%s : %s}", string, string2);
                    }
                } catch (Throwable unused) {
                }
            }
            AbstractC1151ej.a("Clids from satellite: %s", linkedHashMap);
            return new J3(linkedHashMap, EnumC1065b8.f19426d);
        }
        AbstractC1151ej.a("No Satellite content provider found", new Object[0]);
        return null;
    }
}
