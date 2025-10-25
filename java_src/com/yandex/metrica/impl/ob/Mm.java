package com.yandex.metrica.impl.ob;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class Mm implements ThreadFactory {

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicInteger f10861b = new AtomicInteger(0);

    /* renamed from: a  reason: collision with root package name */
    private final String f10862a;

    public Mm(String str) {
        this.f10862a = str;
    }

    private String a() {
        String str = this.f10862a;
        return str + "-" + f10861b.incrementAndGet();
    }

    public static int c() {
        return f10861b.incrementAndGet();
    }

    public Km b() {
        return new Km(a());
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Lm(runnable, a());
    }

    public static Lm a(String str, Runnable runnable) {
        return new Lm(runnable, new Mm(str).a());
    }
}
