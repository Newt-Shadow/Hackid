package com.posthog.internal.surveys;

import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.o;
import com.google.gson.p;
import com.posthog.surveys.SurveyAppearanceWidgetType;
import eb.d;
import java.lang.reflect.Type;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class GsonSurveyAppearanceWidgetTypeAdapter implements p, h {

    /* renamed from: a  reason: collision with root package name */
    private final d f9484a;

    public GsonSurveyAppearanceWidgetTypeAdapter(d config) {
        m.e(config, "config");
        this.f9484a = config;
    }

    @Override // com.google.gson.h
    /* renamed from: a */
    public SurveyAppearanceWidgetType deserialize(i json, Type typeOfT, g context) {
        m.e(json, "json");
        m.e(typeOfT, "typeOfT");
        m.e(context, "context");
        try {
            SurveyAppearanceWidgetType.Companion companion = SurveyAppearanceWidgetType.Companion;
            String n10 = json.n();
            m.d(n10, "json.asString");
            return companion.fromValue(n10);
        } catch (Throwable th) {
            lb.i o10 = this.f9484a.o();
            o10.a(json.n() + " isn't a known type: " + th + '.');
            return null;
        }
    }

    @Override // com.google.gson.p
    /* renamed from: b */
    public i serialize(SurveyAppearanceWidgetType src, Type typeOfSrc, o context) {
        m.e(src, "src");
        m.e(typeOfSrc, "typeOfSrc");
        m.e(context, "context");
        i c10 = context.c(src.getValue());
        m.d(c10, "context.serialize(src.value)");
        return c10;
    }
}
