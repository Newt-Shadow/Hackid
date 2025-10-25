package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.YandexMetrica;
/* renamed from: com.yandex.metrica.impl.ob.z3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1011z3 {

    /* renamed from: a  reason: collision with root package name */
    private final A3 f14054a;

    /* renamed from: b  reason: collision with root package name */
    private final CounterConfiguration f14055b;

    public C1011z3(Bundle bundle) {
        this.f14054a = A3.a(bundle);
        this.f14055b = CounterConfiguration.a(bundle);
    }

    public A3 a() {
        return this.f14054a;
    }

    public CounterConfiguration b() {
        return this.f14055b;
    }

    public String toString() {
        return "ClientConfiguration{mProcessConfiguration=" + this.f14054a + ", mCounterConfiguration=" + this.f14055b + '}';
    }

    public static boolean a(C1011z3 c1011z3, Context context) {
        return (c1011z3.f14054a != null && context.getPackageName().equals(c1011z3.f14054a.f()) && c1011z3.f14054a.i() == YandexMetrica.getLibraryApiLevel()) ? false : true;
    }

    public C1011z3(A3 a32, CounterConfiguration counterConfiguration) {
        this.f14054a = a32;
        this.f14055b = counterConfiguration;
    }
}
