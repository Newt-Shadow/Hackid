package com.yandex.metrica.impl.ob;

import com.yandex.metrica.gpllibrary.a;
/* renamed from: com.yandex.metrica.impl.ob.ac  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0407ac {

    /* renamed from: a  reason: collision with root package name */
    public final a.b f11970a;

    /* renamed from: b  reason: collision with root package name */
    public final long f11971b;

    /* renamed from: c  reason: collision with root package name */
    public final long f11972c;

    public C0407ac(a.b bVar, long j10, long j11) {
        this.f11970a = bVar;
        this.f11971b = j10;
        this.f11972c = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0407ac.class != obj.getClass()) {
            return false;
        }
        C0407ac c0407ac = (C0407ac) obj;
        if (this.f11971b == c0407ac.f11971b && this.f11972c == c0407ac.f11972c && this.f11970a == c0407ac.f11970a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f11971b;
        long j11 = this.f11972c;
        return (((this.f11970a.hashCode() * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "GplArguments{priority=" + this.f11970a + ", durationSeconds=" + this.f11971b + ", intervalSeconds=" + this.f11972c + '}';
    }
}
