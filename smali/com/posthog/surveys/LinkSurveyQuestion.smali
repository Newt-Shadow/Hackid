.class public final Lcom/posthog/surveys/LinkSurveyQuestion;
.super Lcom/posthog/surveys/SurveyQuestion;
.source "SourceFile"


# instance fields
.field private final link:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/surveys/SurveyQuestion;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/posthog/surveys/LinkSurveyQuestion;->link:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/LinkSurveyQuestion;Ljava/lang/String;ILjava/lang/Object;)Lcom/posthog/surveys/LinkSurveyQuestion;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/posthog/surveys/LinkSurveyQuestion;->link:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/posthog/surveys/LinkSurveyQuestion;->copy(Ljava/lang/String;)Lcom/posthog/surveys/LinkSurveyQuestion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/LinkSurveyQuestion;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/posthog/surveys/LinkSurveyQuestion;
    .locals 1

    new-instance v0, Lcom/posthog/surveys/LinkSurveyQuestion;

    invoke-direct {v0, p1}, Lcom/posthog/surveys/LinkSurveyQuestion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/LinkSurveyQuestion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/LinkSurveyQuestion;

    iget-object v1, p0, Lcom/posthog/surveys/LinkSurveyQuestion;->link:Ljava/lang/String;

    iget-object p1, p1, Lcom/posthog/surveys/LinkSurveyQuestion;->link:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/LinkSurveyQuestion;->link:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/LinkSurveyQuestion;->link:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkSurveyQuestion(link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/LinkSurveyQuestion;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
