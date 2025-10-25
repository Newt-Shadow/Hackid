.class public final enum Lcom/posthog/surveys/SurveyQuestionBranchingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/SurveyQuestionBranchingType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/surveys/SurveyQuestionBranchingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/posthog/surveys/SurveyQuestionBranchingType;

.field public static final Companion:Lcom/posthog/surveys/SurveyQuestionBranchingType$Companion;

.field public static final enum END:Lcom/posthog/surveys/SurveyQuestionBranchingType;

.field public static final enum NEXT_QUESTION:Lcom/posthog/surveys/SurveyQuestionBranchingType;

.field public static final enum RESPONSE_BASED:Lcom/posthog/surveys/SurveyQuestionBranchingType;

.field public static final enum SPECIFIC_QUESTION:Lcom/posthog/surveys/SurveyQuestionBranchingType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/posthog/surveys/SurveyQuestionBranchingType;
    .locals 4

    sget-object v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->NEXT_QUESTION:Lcom/posthog/surveys/SurveyQuestionBranchingType;

    sget-object v1, Lcom/posthog/surveys/SurveyQuestionBranchingType;->END:Lcom/posthog/surveys/SurveyQuestionBranchingType;

    sget-object v2, Lcom/posthog/surveys/SurveyQuestionBranchingType;->RESPONSE_BASED:Lcom/posthog/surveys/SurveyQuestionBranchingType;

    sget-object v3, Lcom/posthog/surveys/SurveyQuestionBranchingType;->SPECIFIC_QUESTION:Lcom/posthog/surveys/SurveyQuestionBranchingType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/posthog/surveys/SurveyQuestionBranchingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "next_question"

    .line 5
    .line 6
    const-string v3, "NEXT_QUESTION"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyQuestionBranchingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->NEXT_QUESTION:Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 12
    .line 13
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "end"

    .line 17
    .line 18
    const-string v3, "END"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyQuestionBranchingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->END:Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 24
    .line 25
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "response_based"

    .line 29
    .line 30
    const-string v3, "RESPONSE_BASED"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyQuestionBranchingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->RESPONSE_BASED:Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 36
    .line 37
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "specific_question"

    .line 41
    .line 42
    const-string v3, "SPECIFIC_QUESTION"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyQuestionBranchingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->SPECIFIC_QUESTION:Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 48
    .line 49
    invoke-static {}, Lcom/posthog/surveys/SurveyQuestionBranchingType;->$values()[Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->$VALUES:[Lcom/posthog/surveys/SurveyQuestionBranchingType;

    .line 54
    .line 55
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionBranchingType$Companion;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {v0, v1}, Lcom/posthog/surveys/SurveyQuestionBranchingType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->Companion:Lcom/posthog/surveys/SurveyQuestionBranchingType$Companion;

    .line 62
    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/surveys/SurveyQuestionBranchingType;
    .locals 1

    const-class v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/surveys/SurveyQuestionBranchingType;

    return-object p0
.end method

.method public static values()[Lcom/posthog/surveys/SurveyQuestionBranchingType;
    .locals 1

    sget-object v0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->$VALUES:[Lcom/posthog/surveys/SurveyQuestionBranchingType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/surveys/SurveyQuestionBranchingType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestionBranchingType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
