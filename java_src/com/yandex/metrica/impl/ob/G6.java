package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class G6 {

    /* renamed from: a  reason: collision with root package name */
    public static final G6 f10117a = new G6();

    private G6() {
    }

    public static final F6 a(Throwable th) {
        return f10117a.a(th, 1, 0);
    }

    private final F6 a(Throwable th, int i10, int i11) {
        StackTraceElement[] stackTraceElementArr;
        F6 f62;
        ArrayList arrayList;
        String name = th.getClass().getName();
        String message = th.getMessage();
        try {
            stackTraceElementArr = th.getStackTrace();
        } catch (Throwable unused) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        kotlin.jvm.internal.m.d(stackTraceElementArr, "Utils.getStackTraceSafely(throwable)");
        ArrayList arrayList2 = new ArrayList(stackTraceElementArr.length);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList2.add(new D6(stackTraceElement));
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            if (!(i11 < i10)) {
                cause = null;
            }
            if (cause != null) {
                f62 = f10117a.a(cause, 30, i11 + 1);
                if (A2.a(19) || i11 >= i10) {
                    arrayList = null;
                } else {
                    Throwable[] suppressed = th.getSuppressed();
                    kotlin.jvm.internal.m.d(suppressed, "throwable.suppressed");
                    ArrayList arrayList3 = new ArrayList(suppressed.length);
                    for (Throwable it : suppressed) {
                        G6 g62 = f10117a;
                        kotlin.jvm.internal.m.d(it, "it");
                        arrayList3.add(g62.a(it, 1, i11));
                    }
                    arrayList = arrayList3;
                }
                return new F6(name, message, arrayList2, f62, arrayList);
            }
        }
        f62 = null;
        if (A2.a(19)) {
        }
        arrayList = null;
        return new F6(name, message, arrayList2, f62, arrayList);
    }
}
