.class public final Lcom/posthog/surveys/Survey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appearance:Lcom/posthog/surveys/SurveyAppearance;

.field private final conditions:Lcom/posthog/surveys/SurveyConditions;

.field private final currentIteration:Ljava/lang/Integer;
    .annotation runtime Lz8/c;
        value = "current_iteration"
    .end annotation
.end field

.field private final currentIterationStartDate:Ljava/util/Date;
    .annotation runtime Lz8/c;
        value = "current_iteration_start_date"
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final endDate:Ljava/util/Date;
    .annotation runtime Lz8/c;
        value = "end_date"
    .end annotation
.end field

.field private final featureFlagKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz8/c;
        value = "feature_flag_keys"
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final internalTargetingFlagKey:Ljava/lang/String;
    .annotation runtime Lz8/c;
        value = "internal_targeting_flag_key"
    .end annotation
.end field

.field private final linkedFlagKey:Ljava/lang/String;
    .annotation runtime Lz8/c;
        value = "linked_flag_key"
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private final startDate:Ljava/util/Date;
    .annotation runtime Lz8/c;
        value = "start_date"
    .end annotation
.end field

.field private final targetingFlagKey:Ljava/lang/String;
    .annotation runtime Lz8/c;
        value = "targeting_flag_key"
    .end annotation
.end field

.field private final type:Lcom/posthog/surveys/SurveyType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyType;",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyConditions;",
            "Lcom/posthog/surveys/SurveyAppearance;",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    const-string v5, "id"

    .line 7
    .line 8
    invoke-static {p1, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v5, "name"

    .line 12
    .line 13
    invoke-static {p2, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "type"

    .line 17
    .line 18
    invoke-static {p3, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v5, "questions"

    .line 22
    .line 23
    invoke-static {p4, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v3, v0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    .line 34
    .line 35
    iput-object v4, v0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    .line 36
    .line 37
    move-object v1, p5

    .line 38
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    .line 39
    .line 40
    move-object v1, p6

    .line 41
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    .line 42
    .line 43
    move-object v1, p7

    .line 44
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    .line 45
    .line 46
    move-object v1, p8

    .line 47
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    .line 48
    .line 49
    move-object v1, p9

    .line 50
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    .line 51
    .line 52
    move-object/from16 v1, p10

    .line 53
    .line 54
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    .line 55
    .line 56
    move-object/from16 v1, p11

    .line 57
    .line 58
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    .line 59
    .line 60
    move-object/from16 v1, p12

    .line 61
    .line 62
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    .line 63
    .line 64
    move-object/from16 v1, p13

    .line 65
    .line 66
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    .line 67
    .line 68
    move-object/from16 v1, p14

    .line 69
    .line 70
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    .line 71
    .line 72
    move-object/from16 v1, p15

    .line 73
    .line 74
    iput-object v1, v0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    .line 75
    .line 76
    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/Survey;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILjava/lang/Object;)Lcom/posthog/surveys/Survey;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p15

    :goto_e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/posthog/surveys/Survey;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lcom/posthog/surveys/Survey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/posthog/surveys/SurveyConditions;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    return-object v0
.end method

.method public final component11()Lcom/posthog/surveys/SurveyAppearance;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component13()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component14()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component15()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/posthog/surveys/SurveyType;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lcom/posthog/surveys/Survey;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyType;",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyConditions;",
            "Lcom/posthog/surveys/SurveyAppearance;",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Lcom/posthog/surveys/Survey;"
        }
    .end annotation

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "questions"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/posthog/surveys/Survey;

    move-object v1, v0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/posthog/surveys/Survey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/Survey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/Survey;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    iget-object p1, p1, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAppearance()Lcom/posthog/surveys/SurveyAppearance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConditions()Lcom/posthog/surveys/SurveyConditions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentIteration()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentIterationStartDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEndDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFeatureFlagKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInternalTargetingFlagKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLinkedFlagKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTargetingFlagKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lcom/posthog/surveys/SurveyType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/posthog/surveys/SurveyConditions;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/posthog/surveys/SurveyAppearance;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Survey(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", questions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlagKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", linkedFlagKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetingFlagKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", internalTargetingFlagKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appearance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentIteration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentIterationStartDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
