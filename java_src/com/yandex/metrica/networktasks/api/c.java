package com.yandex.metrica.networktasks.api;
/* loaded from: classes2.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    final NetworkTask f14213a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14214b;

    private c(NetworkTask networkTask) {
        this.f14213a = networkTask;
        this.f14214b = networkTask.c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f14214b.equals(((c) obj).f14214b);
    }

    public int hashCode() {
        return this.f14214b.hashCode();
    }
}
