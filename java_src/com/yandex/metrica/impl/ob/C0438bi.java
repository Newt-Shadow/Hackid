package com.yandex.metrica.impl.ob;

import android.util.Pair;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.bi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0438bi {

    /* renamed from: a  reason: collision with root package name */
    public final String f12063a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12064b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12065c;

    /* renamed from: d  reason: collision with root package name */
    public final List<Pair<String, String>> f12066d;

    /* renamed from: e  reason: collision with root package name */
    public final Long f12067e;

    /* renamed from: f  reason: collision with root package name */
    public final List<a> f12068f;

    /* renamed from: com.yandex.metrica.impl.ob.bi$a */
    /* loaded from: classes2.dex */
    public enum a {
        WIFI,
        CELL
    }

    public C0438bi(String str, String str2, String str3, List<Pair<String, String>> list, Long l10, List<a> list2) {
        this.f12063a = str;
        this.f12064b = str2;
        this.f12065c = str3;
        this.f12066d = A2.c(list);
        this.f12067e = l10;
        this.f12068f = list2;
    }
}
