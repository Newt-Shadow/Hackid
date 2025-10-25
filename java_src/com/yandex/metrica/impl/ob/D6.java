package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public final class D6 {

    /* renamed from: a  reason: collision with root package name */
    private final String f9896a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9897b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f9898c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f9899d;

    /* renamed from: e  reason: collision with root package name */
    private final String f9900e;

    /* renamed from: f  reason: collision with root package name */
    private final Boolean f9901f;

    public D6(String str, String str2, Integer num, Integer num2, String str3, Boolean bool) {
        this.f9896a = str;
        this.f9897b = str2;
        this.f9898c = num;
        this.f9899d = num2;
        this.f9900e = str3;
        this.f9901f = bool;
    }

    public final String a() {
        return this.f9896a;
    }

    public final Integer b() {
        return this.f9899d;
    }

    public final String c() {
        return this.f9897b;
    }

    public final Integer d() {
        return this.f9898c;
    }

    public final String e() {
        return this.f9900e;
    }

    public final Boolean f() {
        return this.f9901f;
    }

    public D6(StackTraceElement stackTraceElement) {
        this(stackTraceElement.getClassName(), stackTraceElement.getFileName(), Integer.valueOf(stackTraceElement.getLineNumber()), null, stackTraceElement.getMethodName(), Boolean.valueOf(stackTraceElement.isNativeMethod()));
    }
}
