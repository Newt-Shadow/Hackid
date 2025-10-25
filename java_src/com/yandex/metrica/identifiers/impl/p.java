package com.yandex.metrica.identifiers.impl;

import android.content.Intent;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final Intent f9677a;

    static {
        Intent intent = new Intent("com.yandex.android.advid.IDENTIFIER_SERVICE").setPackage("com.yandex.android.advid");
        kotlin.jvm.internal.m.d(intent, "Intent(\"com.yandex.andro…om.yandex.android.advid\")");
        f9677a = intent;
    }
}
