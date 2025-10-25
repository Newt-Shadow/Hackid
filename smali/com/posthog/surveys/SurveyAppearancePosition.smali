.class public final enum Lcom/posthog/surveys/SurveyAppearancePosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/SurveyAppearancePosition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/surveys/SurveyAppearancePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/posthog/surveys/SurveyAppearancePosition;

.field public static final enum CENTER:Lcom/posthog/surveys/SurveyAppearancePosition;

.field public static final Companion:Lcom/posthog/surveys/SurveyAppearancePosition$Companion;

.field public static final enum LEFT:Lcom/posthog/surveys/SurveyAppearancePosition;

.field public static final enum RIGHT:Lcom/posthog/surveys/SurveyAppearancePosition;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/posthog/surveys/SurveyAppearancePosition;
    .locals 3

    sget-object v0, Lcom/posthog/surveys/SurveyAppearancePosition;->LEFT:Lcom/posthog/surveys/SurveyAppearancePosition;

    sget-object v1, Lcom/posthog/surveys/SurveyAppearancePosition;->RIGHT:Lcom/posthog/surveys/SurveyAppearancePosition;

    sget-object v2, Lcom/posthog/surveys/SurveyAppearancePosition;->CENTER:Lcom/posthog/surveys/SurveyAppearancePosition;

    filled-new-array {v0, v1, v2}, [Lcom/posthog/surveys/SurveyAppearancePosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/posthog/surveys/SurveyAppearancePosition;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "left"

    .line 5
    .line 6
    const-string v3, "LEFT"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyAppearancePosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/posthog/surveys/SurveyAppearancePosition;->LEFT:Lcom/posthog/surveys/SurveyAppearancePosition;

    .line 12
    .line 13
    new-instance v0, Lcom/posthog/surveys/SurveyAppearancePosition;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "right"

    .line 17
    .line 18
    const-string v3, "RIGHT"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyAppearancePosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/posthog/surveys/SurveyAppearancePosition;->RIGHT:Lcom/posthog/surveys/SurveyAppearancePosition;

    .line 24
    .line 25
    new-instance v0, Lcom/posthog/surveys/SurveyAppearancePosition;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "center"

    .line 29
    .line 30
    const-string v3, "CENTER"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyAppearancePosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/posthog/surveys/SurveyAppearancePosition;->CENTER:Lcom/posthog/surveys/SurveyAppearancePosition;

    .line 36
    .line 37
    invoke-static {}, Lcom/posthog/surveys/SurveyAppearancePosition;->$values()[Lcom/posthog/surveys/SurveyAppearancePosition;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/posthog/surveys/SurveyAppearancePosition;->$VALUES:[Lcom/posthog/surveys/SurveyAppearancePosition;

    .line 42
    .line 43
    new-instance v0, Lcom/posthog/surveys/SurveyAppearancePosition$Companion;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lcom/posthog/surveys/SurveyAppearancePosition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/posthog/surveys/SurveyAppearancePosition;->Companion:Lcom/posthog/surveys/SurveyAppearancePosition$Companion;

    .line 50
    .line 51
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
    iput-object p3, p0, Lcom/posthog/surveys/SurveyAppearancePosition;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/surveys/SurveyAppearancePosition;
    .locals 1

    const-class v0, Lcom/posthog/surveys/SurveyAppearancePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/surveys/SurveyAppearancePosition;

    return-object p0
.end method

.method public static values()[Lcom/posthog/surveys/SurveyAppearancePosition;
    .locals 1

    sget-object v0, Lcom/posthog/surveys/SurveyAppearancePosition;->$VALUES:[Lcom/posthog/surveys/SurveyAppearancePosition;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/surveys/SurveyAppearancePosition;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyAppearancePosition;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
