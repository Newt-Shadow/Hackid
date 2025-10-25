package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.d0;
/* loaded from: classes2.dex */
public final class SharedPreferencesPluginKt {
    public static final String DOUBLE_PREFIX = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu";
    public static final String JSON_LIST_PREFIX = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!";
    public static final String LIST_PREFIX = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu";
    public static final String TAG = "SharedPreferencesPlugin";
    static final /* synthetic */ pd.k[] $$delegatedProperties = {d0.f(new kotlin.jvm.internal.v(SharedPreferencesPluginKt.class, "sharedPreferencesDataStore", "getSharedPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1))};
    public static final String SHARED_PREFERENCES_NAME = "FlutterSharedPreferences";
    private static final ld.c sharedPreferencesDataStore$delegate = n0.a.b(SHARED_PREFERENCES_NAME, null, null, null, 14, null);

    public static final j0.i getSharedPreferencesDataStore(Context context) {
        kotlin.jvm.internal.m.e(context, "<this>");
        return (j0.i) sharedPreferencesDataStore$delegate.a(context, $$delegatedProperties[0]);
    }

    public static final boolean preferencesFilter(String key, Object obj, Set<String> set) {
        kotlin.jvm.internal.m.e(key, "key");
        if (set == null) {
            if (!(obj instanceof Boolean) && !(obj instanceof Long) && !(obj instanceof String) && !(obj instanceof Double)) {
                return false;
            }
            return true;
        }
        return set.contains(key);
    }

    public static final Object transformPref(Object obj, SharedPreferencesListEncoder listEncoder) {
        boolean H;
        boolean H2;
        boolean H3;
        kotlin.jvm.internal.m.e(listEncoder, "listEncoder");
        if (obj instanceof String) {
            String str = (String) obj;
            H = rd.y.H(str, LIST_PREFIX, false, 2, null);
            if (H) {
                H3 = rd.y.H(str, JSON_LIST_PREFIX, false, 2, null);
                if (!H3) {
                    String substring = str.substring(40);
                    kotlin.jvm.internal.m.d(substring, "substring(...)");
                    List<String> decode = listEncoder.decode(substring);
                    kotlin.jvm.internal.m.b(decode);
                    return decode;
                }
                return obj;
            }
            H2 = rd.y.H(str, DOUBLE_PREFIX, false, 2, null);
            if (H2) {
                String substring2 = str.substring(40);
                kotlin.jvm.internal.m.d(substring2, "substring(...)");
                return Double.valueOf(Double.parseDouble(substring2));
            }
            return obj;
        }
        return obj;
    }
}
