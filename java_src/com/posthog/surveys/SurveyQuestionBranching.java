package com.posthog.surveys;

import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class SurveyQuestionBranching {

    /* loaded from: classes.dex */
    public static final class End extends SurveyQuestionBranching {
        public static final End INSTANCE = new End();

        private End() {
            super(null);
        }
    }

    /* loaded from: classes.dex */
    public static final class Next extends SurveyQuestionBranching {
        public static final Next INSTANCE = new Next();

        private Next() {
            super(null);
        }
    }

    /* loaded from: classes.dex */
    public static final class ResponseBased extends SurveyQuestionBranching {
        private final Map<String, Object> responseValues;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBased(Map<String, ? extends Object> responseValues) {
            super(null);
            m.e(responseValues, "responseValues");
            this.responseValues = responseValues;
        }

        public final Map<String, Object> getResponseValues() {
            return this.responseValues;
        }
    }

    /* loaded from: classes.dex */
    public static final class SpecificQuestion extends SurveyQuestionBranching {
        private final int index;

        public SpecificQuestion(int i10) {
            super(null);
            this.index = i10;
        }

        public final int getIndex() {
            return this.index;
        }
    }

    private SurveyQuestionBranching() {
    }

    public /* synthetic */ SurveyQuestionBranching(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
