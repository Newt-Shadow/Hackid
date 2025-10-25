package va;

import android.content.Context;
import android.content.SharedPreferences;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import android.util.Log;
import androidx.security.crypto.a;
import androidx.security.crypto.c;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import wa.i;
import wa.m;
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private final Context f31308c;

    /* renamed from: e  reason: collision with root package name */
    protected Map f31310e;

    /* renamed from: g  reason: collision with root package name */
    private SharedPreferences f31312g;

    /* renamed from: h  reason: collision with root package name */
    private i f31313h;

    /* renamed from: i  reason: collision with root package name */
    private m f31314i;

    /* renamed from: a  reason: collision with root package name */
    private final String f31306a = "SecureStorageAndroid";

    /* renamed from: d  reason: collision with root package name */
    protected String f31309d = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIHNlY3VyZSBzdG9yYWdlCg";

    /* renamed from: f  reason: collision with root package name */
    private String f31311f = "FlutterSecureStorage";

    /* renamed from: j  reason: collision with root package name */
    private Boolean f31315j = Boolean.FALSE;

    /* renamed from: b  reason: collision with root package name */
    private final Charset f31307b = StandardCharsets.UTF_8;

    public a(Context context) {
        this.f31308c = context.getApplicationContext();
    }

    private void a(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        try {
            for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                Object value = entry.getValue();
                String key = entry.getKey();
                if ((value instanceof String) && key.contains(this.f31309d)) {
                    sharedPreferences2.edit().putString(key, c((String) value)).apply();
                    sharedPreferences.edit().remove(key).apply();
                }
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            this.f31314i.d(edit);
            edit.apply();
        } catch (Exception e10) {
            Log.e("SecureStorageAndroid", "Data migration failed", e10);
        }
    }

    private String c(String str) {
        if (str == null) {
            return null;
        }
        return new String(this.f31313h.a(Base64.decode(str, 0)), this.f31307b);
    }

    private void f() {
        if (this.f31310e.containsKey("sharedPreferencesName") && !((String) this.f31310e.get("sharedPreferencesName")).isEmpty()) {
            this.f31311f = (String) this.f31310e.get("sharedPreferencesName");
        }
        if (this.f31310e.containsKey("preferencesKeyPrefix") && !((String) this.f31310e.get("preferencesKeyPrefix")).isEmpty()) {
            this.f31309d = (String) this.f31310e.get("preferencesKeyPrefix");
        }
        SharedPreferences sharedPreferences = this.f31308c.getSharedPreferences(this.f31311f, 0);
        if (this.f31313h == null) {
            try {
                i(sharedPreferences);
            } catch (Exception e10) {
                Log.e("SecureStorageAndroid", "StorageCipher initialization failed", e10);
            }
        }
        if (h()) {
            try {
                SharedPreferences j10 = j(this.f31308c);
                this.f31312g = j10;
                a(sharedPreferences, j10);
                return;
            } catch (Exception e11) {
                Log.e("SecureStorageAndroid", "EncryptedSharedPreferences initialization failed", e11);
                this.f31312g = sharedPreferences;
                this.f31315j = Boolean.TRUE;
                return;
            }
        }
        this.f31312g = sharedPreferences;
    }

    private boolean h() {
        if (this.f31315j.booleanValue() || !this.f31310e.containsKey("encryptedSharedPreferences") || !this.f31310e.get("encryptedSharedPreferences").equals("true")) {
            return false;
        }
        return true;
    }

    private void i(SharedPreferences sharedPreferences) {
        this.f31314i = new m(sharedPreferences, this.f31310e);
        if (h()) {
            this.f31313h = this.f31314i.c(this.f31308c);
        } else if (this.f31314i.e()) {
            k(this.f31314i, sharedPreferences);
        } else {
            this.f31313h = this.f31314i.a(this.f31308c);
        }
    }

    private SharedPreferences j(Context context) {
        return androidx.security.crypto.a.a(context, this.f31311f, new c.a(context).b(new KeyGenParameterSpec.Builder("_androidx_security_master_key_", 3).setEncryptionPaddings("NoPadding").setBlockModes("GCM").setKeySize(256).build()).a(), a.d.AES256_SIV, a.e.AES256_GCM);
    }

    private void k(m mVar, SharedPreferences sharedPreferences) {
        try {
            this.f31313h = mVar.c(this.f31308c);
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                Object value = entry.getValue();
                String key = entry.getKey();
                if ((value instanceof String) && key.contains(this.f31309d)) {
                    hashMap.put(key, c((String) value));
                }
            }
            this.f31313h = mVar.a(this.f31308c);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            for (Map.Entry entry2 : hashMap.entrySet()) {
                edit.putString((String) entry2.getKey(), Base64.encodeToString(this.f31313h.encrypt(((String) entry2.getValue()).getBytes(this.f31307b)), 0));
            }
            mVar.f(edit);
            edit.apply();
        } catch (Exception e10) {
            Log.e("SecureStorageAndroid", "re-encryption failed", e10);
            this.f31313h = mVar.c(this.f31308c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(String str) {
        f();
        return this.f31312g.contains(str);
    }

    public void d(String str) {
        f();
        SharedPreferences.Editor edit = this.f31312g.edit();
        edit.remove(str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        f();
        SharedPreferences.Editor edit = this.f31312g.edit();
        edit.clear();
        if (!h()) {
            this.f31314i.f(edit);
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        if (this.f31310e.containsKey("resetOnError") && this.f31310e.get("resetOnError").equals("true")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String l(String str) {
        f();
        String string = this.f31312g.getString(str, null);
        if (h()) {
            return string;
        }
        return c(string);
    }

    public Map m() {
        f();
        Map<String, ?> all = this.f31312g.getAll();
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            if (entry.getKey().contains(this.f31309d)) {
                String replaceFirst = entry.getKey().replaceFirst(this.f31309d + '_', "");
                if (h()) {
                    hashMap.put(replaceFirst, (String) entry.getValue());
                } else {
                    hashMap.put(replaceFirst, c((String) entry.getValue()));
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(String str, String str2) {
        f();
        SharedPreferences.Editor edit = this.f31312g.edit();
        if (h()) {
            edit.putString(str, str2);
        } else {
            edit.putString(str, Base64.encodeToString(this.f31313h.encrypt(str2.getBytes(this.f31307b)), 0));
        }
        edit.apply();
    }
}
