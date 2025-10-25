package com.yandex.metrica.networktasks.impl;

import android.net.Uri;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f14227a;

    public b(String str) {
        this.f14227a = b(str);
    }

    private final String b(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        Uri uri = Uri.parse(str);
        m.d(uri, "uri");
        return m.a("http", uri.getScheme()) ? uri.buildUpon().scheme("https").build().toString() : str;
    }

    public final String a() {
        return this.f14227a;
    }
}
