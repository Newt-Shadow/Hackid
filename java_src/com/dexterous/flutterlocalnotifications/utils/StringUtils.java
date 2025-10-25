package com.dexterous.flutterlocalnotifications.utils;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes.dex */
public class StringUtils {
    public static Boolean isNullOrEmpty(String str) {
        boolean z10;
        if (str != null && !str.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }
}
