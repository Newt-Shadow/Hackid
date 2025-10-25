package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.wn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1603wn {

    /* renamed from: a  reason: collision with root package name */
    public final C1354mn f20880a;

    /* renamed from: b  reason: collision with root package name */
    public final P f20881b;

    /* renamed from: c  reason: collision with root package name */
    public final List f20882c;

    /* renamed from: d  reason: collision with root package name */
    public final String f20883d;

    /* renamed from: e  reason: collision with root package name */
    public final String f20884e;

    /* renamed from: f  reason: collision with root package name */
    public final Map f20885f;

    /* renamed from: g  reason: collision with root package name */
    public final String f20886g;

    /* renamed from: h  reason: collision with root package name */
    public final Boolean f20887h;

    public C1603wn(C1354mn c1354mn, P p10, ArrayList arrayList, String str, String str2, Map map, String str3, Boolean bool) {
        this.f20880a = c1354mn;
        this.f20881b = p10;
        this.f20882c = arrayList;
        this.f20883d = str;
        this.f20884e = str2;
        this.f20885f = map;
        this.f20886g = str3;
        this.f20887h = bool;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        C1354mn c1354mn = this.f20880a;
        if (c1354mn != null) {
            for (C1402ol c1402ol : c1354mn.f20142c) {
                sb2.append("at " + c1402ol.f20310a + "." + c1402ol.f20314e + "(" + c1402ol.f20311b + ":" + c1402ol.f20312c + ":" + c1402ol.f20313d + ")\n");
            }
        }
        return "UnhandledException{exception=" + this.f20880a + "\n" + sb2.toString() + '}';
    }
}
