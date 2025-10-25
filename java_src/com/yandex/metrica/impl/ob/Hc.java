package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.ob.C0756oc;
import com.yandex.metrica.impl.ob.E;
/* loaded from: classes2.dex */
public class Hc {

    /* renamed from: a  reason: collision with root package name */
    public final C0756oc.a f10196a;

    /* renamed from: b  reason: collision with root package name */
    private Long f10197b;

    /* renamed from: c  reason: collision with root package name */
    private long f10198c;

    /* renamed from: d  reason: collision with root package name */
    private long f10199d;

    /* renamed from: e  reason: collision with root package name */
    private Location f10200e;

    /* renamed from: f  reason: collision with root package name */
    private E.b.a f10201f;

    public Hc(C0756oc.a aVar, long j10, long j11, Location location, E.b.a aVar2, Long l10) {
        this.f10196a = aVar;
        this.f10197b = l10;
        this.f10198c = j10;
        this.f10199d = j11;
        this.f10200e = location;
        this.f10201f = aVar2;
    }

    public E.b.a a() {
        return this.f10201f;
    }

    public Long b() {
        return this.f10197b;
    }

    public Location c() {
        return this.f10200e;
    }

    public long d() {
        return this.f10199d;
    }

    public long e() {
        return this.f10198c;
    }

    public String toString() {
        return "LocationWrapper{collectionMode=" + this.f10196a + ", mIncrementalId=" + this.f10197b + ", mReceiveTimestamp=" + this.f10198c + ", mReceiveElapsedRealtime=" + this.f10199d + ", mLocation=" + this.f10200e + ", mChargeType=" + this.f10201f + '}';
    }
}
