.class public final Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;
.super Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
.source "SourceFile"


# instance fields
.field private final choices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hasOpenChoice:Z

.field private final isMultipleChoice:Z

.field private final shuffleOptions:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/util/List;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ)V"
        }
    .end annotation

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
    const-string v0, "choices"

    .line 12
    .line 13
    invoke-static {p6, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p6, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->choices:Ljava/util/List;

    .line 20
    .line 21
    iput-boolean p7, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->hasOpenChoice:Z

    .line 22
    .line 23
    iput-boolean p8, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->shuffleOptions:Z

    .line 24
    .line 25
    iput-boolean p9, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->isMultipleChoice:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getChoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->choices:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasOpenChoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->hasOpenChoice:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShuffleOptions()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->shuffleOptions:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isMultipleChoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->isMultipleChoice:Z

    .line 2
    .line 3
    return v0
.end method
