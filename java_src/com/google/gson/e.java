package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private Excluder f9112a = Excluder.f9133g;

    /* renamed from: b  reason: collision with root package name */
    private r f9113b = r.f9352a;

    /* renamed from: c  reason: collision with root package name */
    private c f9114c = b.f9099a;

    /* renamed from: d  reason: collision with root package name */
    private final Map f9115d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final List f9116e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final List f9117f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private boolean f9118g = false;

    /* renamed from: h  reason: collision with root package name */
    private String f9119h = Gson.B;

    /* renamed from: i  reason: collision with root package name */
    private int f9120i = 2;

    /* renamed from: j  reason: collision with root package name */
    private int f9121j = 2;

    /* renamed from: k  reason: collision with root package name */
    private boolean f9122k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f9123l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f9124m = true;

    /* renamed from: n  reason: collision with root package name */
    private d f9125n = Gson.A;

    /* renamed from: o  reason: collision with root package name */
    private boolean f9126o = false;

    /* renamed from: p  reason: collision with root package name */
    private t f9127p = Gson.f9066z;

    /* renamed from: q  reason: collision with root package name */
    private boolean f9128q = true;

    /* renamed from: r  reason: collision with root package name */
    private v f9129r = Gson.D;

    /* renamed from: s  reason: collision with root package name */
    private v f9130s = Gson.E;

    /* renamed from: t  reason: collision with root package name */
    private final ArrayDeque f9131t = new ArrayDeque();

    private static void a(String str, int i10, int i11, List list) {
        w wVar;
        w wVar2;
        boolean z10 = com.google.gson.internal.sql.a.f9311a;
        w wVar3 = null;
        if (str != null && !str.trim().isEmpty()) {
            wVar = DefaultDateTypeAdapter.a.f9162b.b(str);
            if (z10) {
                wVar3 = com.google.gson.internal.sql.a.f9313c.b(str);
                wVar2 = com.google.gson.internal.sql.a.f9312b.b(str);
            }
            wVar2 = null;
        } else if (i10 == 2 && i11 == 2) {
            return;
        } else {
            w a10 = DefaultDateTypeAdapter.a.f9162b.a(i10, i11);
            if (z10) {
                wVar3 = com.google.gson.internal.sql.a.f9313c.a(i10, i11);
                w a11 = com.google.gson.internal.sql.a.f9312b.a(i10, i11);
                wVar = a10;
                wVar2 = a11;
            } else {
                wVar = a10;
                wVar2 = null;
            }
        }
        list.add(wVar);
        if (z10) {
            list.add(wVar3);
            list.add(wVar2);
        }
    }

    private static boolean c(Type type) {
        if (type == Object.class) {
            return true;
        }
        return false;
    }

    public Gson b() {
        ArrayList arrayList = new ArrayList(this.f9116e.size() + this.f9117f.size() + 3);
        arrayList.addAll(this.f9116e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f9117f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        a(this.f9119h, this.f9120i, this.f9121j, arrayList);
        return new Gson(this.f9112a, this.f9114c, new HashMap(this.f9115d), this.f9118g, this.f9122k, this.f9126o, this.f9124m, this.f9125n, this.f9127p, this.f9123l, this.f9128q, this.f9113b, this.f9119h, this.f9120i, this.f9121j, new ArrayList(this.f9116e), new ArrayList(this.f9117f), arrayList, this.f9129r, this.f9130s, new ArrayList(this.f9131t));
    }

    public e d(Type type, Object obj) {
        boolean z10;
        Objects.requireNonNull(type);
        boolean z11 = obj instanceof p;
        if (!z11 && !(obj instanceof h) && !(obj instanceof TypeAdapter)) {
            z10 = false;
        } else {
            z10 = true;
        }
        com.google.gson.internal.a.a(z10);
        if (!c(type)) {
            if (z11 || (obj instanceof h)) {
                this.f9116e.add(TreeTypeAdapter.h(com.google.gson.reflect.a.b(type), obj));
            }
            if (obj instanceof TypeAdapter) {
                this.f9116e.add(TypeAdapters.a(com.google.gson.reflect.a.b(type), (TypeAdapter) obj));
            }
            return this;
        }
        throw new IllegalArgumentException("Cannot override built-in adapter for " + type);
    }

    public e e(w wVar) {
        Objects.requireNonNull(wVar);
        this.f9116e.add(wVar);
        return this;
    }

    public e f() {
        return h(t.LENIENT);
    }

    public e g(v vVar) {
        Objects.requireNonNull(vVar);
        this.f9129r = vVar;
        return this;
    }

    public e h(t tVar) {
        Objects.requireNonNull(tVar);
        this.f9127p = tVar;
        return this;
    }
}
