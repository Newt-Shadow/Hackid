package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.internal.e0;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.w;
import java.lang.reflect.Type;
/* loaded from: classes.dex */
public final class TreeTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {

    /* renamed from: a  reason: collision with root package name */
    private final p f9214a;

    /* renamed from: b  reason: collision with root package name */
    private final h f9215b;

    /* renamed from: c  reason: collision with root package name */
    final Gson f9216c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.gson.reflect.a f9217d;

    /* renamed from: e  reason: collision with root package name */
    private final w f9218e;

    /* renamed from: f  reason: collision with root package name */
    private final b f9219f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f9220g;

    /* renamed from: h  reason: collision with root package name */
    private volatile TypeAdapter f9221h;

    /* loaded from: classes.dex */
    private static final class SingleTypeFactory implements w {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.gson.reflect.a f9222a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f9223b;

        /* renamed from: c  reason: collision with root package name */
        private final Class f9224c;

        /* renamed from: d  reason: collision with root package name */
        private final p f9225d;

        /* renamed from: e  reason: collision with root package name */
        private final h f9226e;

        SingleTypeFactory(Object obj, com.google.gson.reflect.a aVar, boolean z10, Class cls) {
            p pVar;
            boolean z11;
            if (obj instanceof p) {
                pVar = (p) obj;
            } else {
                pVar = null;
            }
            this.f9225d = pVar;
            h hVar = obj instanceof h ? (h) obj : null;
            this.f9226e = hVar;
            if (pVar == null && hVar == null) {
                z11 = false;
            } else {
                z11 = true;
            }
            com.google.gson.internal.a.a(z11);
            this.f9222a = aVar;
            this.f9223b = z10;
            this.f9224c = cls;
        }

        @Override // com.google.gson.w
        public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
            boolean isAssignableFrom;
            com.google.gson.reflect.a aVar2 = this.f9222a;
            if (aVar2 != null) {
                if (!aVar2.equals(aVar) && (!this.f9223b || this.f9222a.d() != aVar.c())) {
                    isAssignableFrom = false;
                } else {
                    isAssignableFrom = true;
                }
            } else {
                isAssignableFrom = this.f9224c.isAssignableFrom(aVar.c());
            }
            if (isAssignableFrom) {
                return new TreeTypeAdapter(this.f9225d, this.f9226e, gson, aVar, this);
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    private final class b implements o, g {
        private b() {
        }

        @Override // com.google.gson.g
        public Object a(i iVar, Type type) {
            return TreeTypeAdapter.this.f9216c.i(iVar, type);
        }

        @Override // com.google.gson.o
        public i b(Object obj, Type type) {
            return TreeTypeAdapter.this.f9216c.C(obj, type);
        }

        @Override // com.google.gson.o
        public i c(Object obj) {
            return TreeTypeAdapter.this.f9216c.B(obj);
        }
    }

    public TreeTypeAdapter(p pVar, h hVar, Gson gson, com.google.gson.reflect.a aVar, w wVar, boolean z10) {
        this.f9219f = new b();
        this.f9214a = pVar;
        this.f9215b = hVar;
        this.f9216c = gson;
        this.f9217d = aVar;
        this.f9218e = wVar;
        this.f9220g = z10;
    }

    private TypeAdapter g() {
        TypeAdapter typeAdapter = this.f9221h;
        if (typeAdapter == null) {
            TypeAdapter q10 = this.f9216c.q(this.f9218e, this.f9217d);
            this.f9221h = q10;
            return q10;
        }
        return typeAdapter;
    }

    public static w h(com.google.gson.reflect.a aVar, Object obj) {
        boolean z10;
        if (aVar.d() == aVar.c()) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new SingleTypeFactory(obj, aVar, z10, null);
    }

    @Override // com.google.gson.TypeAdapter
    public Object c(c9.a aVar) {
        if (this.f9215b == null) {
            return g().c(aVar);
        }
        i a10 = e0.a(aVar);
        if (this.f9220g && a10.p()) {
            return null;
        }
        return this.f9215b.deserialize(a10, this.f9217d.d(), this.f9219f);
    }

    @Override // com.google.gson.TypeAdapter
    public void e(c cVar, Object obj) {
        p pVar = this.f9214a;
        if (pVar == null) {
            g().e(cVar, obj);
        } else if (this.f9220g && obj == null) {
            cVar.x();
        } else {
            e0.b(pVar.serialize(obj, this.f9217d.d(), this.f9219f), cVar);
        }
    }

    @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
    public TypeAdapter f() {
        if (this.f9214a != null) {
            return this;
        }
        return g();
    }

    public TreeTypeAdapter(p pVar, h hVar, Gson gson, com.google.gson.reflect.a aVar, w wVar) {
        this(pVar, hVar, gson, aVar, wVar, true);
    }
}
