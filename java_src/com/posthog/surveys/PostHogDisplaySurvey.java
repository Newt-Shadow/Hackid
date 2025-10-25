package com.posthog.surveys;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class PostHogDisplaySurvey {
    public static final Companion Companion = new Companion(null);
    private final PostHogDisplaySurveyAppearance appearance;
    private final Date endDate;

    /* renamed from: id  reason: collision with root package name */
    private final String f9492id;
    private final String name;
    private final List<PostHogDisplaySurveyQuestion> questions;
    private final Date startDate;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PostHogDisplaySurvey toDisplaySurvey(Survey survey) {
            PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance;
            m.e(survey, "survey");
            String id2 = survey.getId();
            String name = survey.getName();
            ArrayList arrayList = new ArrayList();
            for (SurveyQuestion surveyQuestion : survey.getQuestions()) {
                PostHogDisplaySurveyQuestion fromSurveyQuestion$posthog = PostHogDisplaySurveyQuestion.Companion.fromSurveyQuestion$posthog(surveyQuestion);
                if (fromSurveyQuestion$posthog != null) {
                    arrayList.add(fromSurveyQuestion$posthog);
                }
            }
            SurveyAppearance appearance = survey.getAppearance();
            if (appearance != null) {
                postHogDisplaySurveyAppearance = PostHogDisplaySurveyAppearance.Companion.fromSurveyAppearance$posthog(appearance);
            } else {
                postHogDisplaySurveyAppearance = null;
            }
            return new PostHogDisplaySurvey(id2, name, arrayList, postHogDisplaySurveyAppearance, survey.getStartDate(), survey.getEndDate());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PostHogDisplaySurvey(String id2, String name, List<? extends PostHogDisplaySurveyQuestion> questions, PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance, Date date, Date date2) {
        m.e(id2, "id");
        m.e(name, "name");
        m.e(questions, "questions");
        this.f9492id = id2;
        this.name = name;
        this.questions = questions;
        this.appearance = postHogDisplaySurveyAppearance;
        this.startDate = date;
        this.endDate = date2;
    }

    public static /* synthetic */ PostHogDisplaySurvey copy$default(PostHogDisplaySurvey postHogDisplaySurvey, String str, String str2, List list, PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance, Date date, Date date2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = postHogDisplaySurvey.f9492id;
        }
        if ((i10 & 2) != 0) {
            str2 = postHogDisplaySurvey.name;
        }
        String str3 = str2;
        List<PostHogDisplaySurveyQuestion> list2 = list;
        if ((i10 & 4) != 0) {
            list2 = postHogDisplaySurvey.questions;
        }
        List list3 = list2;
        if ((i10 & 8) != 0) {
            postHogDisplaySurveyAppearance = postHogDisplaySurvey.appearance;
        }
        PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance2 = postHogDisplaySurveyAppearance;
        if ((i10 & 16) != 0) {
            date = postHogDisplaySurvey.startDate;
        }
        Date date3 = date;
        if ((i10 & 32) != 0) {
            date2 = postHogDisplaySurvey.endDate;
        }
        return postHogDisplaySurvey.copy(str, str3, list3, postHogDisplaySurveyAppearance2, date3, date2);
    }

    public final String component1() {
        return this.f9492id;
    }

    public final String component2() {
        return this.name;
    }

    public final List<PostHogDisplaySurveyQuestion> component3() {
        return this.questions;
    }

    public final PostHogDisplaySurveyAppearance component4() {
        return this.appearance;
    }

    public final Date component5() {
        return this.startDate;
    }

    public final Date component6() {
        return this.endDate;
    }

    public final PostHogDisplaySurvey copy(String id2, String name, List<? extends PostHogDisplaySurveyQuestion> questions, PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance, Date date, Date date2) {
        m.e(id2, "id");
        m.e(name, "name");
        m.e(questions, "questions");
        return new PostHogDisplaySurvey(id2, name, questions, postHogDisplaySurveyAppearance, date, date2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PostHogDisplaySurvey) {
            PostHogDisplaySurvey postHogDisplaySurvey = (PostHogDisplaySurvey) obj;
            return m.a(this.f9492id, postHogDisplaySurvey.f9492id) && m.a(this.name, postHogDisplaySurvey.name) && m.a(this.questions, postHogDisplaySurvey.questions) && m.a(this.appearance, postHogDisplaySurvey.appearance) && m.a(this.startDate, postHogDisplaySurvey.startDate) && m.a(this.endDate, postHogDisplaySurvey.endDate);
        }
        return false;
    }

    public final PostHogDisplaySurveyAppearance getAppearance() {
        return this.appearance;
    }

    public final Date getEndDate() {
        return this.endDate;
    }

    public final String getId() {
        return this.f9492id;
    }

    public final String getName() {
        return this.name;
    }

    public final List<PostHogDisplaySurveyQuestion> getQuestions() {
        return this.questions;
    }

    public final Date getStartDate() {
        return this.startDate;
    }

    public int hashCode() {
        int hashCode = ((((this.f9492id.hashCode() * 31) + this.name.hashCode()) * 31) + this.questions.hashCode()) * 31;
        PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance = this.appearance;
        int hashCode2 = (hashCode + (postHogDisplaySurveyAppearance == null ? 0 : postHogDisplaySurveyAppearance.hashCode())) * 31;
        Date date = this.startDate;
        int hashCode3 = (hashCode2 + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.endDate;
        return hashCode3 + (date2 != null ? date2.hashCode() : 0);
    }

    public String toString() {
        return "PostHogDisplaySurvey(id=" + this.f9492id + ", name=" + this.name + ", questions=" + this.questions + ", appearance=" + this.appearance + ", startDate=" + this.startDate + ", endDate=" + this.endDate + ')';
    }

    public /* synthetic */ PostHogDisplaySurvey(String str, String str2, List list, PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance, Date date, Date date2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, list, (i10 & 8) != 0 ? null : postHogDisplaySurveyAppearance, (i10 & 16) != 0 ? null : date, (i10 & 32) != 0 ? null : date2);
    }
}
