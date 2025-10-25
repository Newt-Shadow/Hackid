package com.google.gson.internal;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class Excluder implements com.google.gson.w, Cloneable {

    /* renamed from: g  reason: collision with root package name */
    public static final Excluder f9133g = new Excluder();

    /* renamed from: d  reason: collision with root package name */
    private boolean f9137d;

    /* renamed from: a  reason: collision with root package name */
    private double f9134a = -1.0d;

    /* renamed from: b  reason: collision with root package name */
    private int f9135b = 136;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9136c = true;

    /* renamed from: e  reason: collision with root package name */
    private List f9138e = Collections.emptyList();

    /* renamed from: f  reason: collision with root package name */
    private List f9139f = Collections.emptyList();

    private static boolean d(Class cls) {
        if (cls.isMemberClass() && !b9.a.n(cls)) {
            return true;
        }
        return false;
    }

    private boolean e(z8.d dVar) {
        if (dVar == null) {
            return true;
        }
        if (this.f9134a >= dVar.value()) {
            return true;
        }
        return false;
    }

    private boolean f(z8.e eVar) {
        if (eVar == null) {
            return true;
        }
        if (this.f9134a < eVar.value()) {
            return true;
        }
        return false;
    }

    private boolean i(z8.d dVar, z8.e eVar) {
        if (e(dVar) && f(eVar)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean b(Class cls, boolean z10) {
        List list;
        if (this.f9134a != -1.0d && !i((z8.d) cls.getAnnotation(z8.d.class), (z8.e) cls.getAnnotation(z8.e.class))) {
            return true;
        }
        if (!this.f9136c && d(cls)) {
            return true;
        }
        if (!z10 && !Enum.class.isAssignableFrom(cls) && b9.a.l(cls)) {
            return true;
        }
        if (z10) {
            list = this.f9138e;
        } else {
            list = this.f9139f;
        }
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return false;
        }
        android.support.v4.media.session.b.a(it.next());
        throw null;
    }

    public boolean c(Field field, boolean z10) {
        List list;
        z8.a aVar;
        if ((this.f9135b & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f9134a != -1.0d && !i((z8.d) field.getAnnotation(z8.d.class), (z8.e) field.getAnnotation(z8.e.class))) || field.isSynthetic()) {
            return true;
        }
        if ((this.f9137d && ((aVar = (z8.a) field.getAnnotation(z8.a.class)) == null || (!z10 ? !aVar.deserialize() : !aVar.serialize()))) || b(field.getType(), z10)) {
            return true;
        }
        if (z10) {
            list = this.f9138e;
        } else {
            list = this.f9139f;
        }
        if (!list.isEmpty()) {
            new com.google.gson.a(field);
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.b.a(it.next());
                throw null;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.gson.w
    public TypeAdapter create(final Gson gson, final com.google.gson.reflect.a aVar) {
        Class c10 = aVar.c();
        final boolean b10 = b(c10, true);
        final boolean b11 = b(c10, false);
        if (!b10 && !b11) {
            return null;
        }
        return new TypeAdapter() { // from class: com.google.gson.internal.Excluder.1

            /* renamed from: a  reason: collision with root package name */
            private volatile TypeAdapter f9140a;

            private TypeAdapter f() {
                TypeAdapter typeAdapter = this.f9140a;
                if (typeAdapter == null) {
                    TypeAdapter q10 = gson.q(Excluder.this, aVar);
                    this.f9140a = q10;
                    return q10;
                }
                return typeAdapter;
            }

            @Override // com.google.gson.TypeAdapter
            public Object c(c9.a aVar2) {
                if (b11) {
                    aVar2.G();
                    return null;
                }
                return f().c(aVar2);
            }

            @Override // com.google.gson.TypeAdapter
            public void e(c9.c cVar, Object obj) {
                if (b10) {
                    cVar.x();
                } else {
                    f().e(cVar, obj);
                }
            }
        };
    }
}
