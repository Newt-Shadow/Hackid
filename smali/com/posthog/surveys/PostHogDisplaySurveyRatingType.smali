.class public final enum Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

.field public static final enum EMOJI:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

.field public static final enum NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
    .locals 2

    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->EMOJI:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    filled-new-array {v0, v1}, [Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 2
    .line 3
    const-string v1, "NUMBER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 10
    .line 11
    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 12
    .line 13
    const-string v1, "EMOJI"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->EMOJI:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 20
    .line 21
    invoke-static {}, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->$values()[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->$VALUES:[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
    .locals 1

    const-class v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    return-object p0
.end method

.method public static values()[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
    .locals 1

    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->$VALUES:[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->value:I

    .line 2
    .line 3
    return v0
.end method
