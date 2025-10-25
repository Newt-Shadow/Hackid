package com.posthog.internal.replay;

import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.o;
import com.google.gson.p;
import eb.d;
import java.lang.reflect.Type;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class GsonRREventTypeSerializer implements p, h {
    private final d config;

    public GsonRREventTypeSerializer(d config) {
        m.e(config, "config");
        this.config = config;
    }

    @Override // com.google.gson.h
    public RREventType deserialize(i json, Type typeOfT, g context) {
        m.e(json, "json");
        m.e(typeOfT, "typeOfT");
        m.e(context, "context");
        try {
            return RREventType.Companion.fromValue(json.g());
        } catch (Throwable th) {
            lb.i o10 = this.config.o();
            o10.a(json.g() + " isn't a known type: " + th + '.');
            return null;
        }
    }

    @Override // com.google.gson.p
    public i serialize(RREventType src, Type typeOfSrc, o context) {
        m.e(src, "src");
        m.e(typeOfSrc, "typeOfSrc");
        m.e(context, "context");
        i c10 = context.c(Integer.valueOf(src.getValue()));
        m.d(c10, "context.serialize(src.value)");
        return c10;
    }
}
