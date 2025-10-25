package com.yandex.metrica.impl.ob;

import android.os.Handler;
import android.os.Looper;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
/* loaded from: classes2.dex */
public class Im {

    /* renamed from: a  reason: collision with root package name */
    private final Hm f10450a;

    /* renamed from: b  reason: collision with root package name */
    private volatile IHandlerExecutor f10451b;

    /* renamed from: c  reason: collision with root package name */
    private volatile ICommonExecutor f10452c;

    /* renamed from: d  reason: collision with root package name */
    private volatile ICommonExecutor f10453d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Handler f10454e;

    public Im() {
        this(new Hm());
    }

    public ICommonExecutor a() {
        if (this.f10452c == null) {
            synchronized (this) {
                if (this.f10452c == null) {
                    this.f10450a.getClass();
                    this.f10452c = new Jm("YMM-APT");
                }
            }
        }
        return this.f10452c;
    }

    public IHandlerExecutor b() {
        if (this.f10451b == null) {
            synchronized (this) {
                if (this.f10451b == null) {
                    this.f10450a.getClass();
                    this.f10451b = new Jm("YMM-YM");
                }
            }
        }
        return this.f10451b;
    }

    public Handler c() {
        if (this.f10454e == null) {
            synchronized (this) {
                if (this.f10454e == null) {
                    this.f10450a.getClass();
                    this.f10454e = new Handler(Looper.getMainLooper());
                }
            }
        }
        return this.f10454e;
    }

    public ICommonExecutor d() {
        if (this.f10453d == null) {
            synchronized (this) {
                if (this.f10453d == null) {
                    this.f10450a.getClass();
                    this.f10453d = new Jm("YMM-RS");
                }
            }
        }
        return this.f10453d;
    }

    Im(Hm hm) {
        this.f10450a = hm;
    }
}
