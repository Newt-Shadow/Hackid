package io.appmetrica.analytics.impl;

import java.util.HashMap;
/* loaded from: classes2.dex */
public final class Rc extends HashMap {

    /* renamed from: a  reason: collision with root package name */
    public int f18885a;

    public Rc() {
        this.f18885a = 0;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    /* renamed from: a */
    public final String put(String str, String str2) {
        if (containsKey(str)) {
            int i10 = 0;
            if (str2 == null) {
                if (containsKey(str)) {
                    String str3 = (String) get(str);
                    int i11 = this.f18885a;
                    int length = str.length();
                    if (str3 != null) {
                        i10 = str3.length();
                    }
                    this.f18885a = i11 - (length + i10);
                }
                return (String) super.remove(str);
            }
            String str4 = (String) get(str);
            int i12 = this.f18885a;
            int length2 = str2.length();
            if (str4 != null) {
                i10 = str4.length();
            }
            this.f18885a = (length2 - i10) + i12;
            return (String) super.put(str, str2);
        } else if (str2 != null) {
            this.f18885a = str2.length() + str.length() + this.f18885a;
            return (String) super.put(str, str2);
        } else {
            return null;
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        int length;
        if (containsKey(obj)) {
            String str = (String) get(obj);
            int i10 = this.f18885a;
            int length2 = ((String) obj).length();
            if (str == null) {
                length = 0;
            } else {
                length = str.length();
            }
            this.f18885a = i10 - (length2 + length);
        }
        return (String) super.remove(obj);
    }

    public Rc(String str) {
        super(AbstractC1491sb.d(str));
        this.f18885a = 0;
        for (String str2 : keySet()) {
            String str3 = (String) get(str2);
            this.f18885a = str2.length() + (str3 == null ? 0 : str3.length()) + this.f18885a;
        }
    }
}
