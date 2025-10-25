package com.posthog.surveys;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class LinkSurveyQuestion extends SurveyQuestion {
    private final String link;

    public LinkSurveyQuestion(String str) {
        this.link = str;
    }

    public static /* synthetic */ LinkSurveyQuestion copy$default(LinkSurveyQuestion linkSurveyQuestion, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = linkSurveyQuestion.link;
        }
        return linkSurveyQuestion.copy(str);
    }

    public final String component1() {
        return this.link;
    }

    public final LinkSurveyQuestion copy(String str) {
        return new LinkSurveyQuestion(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LinkSurveyQuestion) && m.a(this.link, ((LinkSurveyQuestion) obj).link);
    }

    public final String getLink() {
        return this.link;
    }

    public int hashCode() {
        String str = this.link;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "LinkSurveyQuestion(link=" + this.link + ')';
    }
}
