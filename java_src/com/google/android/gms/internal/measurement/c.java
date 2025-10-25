package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private b f6329a;

    /* renamed from: b  reason: collision with root package name */
    private b f6330b;

    /* renamed from: c  reason: collision with root package name */
    private final List f6331c;

    public c() {
        this.f6329a = new b("", 0L, null);
        this.f6330b = new b("", 0L, null);
        this.f6331c = new ArrayList();
    }

    public final b a() {
        return this.f6329a;
    }

    public final void b(b bVar) {
        this.f6329a = bVar;
        this.f6330b = bVar.clone();
        this.f6331c.clear();
    }

    public final b c() {
        return this.f6330b;
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        c cVar = new c(this.f6329a.clone());
        for (b bVar : this.f6331c) {
            cVar.f6331c.add(bVar.clone());
        }
        return cVar;
    }

    public final void d(b bVar) {
        this.f6330b = bVar;
    }

    public final void e(String str, long j10, Map map) {
        HashMap hashMap = new HashMap();
        for (String str2 : map.keySet()) {
            hashMap.put(str2, b.h(str2, this.f6329a.e(str2), map.get(str2)));
        }
        this.f6331c.add(new b(str, j10, hashMap));
    }

    public final List f() {
        return this.f6331c;
    }

    public c(b bVar) {
        this.f6329a = bVar;
        this.f6330b = bVar.clone();
        this.f6331c = new ArrayList();
    }
}
