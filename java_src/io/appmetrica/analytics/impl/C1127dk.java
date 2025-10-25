package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.Looper;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* renamed from: io.appmetrica.analytics.impl.dk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1127dk {

    /* renamed from: a  reason: collision with root package name */
    public final C1102ck f19529a;

    /* renamed from: b  reason: collision with root package name */
    public volatile L9 f19530b;

    /* renamed from: c  reason: collision with root package name */
    public volatile L9 f19531c;

    /* renamed from: d  reason: collision with root package name */
    public volatile L9 f19532d;

    /* renamed from: e  reason: collision with root package name */
    public volatile L9 f19533e;

    /* renamed from: f  reason: collision with root package name */
    public volatile L9 f19534f;

    /* renamed from: g  reason: collision with root package name */
    public volatile L9 f19535g;

    /* renamed from: h  reason: collision with root package name */
    public volatile ExecutorC1077bk f19536h;

    public C1127dk() {
        this(new C1102ck());
    }

    public final IHandlerExecutor a() {
        if (this.f19535g == null) {
            synchronized (this) {
                if (this.f19535g == null) {
                    this.f19529a.getClass();
                    HandlerThreadC1392ob a10 = L9.a("IAA-SDE");
                    this.f19535g = new L9(a10, a10.getLooper(), new Handler(a10.getLooper()));
                }
            }
        }
        return this.f19535g;
    }

    public final IHandlerExecutor b() {
        if (this.f19530b == null) {
            synchronized (this) {
                if (this.f19530b == null) {
                    this.f19529a.getClass();
                    HandlerThreadC1392ob a10 = L9.a("IAA-SC");
                    this.f19530b = new L9(a10, a10.getLooper(), new Handler(a10.getLooper()));
                }
            }
        }
        return this.f19530b;
    }

    public final IHandlerExecutor c() {
        if (this.f19532d == null) {
            synchronized (this) {
                if (this.f19532d == null) {
                    this.f19529a.getClass();
                    HandlerThreadC1392ob a10 = L9.a("IAA-SMH-1");
                    this.f19532d = new L9(a10, a10.getLooper(), new Handler(a10.getLooper()));
                }
            }
        }
        return this.f19532d;
    }

    public final IHandlerExecutor d() {
        if (this.f19533e == null) {
            synchronized (this) {
                if (this.f19533e == null) {
                    this.f19529a.getClass();
                    HandlerThreadC1392ob a10 = L9.a("IAA-SNTPE");
                    this.f19533e = new L9(a10, a10.getLooper(), new Handler(a10.getLooper()));
                }
            }
        }
        return this.f19533e;
    }

    public final IHandlerExecutor e() {
        if (this.f19531c == null) {
            synchronized (this) {
                if (this.f19531c == null) {
                    this.f19529a.getClass();
                    HandlerThreadC1392ob a10 = L9.a("IAA-STE");
                    this.f19531c = new L9(a10, a10.getLooper(), new Handler(a10.getLooper()));
                }
            }
        }
        return this.f19531c;
    }

    public final Executor f() {
        if (this.f19536h == null) {
            synchronized (this) {
                if (this.f19536h == null) {
                    this.f19529a.getClass();
                    this.f19536h = new ExecutorC1077bk(new Handler(Looper.getMainLooper()));
                }
            }
        }
        return this.f19536h;
    }

    public C1127dk(C1102ck c1102ck) {
        new HashMap();
        this.f19529a = c1102ck;
    }
}
