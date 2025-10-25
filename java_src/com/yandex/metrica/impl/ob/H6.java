package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class H6 {

    /* renamed from: a  reason: collision with root package name */
    public final F6 f10184a;

    /* renamed from: b  reason: collision with root package name */
    public final C0942w6 f10185b;

    /* renamed from: c  reason: collision with root package name */
    public final List<D6> f10186c;

    /* renamed from: d  reason: collision with root package name */
    public final String f10187d;

    /* renamed from: e  reason: collision with root package name */
    public final String f10188e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<String, String> f10189f;

    /* renamed from: g  reason: collision with root package name */
    public final String f10190g;

    /* renamed from: h  reason: collision with root package name */
    public final Boolean f10191h;

    public H6(F6 f62, C0942w6 c0942w6, List<D6> list, String str, String str2, Map<String, String> map, String str3, Boolean bool) {
        this.f10184a = f62;
        this.f10185b = c0942w6;
        this.f10186c = list;
        this.f10187d = str;
        this.f10188e = str2;
        this.f10189f = map;
        this.f10190g = str3;
        this.f10191h = bool;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        F6 f62 = this.f10184a;
        if (f62 != null) {
            for (D6 d62 : f62.d()) {
                sb2.append("at " + d62.a() + "." + d62.e() + "(" + d62.c() + ":" + d62.d() + ":" + d62.b() + ")\n");
            }
        }
        return "UnhandledException{exception=" + this.f10184a + "\n" + sb2.toString() + '}';
    }
}
