.class public final Lcom/posthog/surveys/SingleSurveyQuestion;
.super Lcom/posthog/surveys/SurveyQuestion;
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

.field private final hasOpenChoice:Ljava/lang/Boolean;

.field private final shuffleOptions:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/posthog/surveys/SurveyQuestion;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->choices:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->hasOpenChoice:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->shuffleOptions:Ljava/lang/Boolean;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/SingleSurveyQuestion;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/posthog/surveys/SingleSurveyQuestion;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->choices:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->hasOpenChoice:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->shuffleOptions:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/surveys/SingleSurveyQuestion;->copy(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/posthog/surveys/SingleSurveyQuestion;

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

    iget-object v0, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->choices:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->hasOpenChoice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->shuffleOptions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/posthog/surveys/SingleSurveyQuestion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/posthog/surveys/SingleSurveyQuestion;"
        }
    .end annotation

    new-instance v0, Lcom/posthog/surveys/SingleSurveyQuestion;

    invoke-direct {v0, p1, p2, p3}, Lcom/posthog/surveys/SingleSurveyQuestion;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/SingleSurveyQuestion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/SingleSurveyQuestion;

    iget-object v1, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->choices:Ljava/util/List;

    iget-object v3, p1, Lcom/posthog/surveys/SingleSurveyQuestion;->choices:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->hasOpenChoice:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/posthog/surveys/SingleSurveyQuestion;->hasOpenChoice:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->shuffleOptions:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/posthog/surveys/SingleSurveyQuestion;->shuffleOptions:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

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
    iget-object v0, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->choices:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasOpenChoice()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->hasOpenChoice:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShuffleOptions()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->shuffleOptions:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->choices:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->hasOpenChoice:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->shuffleOptions:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleSurveyQuestion(choices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->choices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasOpenChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->hasOpenChoice:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shuffleOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SingleSurveyQuestion;->shuffleOptions:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
