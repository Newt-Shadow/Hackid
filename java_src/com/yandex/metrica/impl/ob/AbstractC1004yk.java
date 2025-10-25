package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.yk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1004yk<T> {

    /* renamed from: a  reason: collision with root package name */
    private List<Object> f14023a;

    /* renamed from: b  reason: collision with root package name */
    private final C0932vk f14024b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1004yk(T t10, C0932vk c0932vk) {
        this.f14023a = c(t10);
        this.f14024b = c0932vk;
    }

    private List<Object> c(T t10) {
        Object c0884tk;
        Pattern pattern;
        Pattern pattern2;
        ArrayList arrayList = new ArrayList();
        if (t10 == null) {
            return arrayList;
        }
        int b10 = b(t10);
        List<C1029zl> a10 = a(t10);
        arrayList.add(new Zk(b10));
        for (C1029zl c1029zl : a10) {
            int ordinal = c1029zl.f14084a.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    c0884tk = null;
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            try {
                                pattern2 = Pattern.compile(c1029zl.f14085b);
                            } catch (Throwable unused) {
                                pattern2 = null;
                            }
                            if (pattern2 != null) {
                                c0884tk = new C0764ok(pattern2);
                            }
                        }
                    } else {
                        try {
                            pattern = Pattern.compile(c1029zl.f14085b);
                        } catch (Throwable unused2) {
                            pattern = null;
                        }
                        if (pattern != null) {
                            c0884tk = new Nk(pattern);
                        }
                    }
                } else {
                    c0884tk = new C0639jk(c1029zl.f14085b);
                }
            } else {
                c0884tk = new C0884tk(c1029zl.f14085b);
            }
            if (c0884tk != null) {
                arrayList.add(c0884tk);
            }
        }
        return A2.c(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0932vk a() {
        return this.f14024b;
    }

    abstract List<C1029zl> a(T t10);

    abstract int b(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Object> b() {
        return this.f14023a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(T t10) {
        this.f14024b.a();
        this.f14023a = c(t10);
    }
}
