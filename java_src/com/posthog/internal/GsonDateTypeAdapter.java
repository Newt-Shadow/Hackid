package com.posthog.internal;

import a9.a;
import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.p;
import eb.d;
import java.lang.reflect.Type;
import java.text.ParsePosition;
import java.util.Date;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class GsonDateTypeAdapter implements h, p {

    /* renamed from: a  reason: collision with root package name */
    private final d f9472a;

    public GsonDateTypeAdapter(d config) {
        m.e(config, "config");
        this.f9472a = config;
    }

    @Override // com.google.gson.h
    /* renamed from: a */
    public Date deserialize(i json, Type typeOfT, g context) {
        m.e(json, "json");
        m.e(typeOfT, "typeOfT");
        m.e(context, "context");
        try {
            return a.f(json.n(), new ParsePosition(0));
        } catch (Throwable th) {
            lb.i o10 = this.f9472a.o();
            o10.a(json.n() + " isn't a deserializable ISO8601 Date: " + th + '.');
            return null;
        }
    }

    @Override // com.google.gson.p
    /* renamed from: b */
    public i serialize(Date src, Type typeOfSrc, o context) {
        m.e(src, "src");
        m.e(typeOfSrc, "typeOfSrc");
        m.e(context, "context");
        try {
            return new n(a.b(src, true));
        } catch (Throwable th) {
            lb.i o10 = this.f9472a.o();
            o10.a(src + " isn't a serializable ISO8601 Date: " + th + '.');
            return null;
        }
    }
}
