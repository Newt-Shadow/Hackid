package com.yandex.metrica.impl.ob;

import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class N5 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f10869a;

    /* renamed from: b  reason: collision with root package name */
    private Set<Integer> f10870b;

    /* renamed from: c  reason: collision with root package name */
    private int f10871c;

    /* renamed from: d  reason: collision with root package name */
    private int f10872d;

    public N5() {
        this(false, 0, 0, new HashSet());
    }

    public void a() {
        this.f10870b = new HashSet();
        this.f10872d = 0;
    }

    public Set<Integer> b() {
        return this.f10870b;
    }

    public int c() {
        return this.f10872d;
    }

    public int d() {
        return this.f10871c;
    }

    public boolean e() {
        return this.f10869a;
    }

    public N5(boolean z10, int i10, int i11, Set<Integer> set) {
        this.f10869a = z10;
        this.f10870b = set;
        this.f10871c = i10;
        this.f10872d = i11;
    }

    public void b(int i10) {
        this.f10871c = i10;
        this.f10872d = 0;
    }

    public void a(boolean z10) {
        this.f10869a = z10;
    }

    public void a(int i10) {
        this.f10870b.add(Integer.valueOf(i10));
        this.f10872d++;
    }
}
