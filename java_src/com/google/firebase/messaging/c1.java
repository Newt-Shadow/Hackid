package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
class c1 {

    /* renamed from: a  reason: collision with root package name */
    final SharedPreferences f8858a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: d  reason: collision with root package name */
        private static final long f8859d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a  reason: collision with root package name */
        final String f8860a;

        /* renamed from: b  reason: collision with root package name */
        final String f8861b;

        /* renamed from: c  reason: collision with root package name */
        final long f8862c;

        private a(String str, String str2, long j10) {
            this.f8860a = str;
            this.f8861b = str2;
            this.f8862c = j10;
        }

        static String a(String str, String str2, long j10) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put(Constants.TIMESTAMP, j10);
                return jSONObject.toString();
            } catch (JSONException e10) {
                Log.w("FirebaseMessaging", "Failed to encode token: " + e10);
                return null;
            }
        }

        static a c(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.startsWith("{")) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    return new a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong(Constants.TIMESTAMP));
                } catch (JSONException e10) {
                    Log.w("FirebaseMessaging", "Failed to parse token: " + e10);
                    return null;
                }
            }
            return new a(str, null, 0L);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean b(String str) {
            if (System.currentTimeMillis() <= this.f8862c + f8859d && str.equals(this.f8861b)) {
                return false;
            }
            return true;
        }
    }

    public c1(Context context) {
        this.f8858a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        a(context, "com.google.android.gms.appid-no-backup");
    }

    private void a(Context context, String str) {
        File file = new File(androidx.core.content.a.i(context), str);
        if (file.exists()) {
            return;
        }
        try {
            if (file.createNewFile() && !f()) {
                Log.i("FirebaseMessaging", "App restored, clearing state");
                c();
            }
        } catch (IOException e10) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Error creating file in no backup dir: " + e10.getMessage());
            }
        }
    }

    private String b(String str, String str2) {
        return str + "|T|" + str2 + "|*";
    }

    public synchronized void c() {
        this.f8858a.edit().clear().commit();
    }

    public synchronized void d(String str, String str2) {
        String b10 = b(str, str2);
        SharedPreferences.Editor edit = this.f8858a.edit();
        edit.remove(b10);
        edit.commit();
    }

    public synchronized a e(String str, String str2) {
        return a.c(this.f8858a.getString(b(str, str2), null));
    }

    public synchronized boolean f() {
        return this.f8858a.getAll().isEmpty();
    }

    public synchronized void g(String str, String str2, String str3, String str4) {
        String a10 = a.a(str3, str4, System.currentTimeMillis());
        if (a10 == null) {
            return;
        }
        SharedPreferences.Editor edit = this.f8858a.edit();
        edit.putString(b(str, str2), a10);
        edit.commit();
    }
}
