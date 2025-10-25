.class public final Lcom/posthog/surveys/RatingSurveyQuestion;
.super Lcom/posthog/surveys/SurveyQuestion;
.source "SourceFile"


# instance fields
.field private final display:Lcom/posthog/surveys/SurveyRatingDisplayType;

.field private final lowerBoundLabel:Ljava/lang/String;

.field private final scale:Ljava/lang/Integer;

.field private final upperBoundLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/posthog/surveys/SurveyRatingDisplayType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/surveys/SurveyQuestion;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/posthog/surveys/RatingSurveyQuestion;->display:Lcom/posthog/surveys/SurveyRatingDisplayType;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/posthog/surveys/RatingSurveyQuestion;->scale:Ljava/lang/Integer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/posthog/surveys/RatingSurveyQuestion;->lowerBoundLabel:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/posthog/surveys/RatingSurveyQuestion;->upperBoundLabel:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getDisplay()Lcom/posthog/surveys/SurveyRatingDisplayType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/RatingSurveyQuestion;->display:Lcom/posthog/surveys/SurveyRatingDisplayType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLowerBoundLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/RatingSurveyQuestion;->lowerBoundLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScale()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/RatingSurveyQuestion;->scale:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpperBoundLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/RatingSurveyQuestion;->upperBoundLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
