.class public final Lcom/posthog/surveys/PostHogSurveyResponse$Link;
.super Lcom/posthog/surveys/PostHogSurveyResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/PostHogSurveyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation


# instance fields
.field private final clicked:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/posthog/surveys/PostHogSurveyResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->clicked:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/PostHogSurveyResponse$Link;ZILjava/lang/Object;)Lcom/posthog/surveys/PostHogSurveyResponse$Link;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->clicked:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->copy(Z)Lcom/posthog/surveys/PostHogSurveyResponse$Link;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->clicked:Z

    return v0
.end method

.method public final copy(Z)Lcom/posthog/surveys/PostHogSurveyResponse$Link;
    .locals 1

    new-instance v0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;

    invoke-direct {v0, p1}, Lcom/posthog/surveys/PostHogSurveyResponse$Link;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/PostHogSurveyResponse$Link;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/PostHogSurveyResponse$Link;

    iget-boolean v1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->clicked:Z

    iget-boolean p1, p1, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->clicked:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getClicked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->clicked:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->clicked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link(clicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->clicked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
