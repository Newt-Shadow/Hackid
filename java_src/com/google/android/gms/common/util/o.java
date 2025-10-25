package com.google.android.gms.common.util;

import java.util.regex.Pattern;
/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f5924a = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean a(String str) {
        if (str != null && !str.trim().isEmpty()) {
            return false;
        }
        return true;
    }
}
