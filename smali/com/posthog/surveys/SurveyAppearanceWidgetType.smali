.class public final enum Lcom/posthog/surveys/SurveyAppearanceWidgetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/SurveyAppearanceWidgetType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/surveys/SurveyAppearanceWidgetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/posthog/surveys/SurveyAppearanceWidgetType;

.field public static final enum BUTTON:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

.field public static final Companion:Lcom/posthog/surveys/SurveyAppearanceWidgetType$Companion;

.field public static final enum SELECTOR:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

.field public static final enum TAB:Lcom/posthog/surveys/SurveyAppearanceWidgetType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/posthog/surveys/SurveyAppearanceWidgetType;
    .locals 3

    sget-object v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->BUTTON:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    sget-object v1, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->TAB:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    sget-object v2, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->SELECTOR:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    filled-new-array {v0, v1, v2}, [Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "button"

    .line 5
    .line 6
    const-string v3, "BUTTON"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyAppearanceWidgetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->BUTTON:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    .line 12
    .line 13
    new-instance v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "tab"

    .line 17
    .line 18
    const-string v3, "TAB"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyAppearanceWidgetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->TAB:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    .line 24
    .line 25
    new-instance v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "selector"

    .line 29
    .line 30
    const-string v3, "SELECTOR"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyAppearanceWidgetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->SELECTOR:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    .line 36
    .line 37
    invoke-static {}, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->$values()[Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->$VALUES:[Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    .line 42
    .line 43
    new-instance v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType$Companion;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lcom/posthog/surveys/SurveyAppearanceWidgetType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->Companion:Lcom/posthog/surveys/SurveyAppearanceWidgetType$Companion;

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
    iput-object p3, p0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/surveys/SurveyAppearanceWidgetType;
    .locals 1

    const-class v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    return-object p0
.end method

.method public static values()[Lcom/posthog/surveys/SurveyAppearanceWidgetType;
    .locals 1

    sget-object v0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->$VALUES:[Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
