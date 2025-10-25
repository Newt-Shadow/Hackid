package com.posthog.surveys;

import eb.d;
import id.l;
import id.p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import lb.i;
/* loaded from: classes.dex */
public final class PostHogSurveysDefaultDelegate implements PostHogSurveysDelegate {
    private d config;

    public PostHogSurveysDefaultDelegate(d dVar) {
        this.config = dVar;
    }

    @Override // com.posthog.surveys.PostHogSurveysDelegate
    public void cleanupSurveys() {
        i o10;
        d dVar = this.config;
        if (dVar != null && (o10 = dVar.o()) != null) {
            o10.a("Survey cleanup requested");
        }
    }

    @Override // com.posthog.surveys.PostHogSurveysDelegate
    public void renderSurvey(PostHogDisplaySurvey survey, l onSurveyShown, p onSurveyResponse, l onSurveyClosed) {
        i o10;
        i o11;
        m.e(survey, "survey");
        m.e(onSurveyShown, "onSurveyShown");
        m.e(onSurveyResponse, "onSurveyResponse");
        m.e(onSurveyClosed, "onSurveyClosed");
        d dVar = this.config;
        if (dVar != null && (o11 = dVar.o()) != null) {
            o11.a("Survey requested to be shown: " + survey.getId() + " - " + survey.getName());
        }
        d dVar2 = this.config;
        if (dVar2 != null && (o10 = dVar2.o()) != null) {
            o10.a("Implement your own PostHogSurveysDelegate to render surveys");
        }
    }

    public /* synthetic */ PostHogSurveysDefaultDelegate(d dVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : dVar);
    }
}
