.class public final Lcom/posthog/surveys/PostHogDisplayRatingQuestion;
.super Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
.source "SourceFile"


# instance fields
.field private final lowerBoundLabel:Ljava/lang/String;

.field private final ratingType:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

.field private final scaleLowerBound:I

.field private final scaleUpperBound:I

.field private final upperBoundLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "question"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "questionDescriptionContentType"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "ratingType"

    .line 12
    .line 13
    invoke-static {p6, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "lowerBoundLabel"

    .line 17
    .line 18
    invoke-static {p9, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "upperBoundLabel"

    .line 22
    .line 23
    invoke-static {p10, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object p6, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->ratingType:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 30
    .line 31
    iput p7, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->scaleLowerBound:I

    .line 32
    .line 33
    iput p8, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->scaleUpperBound:I

    .line 34
    .line 35
    iput-object p9, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->lowerBoundLabel:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p10, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->upperBoundLabel:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final getLowerBoundLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->lowerBoundLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRatingType()Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->ratingType:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScaleLowerBound()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->scaleLowerBound:I

    .line 2
    .line 3
    return v0
.end method

.method public final getScaleUpperBound()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->scaleUpperBound:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUpperBoundLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->upperBoundLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
