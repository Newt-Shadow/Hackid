.class public final enum Lcom/posthog/surveys/SurveyTextContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/SurveyTextContentType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/surveys/SurveyTextContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/posthog/surveys/SurveyTextContentType;

.field public static final Companion:Lcom/posthog/surveys/SurveyTextContentType$Companion;

.field public static final enum HTML:Lcom/posthog/surveys/SurveyTextContentType;

.field public static final enum TEXT:Lcom/posthog/surveys/SurveyTextContentType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/posthog/surveys/SurveyTextContentType;
    .locals 2

    sget-object v0, Lcom/posthog/surveys/SurveyTextContentType;->HTML:Lcom/posthog/surveys/SurveyTextContentType;

    sget-object v1, Lcom/posthog/surveys/SurveyTextContentType;->TEXT:Lcom/posthog/surveys/SurveyTextContentType;

    filled-new-array {v0, v1}, [Lcom/posthog/surveys/SurveyTextContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/posthog/surveys/SurveyTextContentType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "html"

    .line 5
    .line 6
    const-string v3, "HTML"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyTextContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/posthog/surveys/SurveyTextContentType;->HTML:Lcom/posthog/surveys/SurveyTextContentType;

    .line 12
    .line 13
    new-instance v0, Lcom/posthog/surveys/SurveyTextContentType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "text"

    .line 17
    .line 18
    const-string v3, "TEXT"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/posthog/surveys/SurveyTextContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/posthog/surveys/SurveyTextContentType;->TEXT:Lcom/posthog/surveys/SurveyTextContentType;

    .line 24
    .line 25
    invoke-static {}, Lcom/posthog/surveys/SurveyTextContentType;->$values()[Lcom/posthog/surveys/SurveyTextContentType;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/posthog/surveys/SurveyTextContentType;->$VALUES:[Lcom/posthog/surveys/SurveyTextContentType;

    .line 30
    .line 31
    new-instance v0, Lcom/posthog/surveys/SurveyTextContentType$Companion;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, v1}, Lcom/posthog/surveys/SurveyTextContentType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/posthog/surveys/SurveyTextContentType;->Companion:Lcom/posthog/surveys/SurveyTextContentType$Companion;

    .line 38
    .line 39
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
    iput-object p3, p0, Lcom/posthog/surveys/SurveyTextContentType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/surveys/SurveyTextContentType;
    .locals 1

    const-class v0, Lcom/posthog/surveys/SurveyTextContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/surveys/SurveyTextContentType;

    return-object p0
.end method

.method public static values()[Lcom/posthog/surveys/SurveyTextContentType;
    .locals 1

    sget-object v0, Lcom/posthog/surveys/SurveyTextContentType;->$VALUES:[Lcom/posthog/surveys/SurveyTextContentType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/surveys/SurveyTextContentType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyTextContentType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
