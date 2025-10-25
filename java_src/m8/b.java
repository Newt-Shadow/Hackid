package m8;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import h7.f;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import kotlin.KotlinVersion;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f25999c = {"*", "FCM", "GCM", ""};

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f26000a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26001b;

    public b(f fVar) {
        this.f26000a = fVar.m().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f26001b = b(fVar);
    }

    private String a(String str, String str2) {
        return "|T|" + str + "|" + str2;
    }

    private static String b(f fVar) {
        String f10 = fVar.r().f();
        if (f10 != null) {
            return f10;
        }
        String c10 = fVar.r().c();
        if (!c10.startsWith("1:") && !c10.startsWith("2:")) {
            return c10;
        }
        String[] split = c10.split(":");
        if (split.length != 4) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    private static String c(PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & KotlinVersion.MAX_COMPONENT_VALUE);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    private String d(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException unused) {
            return null;
        }
    }

    private PublicKey e(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e10) {
            Log.w("ContentValues", "Invalid key stored " + e10);
            return null;
        }
    }

    private String g() {
        String string;
        synchronized (this.f26000a) {
            string = this.f26000a.getString("|S|id", null);
        }
        return string;
    }

    private String h() {
        synchronized (this.f26000a) {
            String string = this.f26000a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey e10 = e(string);
            if (e10 == null) {
                return null;
            }
            return c(e10);
        }
    }

    public String f() {
        synchronized (this.f26000a) {
            String g10 = g();
            if (g10 != null) {
                return g10;
            }
            return h();
        }
    }

    public String i() {
        synchronized (this.f26000a) {
            for (String str : f25999c) {
                String string = this.f26000a.getString(a(this.f26001b, str), null);
                if (string != null && !string.isEmpty()) {
                    if (string.startsWith("{")) {
                        string = d(string);
                    }
                    return string;
                }
            }
            return null;
        }
    }
}
