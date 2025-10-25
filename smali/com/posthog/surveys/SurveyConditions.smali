.class public final Lcom/posthog/surveys/SurveyConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final deviceTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceTypesMatchType:Lcom/posthog/surveys/SurveyMatchType;

.field private final events:Lcom/posthog/surveys/SurveyEventConditions;

.field private final seenSurveyWaitPeriodInDays:Ljava/lang/Integer;

.field private final selector:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final urlMatchType:Lcom/posthog/surveys/SurveyMatchType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/Integer;Lcom/posthog/surveys/SurveyEventConditions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyMatchType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/posthog/surveys/SurveyMatchType;",
            "Ljava/lang/Integer;",
            "Lcom/posthog/surveys/SurveyEventConditions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/posthog/surveys/SurveyConditions;->url:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/posthog/surveys/SurveyConditions;->urlMatchType:Lcom/posthog/surveys/SurveyMatchType;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/posthog/surveys/SurveyConditions;->selector:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypes:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypesMatchType:Lcom/posthog/surveys/SurveyMatchType;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/posthog/surveys/SurveyConditions;->seenSurveyWaitPeriodInDays:Ljava/lang/Integer;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/posthog/surveys/SurveyConditions;->events:Lcom/posthog/surveys/SurveyEventConditions;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/SurveyConditions;Ljava/lang/String;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/Integer;Lcom/posthog/surveys/SurveyEventConditions;ILjava/lang/Object;)Lcom/posthog/surveys/SurveyConditions;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/posthog/surveys/SurveyConditions;->url:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/posthog/surveys/SurveyConditions;->urlMatchType:Lcom/posthog/surveys/SurveyMatchType;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/posthog/surveys/SurveyConditions;->selector:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypes:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypesMatchType:Lcom/posthog/surveys/SurveyMatchType;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/posthog/surveys/SurveyConditions;->seenSurveyWaitPeriodInDays:Ljava/lang/Integer;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/posthog/surveys/SurveyConditions;->events:Lcom/posthog/surveys/SurveyEventConditions;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/posthog/surveys/SurveyConditions;->copy(Ljava/lang/String;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/Integer;Lcom/posthog/surveys/SurveyEventConditions;)Lcom/posthog/surveys/SurveyConditions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/posthog/surveys/SurveyMatchType;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->urlMatchType:Lcom/posthog/surveys/SurveyMatchType;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->selector:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypes:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Lcom/posthog/surveys/SurveyMatchType;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypesMatchType:Lcom/posthog/surveys/SurveyMatchType;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->seenSurveyWaitPeriodInDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Lcom/posthog/surveys/SurveyEventConditions;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->events:Lcom/posthog/surveys/SurveyEventConditions;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/Integer;Lcom/posthog/surveys/SurveyEventConditions;)Lcom/posthog/surveys/SurveyConditions;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyMatchType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/posthog/surveys/SurveyMatchType;",
            "Ljava/lang/Integer;",
            "Lcom/posthog/surveys/SurveyEventConditions;",
            ")",
            "Lcom/posthog/surveys/SurveyConditions;"
        }
    .end annotation

    new-instance v8, Lcom/posthog/surveys/SurveyConditions;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/posthog/surveys/SurveyConditions;-><init>(Ljava/lang/String;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/SurveyMatchType;Ljava/lang/Integer;Lcom/posthog/surveys/SurveyEventConditions;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/SurveyConditions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/SurveyConditions;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyConditions;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->urlMatchType:Lcom/posthog/surveys/SurveyMatchType;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyConditions;->urlMatchType:Lcom/posthog/surveys/SurveyMatchType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->selector:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyConditions;->selector:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyConditions;->deviceTypes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypesMatchType:Lcom/posthog/surveys/SurveyMatchType;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyConditions;->deviceTypesMatchType:Lcom/posthog/surveys/SurveyMatchType;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->seenSurveyWaitPeriodInDays:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyConditions;->seenSurveyWaitPeriodInDays:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->events:Lcom/posthog/surveys/SurveyEventConditions;

    iget-object p1, p1, Lcom/posthog/surveys/SurveyConditions;->events:Lcom/posthog/surveys/SurveyEventConditions;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDeviceTypes()Ljava/util/List;
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
    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeviceTypesMatchType()Lcom/posthog/surveys/SurveyMatchType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypesMatchType:Lcom/posthog/surveys/SurveyMatchType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEvents()Lcom/posthog/surveys/SurveyEventConditions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->events:Lcom/posthog/surveys/SurveyEventConditions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSeenSurveyWaitPeriodInDays()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->seenSurveyWaitPeriodInDays:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelector()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->selector:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrlMatchType()Lcom/posthog/surveys/SurveyMatchType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->urlMatchType:Lcom/posthog/surveys/SurveyMatchType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/posthog/surveys/SurveyConditions;->url:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/SurveyConditions;->urlMatchType:Lcom/posthog/surveys/SurveyMatchType;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/SurveyConditions;->selector:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypes:Ljava/util/List;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypesMatchType:Lcom/posthog/surveys/SurveyMatchType;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/SurveyConditions;->seenSurveyWaitPeriodInDays:Ljava/lang/Integer;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/SurveyConditions;->events:Lcom/posthog/surveys/SurveyEventConditions;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/posthog/surveys/SurveyEventConditions;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurveyConditions(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlMatchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->urlMatchType:Lcom/posthog/surveys/SurveyMatchType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->selector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceTypesMatchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->deviceTypesMatchType:Lcom/posthog/surveys/SurveyMatchType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seenSurveyWaitPeriodInDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->seenSurveyWaitPeriodInDays:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyConditions;->events:Lcom/posthog/surveys/SurveyEventConditions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
