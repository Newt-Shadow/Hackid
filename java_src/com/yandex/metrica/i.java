package com.yandex.metrica;

import java.util.Map;
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private String f9651a;

    /* renamed from: b  reason: collision with root package name */
    private String f9652b;

    /* renamed from: c  reason: collision with root package name */
    private Map f9653c;

    public Map a() {
        return this.f9653c;
    }

    public void b(String str) {
        this.f9652b = str;
    }

    public void c(Map map) {
        this.f9653c = map;
    }

    public String d() {
        return this.f9652b;
    }

    public void e(String str) {
        this.f9651a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        String str = this.f9651a;
        if (str == null ? iVar.f9651a != null : !str.equals(iVar.f9651a)) {
            return false;
        }
        String str2 = this.f9652b;
        if (str2 == null ? iVar.f9652b != null : !str2.equals(iVar.f9652b)) {
            return false;
        }
        Map map = this.f9653c;
        Map map2 = iVar.f9653c;
        if (map != null) {
            return map.equals(map2);
        }
        if (map2 == null) {
            return true;
        }
        return false;
    }

    public String f() {
        return this.f9651a;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f9651a;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        String str2 = this.f9652b;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        Map map = this.f9653c;
        if (map != null) {
            i12 = map.hashCode();
        }
        return i14 + i12;
    }
}
