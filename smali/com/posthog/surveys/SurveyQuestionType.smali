.class public final enum Lcom/posthog/surveys/SurveyQuestionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/SurveyQuestionType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/surveys/SurveyQuestionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/posthog/surveys/SurveyQuestionType;

.field public static final Companion:Lcom/posthog/surveys/SurveyQuestionType$Companion;

.field public static final enum LINK:Lcom/posthog/surveys/SurveyQuestionType;

.field public static final enum MULTIPLE_CHOICE:Lcom/posthog/surveys/SurveyQuestionType;

.field public static final enum OPEN:Lcom/posthog/surveys/SurveyQuestionType;

.field public static final enum RATING:Lcom/posthog/surveys/SurveyQuestionType;

.field public static final enum SINGLE_CHOICE:Lcom/posthog/surveys/SurveyQuestionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/posthog/surveys/SurveyQuestionType;
    .locals 5

    sget-object v0, Lcom/posthog/surveys/SurveyQuestionType;->OPEN:Lcom/posthog/surveys/SurveyQuestionType;

    sget-object v1, Lcom/posthog/surveys/SurveyQuestionType;->LINK:Lcom/posthog/surveys/SurveyQuestionType;

    sget-object v2, Lcom/posthog/surveys/SurveyQuestionType;->RATING:Lcom/posthog/surveys/SurveyQuestionType;

    sget-object v3, Lcom/posthog/surveys/SurveyQuestionType;->MULTIPLE_CHOICE:Lcom/posthog/surveys/SurveyQuestionType;

    sget-object v4, Lcom/posthog/surveys/SurveyQuestionType;->SINGLE_CHOICE:Lcom/posthog/surveys/SurveyQuestionType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/posthog/surveys/SurveyQuestionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "open"

    .line 5
    .line 6
    const-string v3, "OPEN"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyQuestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionType;->OPEN:Lcom/posthog/surveys/SurveyQuestionType;

    .line 12
    .line 13
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "link"

    .line 17
    .line 18
    const-string v3, "LINK"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyQuestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionType;->LINK:Lcom/posthog/surveys/SurveyQuestionType;

    .line 24
    .line 25
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "rating"

    .line 29
    .line 30
    const-string v3, "RATING"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyQuestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionType;->RATING:Lcom/posthog/surveys/SurveyQuestionType;

    .line 36
    .line 37
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "multiple_choice"

    .line 41
    .line 42
    const-string v3, "MULTIPLE_CHOICE"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyQuestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionType;->MULTIPLE_CHOICE:Lcom/posthog/surveys/SurveyQuestionType;

    .line 48
    .line 49
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "single_choice"

    .line 53
    .line 54
    const-string v3, "SINGLE_CHOICE"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyQuestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionType;->SINGLE_CHOICE:Lcom/posthog/surveys/SurveyQuestionType;

    .line 60
    .line 61
    invoke-static {}, Lcom/posthog/surveys/SurveyQuestionType;->$values()[Lcom/posthog/surveys/SurveyQuestionType;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionType;->$VALUES:[Lcom/posthog/surveys/SurveyQuestionType;

    .line 66
    .line 67
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionType$Companion;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, v1}, Lcom/posthog/surveys/SurveyQuestionType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/posthog/surveys/SurveyQuestionType;->Companion:Lcom/posthog/surveys/SurveyQuestionType$Companion;

    .line 74
    .line 75
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
    iput-object p3, p0, Lcom/posthog/surveys/SurveyQuestionType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/surveys/SurveyQuestionType;
    .locals 1

    const-class v0, Lcom/posthog/surveys/SurveyQuestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/surveys/SurveyQuestionType;

    return-object p0
.end method

.method public static values()[Lcom/posthog/surveys/SurveyQuestionType;
    .locals 1

    sget-object v0, Lcom/posthog/surveys/SurveyQuestionType;->$VALUES:[Lcom/posthog/surveys/SurveyQuestionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/surveys/SurveyQuestionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestionType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
