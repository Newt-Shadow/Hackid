.class public Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;


# instance fields
.field private final buttonText:Ljava/lang/String;

.field private final isOptional:Z

.field private final question:Ljava/lang/String;

.field private final questionDescription:Ljava/lang/String;

.field private final questionDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->Companion:Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "question"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "questionDescriptionContentType"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->question:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->questionDescription:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->questionDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    .line 19
    .line 20
    iput-boolean p4, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->isOptional:Z

    .line 21
    .line 22
    iput-object p5, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->buttonText:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->buttonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuestion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->question:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuestionDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->questionDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuestionDescriptionContentType()Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->questionDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isOptional()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->isOptional:Z

    .line 2
    .line 3
    return v0
.end method
