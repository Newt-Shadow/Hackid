package com.yandex.metrica.impl.ob;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class E6 {

    /* renamed from: a  reason: collision with root package name */
    public final String f9974a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9975b;

    /* renamed from: c  reason: collision with root package name */
    public final long f9976c;

    /* renamed from: d  reason: collision with root package name */
    public final String f9977d;

    /* renamed from: e  reason: collision with root package name */
    public final Integer f9978e;

    /* renamed from: f  reason: collision with root package name */
    public final List<StackTraceElement> f9979f;

    public E6(String str, int i10, long j10, String str2, Integer num, List<StackTraceElement> list) {
        List<StackTraceElement> c10;
        this.f9974a = str;
        this.f9975b = i10;
        this.f9976c = j10;
        this.f9977d = str2;
        this.f9978e = num;
        if (list == null) {
            c10 = Collections.emptyList();
        } else {
            c10 = A2.c(list);
        }
        this.f9979f = c10;
    }
}
