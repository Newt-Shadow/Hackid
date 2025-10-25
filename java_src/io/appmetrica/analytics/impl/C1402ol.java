package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.ol  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1402ol {

    /* renamed from: a  reason: collision with root package name */
    public final String f20310a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20311b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f20312c;

    /* renamed from: d  reason: collision with root package name */
    public final Integer f20313d;

    /* renamed from: e  reason: collision with root package name */
    public final String f20314e;

    /* renamed from: f  reason: collision with root package name */
    public final Boolean f20315f;

    public C1402ol(String str, String str2, Integer num, Integer num2, String str3, Boolean bool) {
        this.f20310a = str;
        this.f20311b = str2;
        this.f20312c = num;
        this.f20313d = num2;
        this.f20314e = str3;
        this.f20315f = bool;
    }

    public C1402ol(StackTraceElement stackTraceElement) {
        this(stackTraceElement.getClassName(), stackTraceElement.getFileName(), Integer.valueOf(stackTraceElement.getLineNumber()), null, stackTraceElement.getMethodName(), Boolean.valueOf(stackTraceElement.isNativeMethod()));
    }
}
