package io.appmetrica.analytics.impl;

import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.pg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1422pg {
    public static T7 a(String str) {
        HashMap hashMap;
        HashMap b10 = b(str);
        if (b10.isEmpty()) {
            b10 = b(Uri.decode(str));
        }
        String decode = Uri.decode((String) b10.get("appmetrica_deep_link"));
        if (!TextUtils.isEmpty(decode)) {
            HashMap b11 = b(decode);
            hashMap = new HashMap(b11.size());
            for (Map.Entry entry : b11.entrySet()) {
                hashMap.put(Uri.decode((String) entry.getKey()), Uri.decode((String) entry.getValue()));
            }
        } else {
            hashMap = null;
        }
        return new T7(decode, hashMap, str);
    }

    public static HashMap b(String str) {
        String[] split;
        HashMap hashMap = new HashMap();
        if (str != null) {
            int lastIndexOf = str.lastIndexOf(63);
            if (lastIndexOf >= 0) {
                str = str.substring(lastIndexOf + 1);
            }
            if (str.contains("=")) {
                for (String str2 : str.split("&")) {
                    int indexOf = str2.indexOf("=");
                    if (indexOf >= 0) {
                        hashMap.put(str2.substring(0, indexOf), str2.substring(indexOf + 1));
                    } else {
                        hashMap.put(str2, "");
                    }
                }
            }
        }
        return hashMap;
    }
}
