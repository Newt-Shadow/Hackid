.class public final Lcom/posthog/surveys/SurveyEventConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final repeatedActivation:Ljava/lang/Boolean;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyEventCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyEventCondition;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/posthog/surveys/SurveyEventConditions;->repeatedActivation:Ljava/lang/Boolean;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/posthog/surveys/SurveyEventConditions;->values:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/SurveyEventConditions;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lcom/posthog/surveys/SurveyEventConditions;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/posthog/surveys/SurveyEventConditions;->repeatedActivation:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/posthog/surveys/SurveyEventConditions;->values:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/posthog/surveys/SurveyEventConditions;->copy(Ljava/lang/Boolean;Ljava/util/List;)Lcom/posthog/surveys/SurveyEventConditions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SurveyEventConditions;->repeatedActivation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyEventCondition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/surveys/SurveyEventConditions;->values:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/util/List;)Lcom/posthog/surveys/SurveyEventConditions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyEventCondition;",
            ">;)",
            "Lcom/posthog/surveys/SurveyEventConditions;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/posthog/surveys/SurveyEventConditions;

    invoke-direct {v0, p1, p2}, Lcom/posthog/surveys/SurveyEventConditions;-><init>(Ljava/lang/Boolean;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/SurveyEventConditions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/SurveyEventConditions;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyEventConditions;->repeatedActivation:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyEventConditions;->repeatedActivation:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/surveys/SurveyEventConditions;->values:Ljava/util/List;

    iget-object p1, p1, Lcom/posthog/surveys/SurveyEventConditions;->values:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRepeatedActivation()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyEventConditions;->repeatedActivation:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyEventCondition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyEventConditions;->values:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/posthog/surveys/SurveyEventConditions;->repeatedActivation:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/SurveyEventConditions;->values:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurveyEventConditions(repeatedActivation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyEventConditions;->repeatedActivation:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyEventConditions;->values:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
