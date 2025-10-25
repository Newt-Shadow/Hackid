package com.yandex.metrica.impl.ob;

import java.util.HashMap;
/* renamed from: com.yandex.metrica.impl.ob.am  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0417am extends HashMap<String, String> {

    /* renamed from: a  reason: collision with root package name */
    private int f11985a;

    public C0417am() {
        this.f11985a = 0;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    /* renamed from: a */
    public String put(String str, String str2) {
        if (!containsKey(str)) {
            if (str2 != null) {
                this.f11985a += str.length() + str2.length();
                return (String) super.put(str, str2);
            }
            return null;
        } else if (str2 == null) {
            return remove(str);
        } else {
            String str3 = get(str);
            this.f11985a += str2.length() - (str3 == null ? 0 : str3.length());
            return (String) super.put(str, str2);
        }
    }

    public C0417am(String str) {
        super(Tl.e(str));
        this.f11985a = 0;
        for (String str2 : keySet()) {
            String str3 = (String) get(str2);
            this.f11985a += str2.length() + (str3 == null ? 0 : str3.length());
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    /* renamed from: a */
    public String remove(Object obj) {
        if (containsKey(obj)) {
            String str = get(obj);
            this.f11985a -= ((String) obj).length() + (str == null ? 0 : str.length());
        }
        return (String) super.remove(obj);
    }

    public int a() {
        return this.f11985a;
    }
}
