.class public final Lcom/posthog/surveys/PostHogNextSurveyQuestion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isSurveyCompleted:Z

.field private final questionIndex:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/posthog/surveys/PostHogNextSurveyQuestion;->questionIndex:I

    .line 3
    iput-boolean p2, p0, Lcom/posthog/surveys/PostHogNextSurveyQuestion;->isSurveyCompleted:Z

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/posthog/surveys/PostHogNextSurveyQuestion;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final getQuestionIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/surveys/PostHogNextSurveyQuestion;->questionIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final isSurveyCompleted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogNextSurveyQuestion;->isSurveyCompleted:Z

    .line 2
    .line 3
    return v0
.end method
