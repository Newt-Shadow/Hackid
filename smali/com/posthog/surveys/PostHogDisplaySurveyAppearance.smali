.class public final Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;


# instance fields
.field private final backgroundColor:Ljava/lang/String;

.field private final borderColor:Ljava/lang/String;

.field private final descriptionTextColor:Ljava/lang/String;

.field private final displayThankYouMessage:Z

.field private final fontFamily:Ljava/lang/String;

.field private final placeholder:Ljava/lang/String;

.field private final ratingButtonActiveColor:Ljava/lang/String;

.field private final ratingButtonColor:Ljava/lang/String;

.field private final submitButtonColor:Ljava/lang/String;

.field private final submitButtonText:Ljava/lang/String;

.field private final submitButtonTextColor:Ljava/lang/String;

.field private final thankYouMessageDescription:Ljava/lang/String;

.field private final thankYouMessageDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

.field private final thankYouMessageHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->Companion:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3fff

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->fontFamily:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->backgroundColor:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->borderColor:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonColor:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonText:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->placeholder:Ljava/lang/String;

    .line 13
    iput-boolean p11, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->displayThankYouMessage:Z

    .line 14
    iput-object p12, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    .line 16
    iput-object p14, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    move-object v14, v2

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    move-object/from16 v2, p14

    :goto_d
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v2

    .line 17
    invoke-direct/range {p1 .. p15}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ILjava/lang/Object;)Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->fontFamily:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->backgroundColor:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->borderColor:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonColor:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonText:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->placeholder:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->displayThankYouMessage:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p14

    :goto_d
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

    move/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;)Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->placeholder:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->displayThankYouMessage:Z

    return v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->borderColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;)Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
    .locals 16

    new-instance v15, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;)V

    return-object v15
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->fontFamily:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->fontFamily:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->backgroundColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->backgroundColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->borderColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->borderColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonText:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->placeholder:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->placeholder:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->displayThankYouMessage:Z

    iget-boolean v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->displayThankYouMessage:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    iget-object p1, p1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    if-eq v1, p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->backgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBorderColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->borderColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescriptionTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisplayThankYouMessage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->displayThankYouMessage:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFontFamily()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->fontFamily:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceholder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->placeholder:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRatingButtonActiveColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRatingButtonColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubmitButtonColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubmitButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubmitButtonTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getThankYouMessageDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getThankYouMessageDescriptionContentType()Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getThankYouMessageHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->fontFamily:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->backgroundColor:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->borderColor:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonColor:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonText:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->placeholder:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->displayThankYouMessage:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :cond_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_a

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_b

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    if-nez v2, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostHogDisplaySurveyAppearance(fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", borderColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->borderColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", submitButtonColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", submitButtonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", submitButtonTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", descriptionTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratingButtonColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratingButtonActiveColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placeholder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->placeholder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayThankYouMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->displayThankYouMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", thankYouMessageHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thankYouMessageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thankYouMessageDescriptionContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
