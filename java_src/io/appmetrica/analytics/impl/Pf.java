package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import java.io.File;
/* loaded from: classes2.dex */
public final class Pf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final File f18783a;

    /* renamed from: b  reason: collision with root package name */
    public final Function f18784b;

    /* renamed from: c  reason: collision with root package name */
    public final Consumer f18785c;

    /* renamed from: d  reason: collision with root package name */
    public final Consumer f18786d;

    public Pf(File file, Function function, Consumer consumer, Consumer consumer2) {
        this.f18783a = file;
        this.f18784b = function;
        this.f18785c = consumer;
        this.f18786d = consumer2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f18783a.exists()) {
            try {
                Object apply = this.f18784b.apply(this.f18783a);
                if (apply != null) {
                    this.f18786d.consume(apply);
                }
            } catch (Throwable unused) {
            }
            this.f18785c.consume(this.f18783a);
        }
    }
}
