package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import io.flutter.plugin.common.BinaryMessenger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class SharedPreferencesBackend implements SharedPreferencesAsyncApi {
    private Context context;
    private SharedPreferencesListEncoder listEncoder;
    private BinaryMessenger messenger;

    public SharedPreferencesBackend(BinaryMessenger messenger, Context context, SharedPreferencesListEncoder listEncoder) {
        kotlin.jvm.internal.m.e(messenger, "messenger");
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(listEncoder, "listEncoder");
        this.messenger = messenger;
        this.context = context;
        this.listEncoder = listEncoder;
        try {
            SharedPreferencesAsyncApi.Companion.setUp(messenger, this, "shared_preferences");
        } catch (Exception e10) {
            Log.e(SharedPreferencesPluginKt.TAG, "Received exception while setting up SharedPreferencesBackend", e10);
        }
    }

    private final SharedPreferences createSharedPreferences(SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions) {
        if (sharedPreferencesPigeonOptions.getFileName() == null) {
            SharedPreferences a10 = b1.b.a(this.context);
            kotlin.jvm.internal.m.b(a10);
            return a10;
        }
        SharedPreferences sharedPreferences = this.context.getSharedPreferences(sharedPreferencesPigeonOptions.getFileName(), 0);
        kotlin.jvm.internal.m.b(sharedPreferences);
        return sharedPreferences;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void clear(List<String> list, SharedPreferencesPigeonOptions options) {
        Set set;
        kotlin.jvm.internal.m.e(options, "options");
        SharedPreferences createSharedPreferences = createSharedPreferences(options);
        SharedPreferences.Editor edit = createSharedPreferences.edit();
        kotlin.jvm.internal.m.d(edit, "edit(...)");
        Map<String, ?> all = createSharedPreferences.getAll();
        kotlin.jvm.internal.m.d(all, "getAll(...)");
        ArrayList arrayList = new ArrayList();
        for (String str : all.keySet()) {
            Object obj = all.get(str);
            if (list != null) {
                set = yc.w.o0(list);
            } else {
                set = null;
            }
            if (SharedPreferencesPluginKt.preferencesFilter(str, obj, set)) {
                arrayList.add(str);
            }
        }
        Iterator it = arrayList.iterator();
        kotlin.jvm.internal.m.d(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            kotlin.jvm.internal.m.d(next, "next(...)");
            edit.remove((String) next);
        }
        edit.apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public Map<String, Object> getAll(List<String> list, SharedPreferencesPigeonOptions options) {
        Set set;
        Object value;
        kotlin.jvm.internal.m.e(options, "options");
        Map<String, ?> all = createSharedPreferences(options).getAll();
        kotlin.jvm.internal.m.d(all, "getAll(...)");
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Object value2 = entry.getValue();
            if (list != null) {
                set = yc.w.o0(list);
            } else {
                set = null;
            }
            if (SharedPreferencesPluginKt.preferencesFilter(key, value2, set) && (value = entry.getValue()) != null) {
                String key2 = entry.getKey();
                Object transformPref = SharedPreferencesPluginKt.transformPref(value, this.listEncoder);
                kotlin.jvm.internal.m.c(transformPref, "null cannot be cast to non-null type kotlin.Any");
                hashMap.put(key2, transformPref);
            }
        }
        return hashMap;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public Boolean getBool(String key, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        SharedPreferences createSharedPreferences = createSharedPreferences(options);
        if (createSharedPreferences.contains(key)) {
            return Boolean.valueOf(createSharedPreferences.getBoolean(key, true));
        }
        return null;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public Double getDouble(String key, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        SharedPreferences createSharedPreferences = createSharedPreferences(options);
        if (createSharedPreferences.contains(key)) {
            Object transformPref = SharedPreferencesPluginKt.transformPref(createSharedPreferences.getString(key, ""), this.listEncoder);
            kotlin.jvm.internal.m.c(transformPref, "null cannot be cast to non-null type kotlin.Double");
            return (Double) transformPref;
        }
        return null;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public Long getInt(String key, SharedPreferencesPigeonOptions options) {
        long j10;
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        SharedPreferences createSharedPreferences = createSharedPreferences(options);
        if (createSharedPreferences.contains(key)) {
            try {
                j10 = createSharedPreferences.getLong(key, 0L);
            } catch (ClassCastException unused) {
                j10 = createSharedPreferences.getInt(key, 0);
            }
            return Long.valueOf(j10);
        }
        return null;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public List<String> getKeys(List<String> list, SharedPreferencesPigeonOptions options) {
        List<String> k02;
        Set set;
        kotlin.jvm.internal.m.e(options, "options");
        Map<String, ?> all = createSharedPreferences(options).getAll();
        kotlin.jvm.internal.m.d(all, "getAll(...)");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            kotlin.jvm.internal.m.d(key, "<get-key>(...)");
            String str = key;
            Object value = entry.getValue();
            if (list != null) {
                set = yc.w.o0(list);
            } else {
                set = null;
            }
            if (SharedPreferencesPluginKt.preferencesFilter(str, value, set)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        k02 = yc.w.k0(linkedHashMap.keySet());
        return k02;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public List<String> getPlatformEncodedStringList(String key, SharedPreferencesPigeonOptions options) {
        boolean H;
        boolean H2;
        List list;
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        SharedPreferences createSharedPreferences = createSharedPreferences(options);
        ArrayList arrayList = null;
        if (createSharedPreferences.contains(key)) {
            String string = createSharedPreferences.getString(key, "");
            kotlin.jvm.internal.m.b(string);
            H = rd.y.H(string, SharedPreferencesPluginKt.LIST_PREFIX, false, 2, null);
            if (H) {
                H2 = rd.y.H(string, SharedPreferencesPluginKt.JSON_LIST_PREFIX, false, 2, null);
                if (!H2 && (list = (List) SharedPreferencesPluginKt.transformPref(createSharedPreferences.getString(key, ""), this.listEncoder)) != null) {
                    arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (obj instanceof String) {
                            arrayList.add(obj);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public String getString(String key, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        SharedPreferences createSharedPreferences = createSharedPreferences(options);
        if (createSharedPreferences.contains(key)) {
            return createSharedPreferences.getString(key, "");
        }
        return null;
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public StringListResult getStringList(String key, SharedPreferencesPigeonOptions options) {
        boolean H;
        boolean H2;
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        SharedPreferences createSharedPreferences = createSharedPreferences(options);
        if (!createSharedPreferences.contains(key)) {
            return null;
        }
        String string = createSharedPreferences.getString(key, "");
        kotlin.jvm.internal.m.b(string);
        H = rd.y.H(string, SharedPreferencesPluginKt.JSON_LIST_PREFIX, false, 2, null);
        if (!H) {
            H2 = rd.y.H(string, SharedPreferencesPluginKt.LIST_PREFIX, false, 2, null);
            if (H2) {
                return new StringListResult(null, StringListLookupResultType.PLATFORM_ENCODED);
            }
            return new StringListResult(null, StringListLookupResultType.UNEXPECTED_STRING);
        }
        return new StringListResult(string, StringListLookupResultType.JSON_ENCODED);
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setBool(String key, boolean z10, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        createSharedPreferences(options).edit().putBoolean(key, z10).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setDeprecatedStringList(String key, List<String> value, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        kotlin.jvm.internal.m.e(options, "options");
        String encode = this.listEncoder.encode(value);
        createSharedPreferences(options).edit().putString(key, SharedPreferencesPluginKt.LIST_PREFIX + encode).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setDouble(String key, double d10, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        SharedPreferences.Editor edit = createSharedPreferences(options).edit();
        edit.putString(key, SharedPreferencesPluginKt.DOUBLE_PREFIX + d10).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setEncodedStringList(String key, String value, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        kotlin.jvm.internal.m.e(options, "options");
        createSharedPreferences(options).edit().putString(key, value).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setInt(String key, long j10, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(options, "options");
        createSharedPreferences(options).edit().putLong(key, j10).apply();
    }

    @Override // io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApi
    public void setString(String key, String value, SharedPreferencesPigeonOptions options) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        kotlin.jvm.internal.m.e(options, "options");
        createSharedPreferences(options).edit().putString(key, value).apply();
    }

    public final void tearDown() {
        SharedPreferencesAsyncApi.Companion.setUp(this.messenger, null, "shared_preferences");
    }

    public /* synthetic */ SharedPreferencesBackend(BinaryMessenger binaryMessenger, Context context, SharedPreferencesListEncoder sharedPreferencesListEncoder, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(binaryMessenger, context, (i10 & 4) != 0 ? new ListEncoder() : sharedPreferencesListEncoder);
    }
}
