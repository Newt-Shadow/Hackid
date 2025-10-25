package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import i8.j;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g0 {

    /* renamed from: a  reason: collision with root package name */
    private final h7.f f8891a;

    /* renamed from: b  reason: collision with root package name */
    private final l0 f8892b;

    /* renamed from: c  reason: collision with root package name */
    private final k5.c f8893c;

    /* renamed from: d  reason: collision with root package name */
    private final k8.b f8894d;

    /* renamed from: e  reason: collision with root package name */
    private final k8.b f8895e;

    /* renamed from: f  reason: collision with root package name */
    private final l8.e f8896f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(h7.f fVar, l0 l0Var, k8.b bVar, k8.b bVar2, l8.e eVar) {
        this(fVar, l0Var, new k5.c(fVar.m()), bVar, bVar2, eVar);
    }

    private static String b(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private Task d(Task task) {
        return task.g(new androidx.privacysandbox.ads.adservices.measurement.j(), new m6.c() { // from class: com.google.firebase.messaging.f0
            @Override // m6.c
            public final Object a(Task task2) {
                String j10;
                j10 = g0.this.j(task2);
                return j10;
            }
        });
    }

    private String e() {
        try {
            return b(MessageDigest.getInstance("SHA-1").digest(this.f8891a.q().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    private String h(Bundle bundle) {
        if (bundle != null) {
            String string = bundle.getString("registration_id");
            if (string != null) {
                return string;
            }
            String string2 = bundle.getString("unregistered");
            if (string2 != null) {
                return string2;
            }
            String string3 = bundle.getString("error");
            if (!"RST".equals(string3)) {
                if (string3 != null) {
                    throw new IOException(string3);
                }
                Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
                throw new IOException("SERVICE_NOT_AVAILABLE");
            }
            throw new IOException("INSTANCE_ID_RESET");
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(String str) {
        if (!"SERVICE_NOT_AVAILABLE".equals(str) && !"INTERNAL_SERVER_ERROR".equals(str) && !"InternalServerError".equals(str)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String j(Task task) {
        return h((Bundle) task.m(IOException.class));
    }

    private void k(String str, String str2, Bundle bundle) {
        j.a b10;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        bundle.putString("gmp_app_id", this.f8891a.r().c());
        bundle.putString("gmsv", Integer.toString(this.f8892b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f8892b.a());
        bundle.putString("app_ver_name", this.f8892b.b());
        bundle.putString("firebase-app-name-hash", e());
        try {
            String b11 = ((com.google.firebase.installations.g) m6.n.a(this.f8896f.a(false))).b();
            if (!TextUtils.isEmpty(b11)) {
                bundle.putString("Goog-Firebase-Installations-Auth", b11);
            } else {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            }
        } catch (InterruptedException | ExecutionException e10) {
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e10);
        }
        bundle.putString("appid", (String) m6.n.a(this.f8896f.getId()));
        bundle.putString("cliv", "fcm-25.0.0");
        i8.j jVar = (i8.j) this.f8895e.get();
        s8.i iVar = (s8.i) this.f8894d.get();
        if (jVar != null && iVar != null && (b10 = jVar.b("fire-iid")) != j.a.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(b10.b()));
            bundle.putString("Firebase-Client", iVar.getUserAgent());
        }
    }

    private Task m(String str, String str2, Bundle bundle) {
        try {
            k(str, str2, bundle);
            return this.f8893c.c(bundle);
        } catch (InterruptedException | ExecutionException e10) {
            return m6.n.d(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task c() {
        Bundle bundle = new Bundle();
        bundle.putString("delete", "1");
        return d(m(l0.c(this.f8891a), "*", bundle));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task f() {
        return this.f8893c.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task g() {
        return d(m(l0.c(this.f8891a), "*", new Bundle()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task l(boolean z10) {
        return this.f8893c.d(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task n(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        return d(m(str, "/topics/" + str2, bundle));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task o(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        bundle.putString("delete", "1");
        return d(m(str, "/topics/" + str2, bundle));
    }

    g0(h7.f fVar, l0 l0Var, k5.c cVar, k8.b bVar, k8.b bVar2, l8.e eVar) {
        this.f8891a = fVar;
        this.f8892b = l0Var;
        this.f8893c = cVar;
        this.f8894d = bVar;
        this.f8895e = bVar2;
        this.f8896f = eVar;
    }
}
