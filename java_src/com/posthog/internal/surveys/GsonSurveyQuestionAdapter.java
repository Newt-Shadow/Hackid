package com.posthog.internal.surveys;

import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.o;
import com.google.gson.p;
import com.posthog.surveys.LinkSurveyQuestion;
import com.posthog.surveys.MultipleSurveyQuestion;
import com.posthog.surveys.OpenSurveyQuestion;
import com.posthog.surveys.RatingSurveyQuestion;
import com.posthog.surveys.SingleSurveyQuestion;
import com.posthog.surveys.SurveyQuestion;
import eb.d;
import java.lang.reflect.Type;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class GsonSurveyQuestionAdapter implements p, h {

    /* renamed from: a  reason: collision with root package name */
    private final d f9486a;

    public GsonSurveyQuestionAdapter(d config) {
        m.e(config, "config");
        this.f9486a = config;
    }

    @Override // com.google.gson.h
    /* renamed from: a */
    public SurveyQuestion deserialize(i json, Type typeOfT, g context) {
        SurveyQuestion surveyQuestion;
        m.e(json, "json");
        m.e(typeOfT, "typeOfT");
        m.e(context, "context");
        try {
            String n10 = json.l().A("type").n();
            if (n10 == null) {
                return null;
            }
            switch (n10.hashCode()) {
                case -938102371:
                    if (!n10.equals("rating")) {
                        return null;
                    }
                    surveyQuestion = (SurveyQuestion) context.a(json, RatingSurveyQuestion.class);
                    break;
                case 3321850:
                    if (!n10.equals("link")) {
                        return null;
                    }
                    surveyQuestion = (SurveyQuestion) context.a(json, LinkSurveyQuestion.class);
                    break;
                case 3417674:
                    if (!n10.equals("open")) {
                        return null;
                    }
                    surveyQuestion = (SurveyQuestion) context.a(json, OpenSurveyQuestion.class);
                    break;
                case 1669382832:
                    if (!n10.equals("multiple_choice")) {
                        return null;
                    }
                    surveyQuestion = (SurveyQuestion) context.a(json, MultipleSurveyQuestion.class);
                    break;
                case 1770845560:
                    if (!n10.equals("single_choice")) {
                        return null;
                    }
                    surveyQuestion = (SurveyQuestion) context.a(json, SingleSurveyQuestion.class);
                    break;
                default:
                    return null;
            }
            return surveyQuestion;
        } catch (Throwable th) {
            lb.i o10 = this.f9486a.o();
            o10.a(json.n() + " isn't a known type: " + th + '.');
            return null;
        }
    }

    @Override // com.google.gson.p
    /* renamed from: b */
    public i serialize(SurveyQuestion src, Type typeOfSrc, o context) {
        m.e(src, "src");
        m.e(typeOfSrc, "typeOfSrc");
        m.e(context, "context");
        i b10 = context.b(src, typeOfSrc);
        m.d(b10, "context.serialize(src, typeOfSrc)");
        return b10;
    }
}
