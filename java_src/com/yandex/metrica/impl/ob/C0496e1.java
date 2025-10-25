package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.yandex.metrica.impl.ob.e1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0496e1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f12261a = Pattern.compile("com\\.yandex\\.metrica\\.(?!push)");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f12262b = Pattern.compile("com\\.yandex\\.metrica\\.push\\..*");

    public boolean a(List<StackTraceElement> list) {
        return a(list, f12261a);
    }

    public boolean b(List<StackTraceElement> list) {
        return a(list, f12262b);
    }

    private boolean a(List<StackTraceElement> list, Pattern pattern) {
        for (StackTraceElement stackTraceElement : list) {
            if (pattern.matcher(stackTraceElement.getClassName()).find()) {
                return true;
            }
        }
        return false;
    }
}
