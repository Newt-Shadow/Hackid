package io.appmetrica.analytics.networktasks.impl;

import android.net.Uri;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f21249a;

    public c(String str) {
        this.f21249a = a(str);
    }

    public static String a(String str) {
        if (str != null && str.length() != 0) {
            Uri parse = Uri.parse(str);
            if (m.a("http", parse.getScheme())) {
                return parse.buildUpon().scheme("https").build().toString();
            }
            return str;
        }
        return str;
    }
}
