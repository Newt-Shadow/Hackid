package com.posthog.surveys;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public class PostHogDisplaySurveyQuestion {
    public static final Companion Companion = new Companion(null);
    private final String buttonText;
    private final boolean isOptional;
    private final String question;
    private final String questionDescription;
    private final PostHogDisplaySurveyTextContentType questionDescriptionContentType;

    /* loaded from: classes.dex */
    public static final class Companion {

        /* loaded from: classes.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;
            public static final /* synthetic */ int[] $EnumSwitchMapping$2;

            static {
                int[] iArr = new int[SurveyTextContentType.values().length];
                try {
                    iArr[SurveyTextContentType.HTML.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SurveyTextContentType.TEXT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[SurveyRatingDisplayType.values().length];
                try {
                    iArr2[SurveyRatingDisplayType.EMOJI.ordinal()] = 1;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr2[SurveyRatingDisplayType.NUMBER.ordinal()] = 2;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$1 = iArr2;
                int[] iArr3 = new int[SurveyQuestionType.values().length];
                try {
                    iArr3[SurveyQuestionType.OPEN.ordinal()] = 1;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr3[SurveyQuestionType.LINK.ordinal()] = 2;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr3[SurveyQuestionType.RATING.ordinal()] = 3;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr3[SurveyQuestionType.SINGLE_CHOICE.ordinal()] = 4;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr3[SurveyQuestionType.MULTIPLE_CHOICE.ordinal()] = 5;
                } catch (NoSuchFieldError unused9) {
                }
                $EnumSwitchMapping$2 = iArr3;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
            if (r1 == null) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0120, code lost:
            if (r1 == null) goto L94;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.posthog.surveys.PostHogDisplaySurveyQuestion fromSurveyQuestion$posthog(com.posthog.surveys.SurveyQuestion r14) {
            /*
                Method dump skipped, instructions count: 488
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.posthog.surveys.PostHogDisplaySurveyQuestion.Companion.fromSurveyQuestion$posthog(com.posthog.surveys.SurveyQuestion):com.posthog.surveys.PostHogDisplaySurveyQuestion");
        }
    }

    public PostHogDisplaySurveyQuestion(String question, String str, PostHogDisplaySurveyTextContentType questionDescriptionContentType, boolean z10, String str2) {
        m.e(question, "question");
        m.e(questionDescriptionContentType, "questionDescriptionContentType");
        this.question = question;
        this.questionDescription = str;
        this.questionDescriptionContentType = questionDescriptionContentType;
        this.isOptional = z10;
        this.buttonText = str2;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getQuestion() {
        return this.question;
    }

    public final String getQuestionDescription() {
        return this.questionDescription;
    }

    public final PostHogDisplaySurveyTextContentType getQuestionDescriptionContentType() {
        return this.questionDescriptionContentType;
    }

    public final boolean isOptional() {
        return this.isOptional;
    }
}
