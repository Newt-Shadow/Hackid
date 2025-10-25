package lb;

import com.google.gson.Gson;
import com.posthog.internal.GsonDateTypeAdapter;
import com.posthog.internal.replay.GsonRREventTypeSerializer;
import com.posthog.internal.replay.GsonRRIncrementalSourceSerializer;
import com.posthog.internal.replay.GsonRRMouseInteractionsSerializer;
import com.posthog.internal.replay.RREventType;
import com.posthog.internal.replay.RRIncrementalSource;
import com.posthog.internal.replay.RRMouseInteraction;
import com.posthog.internal.surveys.GsonSurveyAppearancePositionAdapter;
import com.posthog.internal.surveys.GsonSurveyAppearanceWidgetTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyMatchTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyQuestionAdapter;
import com.posthog.internal.surveys.GsonSurveyQuestionBranchingAdapter;
import com.posthog.internal.surveys.GsonSurveyQuestionTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyRatingDisplayTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyTextContentTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyTypeAdapter;
import com.posthog.surveys.SurveyAppearancePosition;
import com.posthog.surveys.SurveyAppearanceWidgetType;
import com.posthog.surveys.SurveyMatchType;
import com.posthog.surveys.SurveyQuestion;
import com.posthog.surveys.SurveyQuestionBranching;
import com.posthog.surveys.SurveyQuestionType;
import com.posthog.surveys.SurveyRatingDisplayType;
import com.posthog.surveys.SurveyTextContentType;
import com.posthog.surveys.SurveyType;
import java.util.Date;
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private final eb.d f25407a;

    /* renamed from: b  reason: collision with root package name */
    private final Gson f25408b;

    public b0(eb.d config) {
        kotlin.jvm.internal.m.e(config, "config");
        this.f25407a = config;
        com.google.gson.e eVar = new com.google.gson.e();
        eVar.g(new a());
        eVar.d(Date.class, new GsonDateTypeAdapter(config)).f();
        eVar.d(RREventType.class, new GsonRREventTypeSerializer(config));
        eVar.d(RRIncrementalSource.class, new GsonRRIncrementalSourceSerializer(config));
        eVar.d(RRMouseInteraction.class, new GsonRRMouseInteractionsSerializer(config));
        eVar.d(SurveyAppearancePosition.class, new GsonSurveyAppearancePositionAdapter(config));
        eVar.d(SurveyAppearanceWidgetType.class, new GsonSurveyAppearanceWidgetTypeAdapter(config));
        eVar.d(SurveyMatchType.class, new GsonSurveyMatchTypeAdapter(config));
        eVar.d(SurveyQuestionType.class, new GsonSurveyQuestionTypeAdapter(config));
        eVar.d(SurveyRatingDisplayType.class, new GsonSurveyRatingDisplayTypeAdapter(config));
        eVar.d(SurveyTextContentType.class, new GsonSurveyTextContentTypeAdapter(config));
        eVar.d(SurveyType.class, new GsonSurveyTypeAdapter(config));
        eVar.d(SurveyQuestion.class, new GsonSurveyQuestionAdapter(config));
        eVar.d(SurveyQuestionBranching.class, new GsonSurveyQuestionBranchingAdapter(config));
        Gson b10 = eVar.b();
        kotlin.jvm.internal.m.d(b10, "GsonBuilder().apply {\n  …nfig))\n        }.create()");
        this.f25408b = b10;
    }

    public final Object a(String json) {
        kotlin.jvm.internal.m.e(json, "json");
        return this.f25408b.m(json, Object.class);
    }

    public final Gson b() {
        return this.f25408b;
    }

    public final String c(Object value) {
        kotlin.jvm.internal.m.e(value, "value");
        return this.f25408b.w(value, Object.class);
    }
}
