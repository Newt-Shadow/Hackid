.class public final Lcom/posthog/surveys/PostHogSurveysConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private surveysDelegate:Lcom/posthog/surveys/PostHogSurveysDelegate;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v1}, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;-><init>(Leb/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/posthog/surveys/PostHogSurveysConfig;->surveysDelegate:Lcom/posthog/surveys/PostHogSurveysDelegate;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getSurveysDelegate()Lcom/posthog/surveys/PostHogSurveysDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogSurveysConfig;->surveysDelegate:Lcom/posthog/surveys/PostHogSurveysDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setSurveysDelegate(Lcom/posthog/surveys/PostHogSurveysDelegate;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/posthog/surveys/PostHogSurveysConfig;->surveysDelegate:Lcom/posthog/surveys/PostHogSurveysDelegate;

    .line 7
    .line 8
    return-void
.end method
