package ac;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f287a = new a();

    private a() {
    }

    public static final Map a(Bundle bundle) {
        HashMap hashMap = new HashMap();
        if (bundle != null) {
            Set<String> keySet = bundle.keySet();
            m.d(keySet, "it.keySet()");
            for (String key : keySet) {
                byte[] value = bundle.getByteArray(key);
                if (value != null) {
                    m.d(key, "key");
                    m.d(value, "value");
                    hashMap.put(key, value);
                }
            }
        }
        return hashMap;
    }

    public static final Bundle b(Map input) {
        m.e(input, "input");
        Bundle bundle = new Bundle(input.size());
        for (Map.Entry entry : input.entrySet()) {
            bundle.putByteArray((String) entry.getKey(), (byte[]) entry.getValue());
        }
        return bundle;
    }
}
