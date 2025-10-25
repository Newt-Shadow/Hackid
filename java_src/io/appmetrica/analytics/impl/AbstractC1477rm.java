package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.rm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1477rm {
    public static String a(Map map) {
        if (Rn.a(map)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry entry : map.entrySet()) {
            sb2.append((String) entry.getKey());
            sb2.append(":");
            sb2.append((String) entry.getValue());
            sb2.append(StringUtils.COMMA);
        }
        sb2.setLength(sb2.length() - 1);
        return sb2.toString();
    }

    public static HashMap b(Map map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (!TextUtils.isEmpty(str) && !str.contains(":") && !str.contains(StringUtils.COMMA) && !str.contains("&")) {
                    String str2 = (String) entry.getValue();
                    if (!TextUtils.isEmpty(str2) && ParseUtils.parseLong(str2, -1L) != -1) {
                        hashMap.put((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
        }
        return hashMap;
    }

    public static HashMap a(String str) {
        String[] split;
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split(StringUtils.COMMA)) {
                int indexOf = str2.indexOf(":");
                if (indexOf != -1) {
                    hashMap.put(str2.substring(0, indexOf), str2.substring(indexOf + 1));
                }
            }
        }
        return hashMap;
    }

    public static boolean a(HashMap hashMap) {
        if (hashMap == null || hashMap.isEmpty()) {
            return false;
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            try {
                Integer.parseInt((String) entry.getValue());
            } catch (Throwable unused) {
                return false;
            }
        }
        return true;
    }
}
