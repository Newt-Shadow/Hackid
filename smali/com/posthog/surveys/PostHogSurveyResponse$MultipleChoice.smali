.class public final Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;
.super Lcom/posthog/surveys/PostHogSurveyResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/PostHogSurveyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultipleChoice"
.end annotation


# instance fields
.field private final selectedChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/posthog/surveys/PostHogSurveyResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->selectedChoices:Ljava/util/List;

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;Ljava/util/List;ILjava/lang/Object;)Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->selectedChoices:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->copy(Ljava/util/List;)Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->selectedChoices:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;"
        }
    .end annotation

    new-instance v0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;

    invoke-direct {v0, p1}, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->selectedChoices:Ljava/util/List;

    iget-object p1, p1, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->selectedChoices:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSelectedChoices()Ljava/util/List;
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
    iget-object v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->selectedChoices:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->selectedChoices:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultipleChoice(selectedChoices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->selectedChoices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
